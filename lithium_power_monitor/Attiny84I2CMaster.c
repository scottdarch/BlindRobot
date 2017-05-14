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

#include "Usi_twi_masterRequired.h"

#include "I2CMaster.h"
#include "lithium.h"

// +---------------------------------------------------------------------------+
// | ISR
// +---------------------------------------------------------------------------+

static I2CMaster* volatile _active_peripheral = 0;

// +---------------------------------------------------------------------------+
// | Usi_twi_masterRequired
// +---------------------------------------------------------------------------+

// +---------------------------------------------------------------------------+
// | I2CMaster
// +---------------------------------------------------------------------------+
static void
_attiny84_smb_master_start(I2CMaster* self)
{
    usi_twi_master_enter(&self->_state);
    usi_twi_master_runCycle(&self->_state);
}

static bool
_attiny84_smb_master_run(I2CMaster* self)
{
    usi_twi_master_runCycle(&self->_state);
    return false;
}

I2CMaster*
init_i2c_master(I2CMaster* self,
                uint8_t peripheral_addr,
                volatile uint8_t* memory,
                uint8_t memory_length,
                const uint8_t* memory_can_write)
{
    // Hack for ISRs. A complete implementation would use an ISR dispatch
    // mechanism.
    if (_active_peripheral) {
        return 0;
    }
    if (self) {
        self->start = _attiny84_smb_master_start;
        self->run = _attiny84_smb_master_run;
        self->_memory = memory;
        self->_memory_length = memory_length;
        self->_memory_can_write = memory_can_write;
        usi_twi_master_init(&self->_state);
        self->_peripheral_addr = peripheral_addr;
        _active_peripheral = self;
    }
    return self;
}
