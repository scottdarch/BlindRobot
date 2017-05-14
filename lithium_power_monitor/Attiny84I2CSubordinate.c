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

#include "Usi_twi_subordinateRequired.h"

#include "I2CPeripheral.h"
#include "lithium.h"

// +---------------------------------------------------------------------------+
// | ISR
// +---------------------------------------------------------------------------+

static I2CSubordinate* volatile _active_peripheral = 0;

ISR(USI_START_vect)
{
    unsigned char tmpUSISR; // Temporary variable to store volatile
    tmpUSISR = USISR;       // Not necessary, but prevents warnings
                      // Set default starting conditions for new TWI package
    I2CSubordinate* const periph = _active_peripheral;
    if (periph) {
        LI_USI0_DDR &= ~(1 << LI_SDA0); // Set SDA as input
        while ((LI_USI0_PIN & (1 << LI_SCL0)) & !(tmpUSISR & (1 << USIPF)))
            ; // Wait for SCL to go low to ensure the "Start Condition" has
              // completed.
              // If a Stop condition arises then leave the interrupt to prevent
              // waiting forever.
        USICR =
          (1 << USISIE) |
          (1 << USIOIE) | // Enable Overflow and Start Condition
                          // Interrupt. (Keep StartCondInt to detect
                          // RESTART)
          (1 << USIWM1) | (1 << USIWM0) | // Set USI in Two-wire mode.
          (1 << USICS1) | (0 << USICS0) |
          (0
           << USICLK) | // Shift Register Clock Source = External, positive edge
          (0 << USITC);
        USISR =
          (1 << USISIF) | (1 << USIOIF) | (1 << USIPF) |
          (1 << USIDC) |    // Clear flags
          (0x0 << USICNT0); // Set USI to sample 8 bits i.e. count 16 external
                            // pin toggles.
        usi_twi_subordinateIfacePeripheral_raise_on_start(&periph->_state);
        usi_twi_subordinate_runCycle(&periph->_state);
    }
}

ISR(USI_OVF_vect)
{
    I2CSubordinate* const periph = _active_peripheral;
    if (periph) {
        usi_twi_subordinateIfacePeripheral_raise_on_usi_overflow(
          &periph->_state, (uint8_t)USIDR);
        usi_twi_subordinate_runCycle(&periph->_state);
    }
}

// +---------------------------------------------------------------------------+
// | Usi_twi_subordinateRequired
// +---------------------------------------------------------------------------+
void
usi_twi_subordinateIfaceDriver_reset(const Usi_twi_subordinate* handle)
{
    // From Atmel App Note AVR312:
    LI_USI0_PORT |= (1 << LI_SCL0) | (1 << LI_SDA0);
    LI_USI0_DDR |= (1 << LI_SCL0);  // Set SCL as output
    LI_USI0_DDR &= ~(1 << LI_SDA0); // Set SDA as input
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
usi_twi_subordinateIfaceDriver_on_byte_read(const Usi_twi_subordinate* handle,
                                            const sc_integer register_addr,
                                            const sc_integer data)
{
    I2CSubordinate* self = (I2CSubordinate*)handle;
    const uint8_t canonical_address = register_addr % self->_memory_length;
    if (self->_memory_can_write[canonical_address / 8] &
        (1 << (canonical_address % 8))) {
        self->_memory[canonical_address] = data;
    } // else bit is read-only
}

void
usi_twi_subordinateIfaceDriver_send_next_byte(const Usi_twi_subordinate* handle,
                                              const sc_integer register_addr)
{
    I2CSubordinate* self = (I2CSubordinate*)handle;
    USIDR = self->_memory[register_addr % self->_memory_length];

    LI_USI0_DDR |= (1 << LI_SDA0); /* Set SDA as output */
    USISR = (0 << USISIE) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) |    /* Clear all flags, except Start Cond */
            (0x0 << USICNT0); /* set USI to shift out 8 bits        */
}

void
usi_twi_subordinateIfaceDriver_request_next_byte(
  const Usi_twi_subordinate* handle)
{
    LI_USI0_DDR &= ~(1 << LI_SDA0); /* Set SDA as input */
    USISR = (0 << USISIE) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) |    /* Clear all flags, except Start Cond */
            (0x0 << USICNT0); /* set USI to shift out 8 bits        */
}

void
usi_twi_subordinateIfaceDriver_send_ack(const Usi_twi_subordinate* handle)
{
    USIDR = 0;                     /* Prepare ACK */
    LI_USI0_DDR |= (1 << LI_SDA0); /* Set SDA as output */
    USISR = (0 << USISIE) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) |     /* Clear all flags, except Start Cond  */
            (0x0E << USICNT0); /* set USI counter to shift 1 bit. */
}

void
usi_twi_subordinateIfaceDriver_read_ack(const Usi_twi_subordinate* handle)
{
    LI_USI0_DDR &= ~(1 << LI_SDA0); /* Set SDA as input */
    USIDR = 0;                      /* Prepare ACK        */
    USISR = (0 << USISIE) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) |     /* Clear all flags, except Start Cond  */
            (0x0E << USICNT0); /* set USI counter to shift 1 bit. */
}

// +---------------------------------------------------------------------------+
// | I2CPeripheral
// +---------------------------------------------------------------------------+
static void
_attiny84_smb_drone_start(I2CSubordinate* self)
{
    USISR = 0xF0; // Clear all flags and reset overflow counter
    usi_twi_subordinate_enter(&self->_state);
    usi_twi_subordinateIfaceDriver_raise_on_address_set(&self->_state,
                                                        self->_peripheral_addr);
    usi_twi_subordinate_runCycle(&self->_state);
}

static bool
_attiny84_smb_drone_run(I2CSubordinate* self)
{
    return usi_twi_subordinate_isStateActive(
      &self->_state, Usi_twi_subordinate_main_region_initialized_r0_idle);
    usi_twi_subordinate_runCycle(&self->_state);
}

I2CSubordinate*
init_i2c_subordinate(I2CSubordinate* self,
                     uint8_t peripheral_addr,
                     volatile uint8_t* memory,
                     uint8_t memory_length,
                     const uint8_t* memory_can_write)
{
    if (self && !_active_peripheral) {
        self->start = _attiny84_smb_drone_start;
        self->run = _attiny84_smb_drone_run;
        self->_memory = memory;
        self->_memory_length = memory_length;
        self->_memory_can_write = memory_can_write;
        usi_twi_subordinate_init(&self->_state);
        self->_peripheral_addr = peripheral_addr;
        _active_peripheral = self;
    }
    return self;
}
