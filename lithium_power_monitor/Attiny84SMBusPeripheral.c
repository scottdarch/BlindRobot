/**
 *             ``
 *      <X X>  /
 * ``---  |  -
 *     [     ]   A BlindRobot Project (by 32bits.io)
 * _____U___U____________________________________________________________________
 *
 * Copyright (c) 2017 Scott A Dixon.  All right reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
#include <avr/interrupt.h>
#include <avr/io.h>
#include <avr/sleep.h>
#include <util/atomic.h>

#include "SMBusPeripheral.h"
#include "Usi_twi_peripheralRequired.h"
#include "lithium.h"

#define SET_USI_TO_SEND_ACK()                                                  \
    {                                                                          \
        USIDR = 0; /* Prepare ACK                         */                   \
        DDR_USI |= (1 << PORT_USI_SDA); /* Set SDA as output */                \
        USISR = (0 << USI_START_COND_INT) | (1 << USIOIF) | (1 << USIPF) |     \
                (1 << USIDC) |     /* Clear all flags, except Start Cond  */   \
                (0x0E << USICNT0); /* set USI counter to shift 1 bit. */       \
    }

#define SET_USI_TO_READ_ACK()                                                  \
    {                                                                          \
        DDR_USI &= ~(1 << PORT_USI_SDA); /* Set SDA as intput */               \
        USIDR = 0;                       /* Prepare ACK        */              \
        USISR = (0 << USI_START_COND_INT) | (1 << USIOIF) | (1 << USIPF) |     \
                (1 << USIDC) |     /* Clear all flags, except Start Cond  */   \
                (0x0E << USICNT0); /* set USI counter to shift 1 bit. */       \
    }

#define SET_USI_TO_TWI_START_CONDITION_MODE()                                  \
    {                                                                          \
        USICR = (1 << USISIE) |                                                \
                (0 << USIOIE) | /* Enable Start Condition Interrupt. Disable   \
                                   Overflow Interrupt.*/                       \
                (1 << USIWM1) |                                                \
                (0 << USIWM0) | /* Set USI in Two-wire mode. No USI Counter    \
                                   overflow hold.      */                      \
                (1 << USICS1) | (0 << USICS0) |                                \
                (0 << USICLK) | /* Shift Register Clock Source = External,     \
                                   positive edge        */                     \
                (0 << USITC);                                                  \
        USISR = (0 << USI_START_COND_INT) | (1 << USIOIF) | (1 << USIPF) |     \
                (1 << USIDC) | /* Clear all flags, except Start Cond */        \
                (0x0 << USICNT0);                                              \
    }

#define SET_USI_TO_SEND_DATA()                                                 \
    {                                                                          \
        DDR_USI |= (1 << PORT_USI_SDA); /* Set SDA as output */                \
        USISR = (0 << USI_START_COND_INT) | (1 << USIOIF) | (1 << USIPF) |     \
                (1 << USIDC) |    /* Clear all flags, except Start Cond */     \
                (0x0 << USICNT0); /* set USI to shift out 8 bits        */     \
    }

#define SET_USI_TO_READ_DATA()                                                 \
    {                                                                          \
        DDR_USI &= ~(1 << PORT_USI_SDA); /* Set SDA as input */                \
        USISR = (0 << USI_START_COND_INT) | (1 << USIOIF) | (1 << USIPF) |     \
                (1 << USIDC) |    /* Clear all flags, except Start Cond */     \
                (0x0 << USICNT0); /* set USI to shift out 8 bits        */     \
    }

// +---------------------------------------------------------------------------+
// | ISR
// +---------------------------------------------------------------------------+

static SMBusPeripheral* volatile _active_peripheral = 0;

ISR(USI_START_vect)
{
    unsigned char tmpUSISR; // Temporary variable to store volatile
    tmpUSISR = USISR;       // Not necessary, but prevents warnings
                      // Set default starting conditions for new TWI package
    SMBusPeripheral* const periph = _active_peripheral;
    if (periph) {
        usi_twi_peripheralIfacePeripheral_raise_on_start(&periph->_state);
    }
    LI_USI0_DDR &= ~(1 << LI_SDA0); // Set SDA as input
    while ((LI_USI0_PIN & (1 << LI_SCL0)) & !(tmpUSISR & (1 << USIPF)))
        ; // Wait for SCL to go low to ensure the "Start Condition" has
          // completed.
          // If a Stop condition arises then leave the interrupt to prevent
          // waiting forever.
    USICR =
      (1 << USISIE) | (1 << USIOIE) | // Enable Overflow and Start Condition
                                      // Interrupt. (Keep StartCondInt to detect
                                      // RESTART)
      (1 << USIWM1) | (1 << USIWM0) | // Set USI in Two-wire mode.
      (1 << USICS1) | (0 << USICS0) |
      (0 << USICLK) | // Shift Register Clock Source = External, positive edge
      (0 << USITC);
    USISR = (1 << USISIF) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) |    // Clear flags
            (0x0 << USICNT0); // Set USI to sample 8 bits i.e. count 16 external
                              // pin toggles.
}

ISR(USI_OVF_vect)
{
    SMBusPeripheral* const periph = _active_peripheral;
    if (periph) {
        usi_twi_peripheralIfacePeripheral_raise_on_read_address(
          &periph->_state, (uint8_t)(USIDR >> 1));
    }
    //        if (USIDR & 0x01)
    //            USI_TWI_Overflow_State = USI_SLAVE_SEND_DATA;
    //        else
    //            USI_TWI_Overflow_State = USI_SLAVE_REQUEST_DATA;
}

// +---------------------------------------------------------------------------+
// | Usi_twi_peripheralRequired
// +---------------------------------------------------------------------------+
void
usi_twi_peripheralIfaceDriver_reset(const Usi_twi_peripheral* handle)
{
    USICR = (1 << USISIE) |
            (0 << USIOIE) | /* Enable Start Condition Interrupt. Disable
                               Overflow Interrupt.*/
            (1 << USIWM1) |
            (0 << USIWM0) | /* Set USI in Two-wire mode. No USI Counter
                               overflow hold.      */
            (1 << USICS1) | (0 << USICS0) |
            (0 << USICLK) | /* Shift Register Clock Source = External,
                               positive edge        */
            (0 << USITC);
    USISR = (0 << USISIF) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) | /* Clear all flags, except Start Cond */
            (0x0 << USICNT0);
}

void
usi_twi_peripheralIfaceDriver_sleep(const Usi_twi_peripheral* handle)
{
    LI_LED0_PORT ^= ~(1 << LI_LED0);
    NONATOMIC_BLOCK(NONATOMIC_RESTORESTATE)
    {
        sleep_enable();
        sleep_cpu();
        sleep_disable();
    }
    LI_LED0_PORT |= (1 << LI_LED0);
}

// +---------------------------------------------------------------------------+
// | SMBusPeripheral
// +---------------------------------------------------------------------------+
static void
_attiny84_smb_peripheral_start(SMBusPeripheral* self, uint8_t peripheral_addr)
{
    usi_twi_peripheral_enter(&self->_state);
    usi_twi_peripheralIfaceDriver_raise_on_peripheral_address_set(
      &self->_state, peripheral_addr);
}

static void
_attiny84_smb_peripheral_run(SMBusPeripheral* self)
{
    usi_twi_peripheral_runCycle(&self->_state);
}

SMBusPeripheral*
init_smb_peripheral(SMBusPeripheral* self)
{
    if (self && !_active_peripheral) {
        // From Atmel App Note AVR312:
        LI_USI0_PORT |=
          ((1 << LI_SDA0) | (1 << LI_SCL0)); // Set SCL and SDA high
        // LI_USI0_DDR |= (1 << LI_SCL0);       // Set SCL as output
        LI_USI0_DDR &= ~(1 << LI_SDA0); // Set SDA as input

        USICR =
          (1 << USISIE) | (0 << USIOIE) | // Enable Start Condition Interrupt.
                                          // Disable Overflow Interrupt.
          (1 << USIWM1) | (0 << USIWM0) | // Set USI in Two-wire mode. No USI
                                          // Counter overflow prior to first
                                          // Start Condition (potential failure)
          (1 << USICS1) | (0 << USICS0) |
          (0
           << USICLK) | // Shift Register Clock Source = External, positive edge
          (0 << USITC);
        USISR = 0xF0; // Clear all flags and reset overflow counter
        self->start = _attiny84_smb_peripheral_start;
        self->run = _attiny84_smb_peripheral_run;
        usi_twi_peripheral_init(&self->_state);
        _active_peripheral = self;
    }
    return self;
}
