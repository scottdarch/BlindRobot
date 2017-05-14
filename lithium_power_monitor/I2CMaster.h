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

#include "Usi_twi_master.h"

typedef enum {
    I2C_MASTER_NO_DATA = 0,       // Transmission buffer is empty
    I2C_MASTER_DATA_OUT_OF_BOUND, // Transmission buffer is outside SRAM space
    I2C_MASTER_UE_START_CON,      // Unexpected Start Condition
    I2C_MASTER_UE_STOP_CON,       // Unexpected Stop Condition
    I2C_MASTER_UE_DATA_COL,       // Unexpected Data Collision (arbitration)
    I2C_MASTER_NO_ACK_ON_DATA,    // The slave did not acknowledge  all data
    I2C_MASTER_NO_ACK_ON_ADDRESS, // The slave did not acknowledge  the address
    I2C_MASTER_MISSING_START_CON, // Generated Start Condition not detected on
                                  // bus
    I2C_MASTER_MISSING_STOP_CON, // Generated Stop Condition not detected on bus
} I2CMasterErrorType;

/**
 * Interface to an I2C peripheral implementation running as a subordinate on
 * the bus.
 *
 * Note that this implementation uses "subordinate" as a more precise and less
 * offensive alternative to the I2C standard term "slave".
 */
typedef struct _I2CMasterType
{
    // +-----------------------------------------------------------------------+
    // | PRIVATE
    // +-----------------------------------------------------------------------+
    Usi_twi_master _state;
    uint8_t _peripheral_addr;
    I2CMasterErrorType _errorState;
    struct
    {
        unsigned char _addressMode : 1;
        unsigned char _masterWriteDataMode : 1;
        unsigned char _unused : 6;
    };

    // +-----------------------------------------------------------------------+
    // | PUBLIC
    // +-----------------------------------------------------------------------+
    void (*start)(struct _I2CMasterType* self);

    /**
     * @return <code>true</code> if the peripheral is now idle else
     * <code>false</code> if the peripheral is still active.
     */
    bool (*run)(struct _I2CMasterType* self);

    bool (*send_message)(struct _I2CMasterType* self,
                         unsigned char* msg,
                         unsigned char msgSize);

} I2CMaster;

I2CMaster*
init_i2c_master(I2CMaster* self, uint8_t peripheral_address);
