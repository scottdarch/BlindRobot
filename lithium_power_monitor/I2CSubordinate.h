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
#pragma once

#include <stdbool.h>
#include <stdint.h>

#include "Usi_twi_subordinate.h"

/**
 * Interface to an I2C peripheral implementation running as a subordinate on
 * the bus.
 *
 * Note that this implementation uses "subordinate" as a more precise and less
 * offensive alternative to the I2C standard term "slave".
 */
typedef struct _I2CSubordinateType
{
    // +-----------------------------------------------------------------------+
    // | PRIVATE
    // +-----------------------------------------------------------------------+
    Usi_twi_subordinate _state;
    uint8_t _peripheral_addr;
    volatile uint8_t* _memory;
    uint8_t _memory_length;
    const uint8_t* _memory_can_write;

    // +-----------------------------------------------------------------------+
    // | PUBLIC
    // +-----------------------------------------------------------------------+
    void (*start)(struct _I2CSubordinateType* self);

    /**
     * @return <code>true</code> if the peripheral is now idle else
     * <code>false</code> if the peripheral is still active.
     */
    bool (*run)(struct _I2CSubordinateType* self);

} I2CSubordinate;

I2CSubordinate*
init_i2c_subordinate(I2CSubordinate* self,
                     uint8_t peripheral_address,
                     volatile uint8_t* memory,
                     uint8_t memory_length,
                     const uint8_t* memory_can_write);
