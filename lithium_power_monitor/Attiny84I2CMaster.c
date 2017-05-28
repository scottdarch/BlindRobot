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
/*****************************************************************************
 *
 * Atmel Corporation
 *
 * File              : USI_TWI_Master.h
 * Date              : $Date: 2016-7-15 $
 * Updated by        : $Author: Atmel $
 *
 * Support mail      : avr@atmel.com
 *
 * Supported devices : All device with USI module can be used.
 *                     The example is written for the ATmega169, ATtiny26 and
 *ATtiny2313
 *
 * AppNote           : AVR310 - Using the USI module as a TWI Master
 *
 * Description       : This is an implementation of an TWI master using
 *                     the USI module as basis. The implementation assumes the
 *AVR to be the only TWI master in the system and can therefore not be used in a
 *multi-master system. Usage             : Initialize the
 *USI module by calling the USI_TWI_Master_Initialise() function. Hence
 *messages/data are transceived on the bus using the
 *USI_TWI_Start_Transceiver_With_Data() function. If the
 *transceiver returns with a fail, then use USI_TWI_Get_Status_Info to evaluate
 *the couse of the failure.
 *
 ****************************************************************************/

#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/delay.h>

#include "I2CMaster.h"
#include "lithium.h"

// +---------------------------------------------------------------------------+
// | DEFINES
// +---------------------------------------------------------------------------+
#define SYS_CLK (F_CPU / 1000.0)

#ifdef TWI_FAST_MODE // TWI FAST mode timing limits. SCL = 100-400kHz
#define T2_TWI ((SYS_CLK * 1300) / 1000000) + 1 // >1,3us
#define T4_TWI ((SYS_CLK * 600) / 1000000) + 1  // >0,6us

#else // TWI STANDARD mode timing limits. SCL <= 100kHz
#define T2_TWI ((SYS_CLK * 4700) / 1000000) + 1 // >4,7us
#define T4_TWI ((SYS_CLK * 4000) / 1000000) + 1 // >4,0us
#endif

#define TWI_READ_BIT 0 // Bit position for R/W bit in "address byte".
#define TWI_ADR_BITS                                                           \
    1 // Bit position for LSB of the slave address bits in the init byte.
#define TWI_NACK_BIT 0 // Bit position for (N)ACK bit.

#define DELAY_T2TWI (_delay_us(T2_TWI / 4))
#define DELAY_T4TWI (_delay_us(T4_TWI / 4))

// +---------------------------------------------------------------------------+
void
_attiny84_i2c_master_reset()
{
    LI_USI0_PORT |=
      (1 << LI_SDA0); // Enable pullup on SDA, to set high as released
    LI_USI0_PORT |=
      (1 << LI_SCL0); // Enable pullup on SCL, to set high as released

    LI_USI0_DDR |= (1 << LI_SCL0); // Enable SCL as output.
    LI_USI0_DDR |= (1 << LI_SDA0); // Enable SDA as output.

    USIDR = 0xFF; // Preload dataregister with "released level" data.
    USICR = (0 << USISIE) | (0 << USIOIE) | // Disable Interrupts.
            (1 << USIWM1) | (0 << USIWM0) | // Set USI in Two-wire mode.
            (1 << USICS1) | (0 << USICS0) |
            (1 << USICLK) | // Software strobe as counter clock source
            (0 << USITC);
    USISR = (1 << USISIF) | (1 << USIOIF) | (1 << USIPF) |
            (1 << USIDC) |    // Clear flags,
            (0x0 << USICNT0); // and reset counter.
}

/*---------------------------------------------------------------
 Core function for shifting data in and out from the USI.
 Data to be sent has to be placed into the USIDR prior to calling
 this function. Data read, will be return'ed from the function.
---------------------------------------------------------------*/
static uint8_t
_attiny84_i2c_master_transfer(uint8_t temp)
{
    USISR = temp;                          // Set USISR according to temp.
                                           // Prepare clocking.
    temp = (0 << USISIE) | (0 << USIOIE) | // Interrupts disabled
           (1 << USIWM1) | (0 << USIWM0) | // Set USI in Two-wire mode.
           (1 << USICS1) | (0 << USICS0) |
           (1 << USICLK) | // Software clock strobe as source.
           (1 << USITC);   // Toggle Clock Port.
    do {
        DELAY_T2TWI;
        USICR = temp; // Generate positive SCL edge.
        while (!(LI_USI0_PIN & (1 << LI_SCL0)))
            ; // Wait for SCL to go high.
        DELAY_T4TWI;
        USICR = temp;                   // Generate negative SCL edge.
    } while (!(USISR & (1 << USIOIF))); // Check for transfer complete.

    DELAY_T2TWI;
    temp = USIDR;                  // Read out data.
    USIDR = 0xFF;                  // Release SDA.
    LI_USI0_DDR |= (1 << LI_SDA0); // Enable SDA as output.

    return temp; // Return the data from the USIDR
}

/*---------------------------------------------------------------
 Function for generating a TWI Stop Condition. Used to release
 the TWI bus.
---------------------------------------------------------------*/
static bool
_attiny84_i2c_master_stop(I2CMaster* self)
{
    LI_USI0_PORT &= ~(1 << LI_SDA0); // Pull SDA low.
    LI_USI0_PORT |= (1 << LI_SCL0);  // Release SCL.
    while (!(LI_USI0_PIN & (1 << LI_SCL0)))
        ; // Wait for SCL to go high.
    DELAY_T4TWI;
    LI_USI0_PORT |= (1 << LI_SDA0); // Release SDA.
    DELAY_T2TWI;

    if (!(USISR & (1 << USIPF))) {
        self->_errorState = I2C_MASTER_MISSING_STOP_CON;
        return false;
    }

    return true;
}

static bool
_attiny84_i2c_master_send_message(I2CMaster* self,
                                  uint8_t* msg,
                                  uint8_t msgSize)
{
    uint8_t tempUSISR_8bit =
      (1 << USISIF) | (1 << USIOIF) | (1 << USIPF) |
      (1 << USIDC) |    // Prepare register value to: Clear flags, and
      (0x0 << USICNT0); // set USI to shift 8 bits i.e. count 16 clock edges.
    uint8_t tempUSISR_1bit =
      (1 << USISIF) | (1 << USIOIF) | (1 << USIPF) |
      (1 << USIDC) |    // Prepare register value to: Clear flags, and
      (0xE << USICNT0); // set USI to shift 1 bit i.e. count 2 clock edges.

    self->_errorState = 0;
    self->_addressMode = 1;

    if (msg + msgSize >
        (uint8_t*)RAMEND) // Test if address is outside SRAM space
    {
        self->_errorState = I2C_MASTER_DATA_OUT_OF_BOUND;
        return false;
    }
    if (msgSize <= 1) // Test if the transmission buffer is empty
    {
        self->_errorState = I2C_MASTER_NO_DATA;
        return false;
    }
    //
    //    if (USISR & (1 << USISIF)) {
    //        self->_errorState = I2C_MASTER_UE_START_CON;
    //        return false;
    //    }
    //    if (USISR & (1 << USIPF)) {
    //        self->_errorState = I2C_MASTER_UE_STOP_CON;
    //        return false;
    //    }
    //    if (USISR & (1 << USIDC)) {
    //        self->_errorState = I2C_MASTER_UE_DATA_COL;
    //        return false;
    //    }

    if (!(*msg & (1 << TWI_READ_BIT))) // The LSB in the address byte determines
                                       // if is a masterRead or masterWrite
                                       // operation.
    {
        self->_masterWriteDataMode = 1;
    } else {
        self->_masterWriteDataMode = 0;
    }

    /* Release SCL to ensure that (repeated) Start can be performed */
    LI_USI0_PORT |= (1 << LI_SCL0); // Release SCL.
    while (!(LI_USI0_PIN & (1 << LI_SCL0)))
        ; // Verify that SCL becomes high.
#ifdef TWI_FAST_MODE
    DELAY_T4TWI; // Delay for T4TWI if TWI_FAST_MODE
#else
    DELAY_T2TWI; // Delay for T2TWI if TWI_STANDARD_MODE
#endif

    /* Generate Start Condition */
    LI_USI0_PORT &= ~(1 << LI_SDA0); // Force SDA LOW.
    DELAY_T4TWI;
    LI_USI0_PORT &= ~(1 << LI_SCL0); // Pull SCL LOW.
    LI_USI0_PORT |= (1 << LI_SDA0);  // Release SDA.

    if (!(USISR & (1 << USISIF))) {
        self->_errorState = I2C_MASTER_MISSING_START_CON;
        return false;
    }

    /*Write address and Read/Write data */
    do {
        /* If masterWrite cycle (or initial address transmission)*/
        if (self->_addressMode || self->_masterWriteDataMode) {
            /* Write a byte */
            LI_USI0_PORT &= ~(1 << LI_SCL0); // Pull SCL LOW.
            USIDR = *(msg++);                // Setup data.
            _attiny84_i2c_master_transfer(
              tempUSISR_8bit); // Send 8 bits on bus.

            /* Clock and verify (N)ACK from slave */
            LI_USI0_DDR &= ~(1 << LI_SDA0); // Enable SDA as input.
            if (_attiny84_i2c_master_transfer(tempUSISR_1bit) &
                (1 << TWI_NACK_BIT)) {
                if (self->_addressMode)
                    self->_errorState = I2C_MASTER_NO_ACK_ON_ADDRESS;
                else
                    self->_errorState = I2C_MASTER_NO_ACK_ON_DATA;
                return false;
            }
            self->_addressMode = 0; // Only perform address transmission once.
        }
        /* Else masterRead cycle*/
        else {
            /* Read a data byte */
            LI_USI0_DDR &= ~(1 << LI_SDA0); // Enable SDA as input.

            *(msg++) = _attiny84_i2c_master_transfer(tempUSISR_8bit);

            /* Prepare to generate ACK (or NACK in case of End Of Transmission)
             */
            if (msgSize == 1) // If transmission of last byte was performed.
            {
                USIDR = 0xFF; // Load NACK to confirm End Of Transmission.
            } else {
                USIDR = 0x00; // Load ACK. Set data register bit 7 (output for
                              // SDA) low.
            }
            _attiny84_i2c_master_transfer(tempUSISR_1bit); // Generate ACK/NACK.
        }
    } while (--msgSize); // Until all data sent/received.

    return _attiny84_i2c_master_stop(
      self); // Send a STOP condition on the TWI bus.
}

I2CMaster*
init_i2c_master(I2CMaster* self)
{
    if (self) {
        self->_errorState = 0;
        self->_addressMode = 0;
        self->_masterWriteDataMode = 0;
        self->send_message = _attiny84_i2c_master_send_message;
        _attiny84_i2c_master_reset();
    }
    return self;
}
