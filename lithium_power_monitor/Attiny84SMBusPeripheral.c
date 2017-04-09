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

#include "SMBusPeripheral.h"
#include "lithium.h"

static volatile __attribute__((used)) uint8_t _yep = 0;

ISR(USI_START_vect)
{
    _yep = 1;
    LI_LED0_PORT = (1 << LI_LED0);
}

ISR(USI_OVF_vect)
{
    _yep = 1;
}

// +---------------------------------------------------------------------------+
// | SMBusPeripheral
// +---------------------------------------------------------------------------+
static void
_attiny84_smb_peripheral_start(SMBusPeripheral* self)
{
    smbus_peripheral_enter(&self->_state);
}

// TODO: respond to address
//       accept write register
//       return value if read requested.
//
SMBusPeripheral*
init_smb_peripheral(SMBusPeripheral* self, uint8_t peripheral_addr)
{
    if (self) {
        // From Atmel App Note AVR312:
        LI_USI0_PORT |= (1 << LI_SDA0) | (1 << LI_SCL0); // Set SCL and SDA high
        LI_USI0_DDR |= (1 << LI_SCL0);                   // Set SCL as output
        LI_USI0_DDR &= ~(1 << LI_SDA0);                  // Set SDA as input

        USICR =
          (1 << USISIE) | (0 << USIOIE) | // Enable Start Condition Interrupt.
                                          // Disable Overflow Interrupt.
          (1 << USIWM1) | (0 << USIWM0) | // Set USI in Two-wire mode. No USI
                                          // Counter overflow prior to first
                                          // Start Condition (potentail failure)
          (1 << USICS1) | (0 << USICS0) |
          (0
           << USICLK) | // Shift Register Clock Source = External, positive edge
          (0 << USITC);
        USISR = 0xF0; // Clear all flags and reset overflow counter
        smbus_peripheral_init(&self->_state);
        self->start = _attiny84_smb_peripheral_start;
    }
    return self;
}
