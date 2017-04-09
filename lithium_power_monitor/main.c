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
// clang-format off
#include <avr/io.h>
// clang-format on
#include <avr/fuse.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include "SMBusPeripheral.h"
#include "PowerMonitor.h"
#include "TemperatureMonitor.h"

#define SMBUS_PERIPHERAL_ADDR 0x96

//                           +----------------------+
//                        +5 | 1 VCC         GND 14 | 0
//                           | 2 PB0         PA0 13 | ADC0 -> VBAT
//                           | 3 PB1         PA1 12 | ADC1 -> +6
//                    !RESET | 4 PB3         PA2 11 | ADC2 -> +5
//                           | 5 PB2         PA3 10 |
//(xplained board only) LED0 | 6 PA7         PA4  9 | SCL
//                  MOSI/SDA | 7 PA6         PA5  8 | MISO
//                           +----------------------+
//

static SMBusPeripheral _peripheral;

int
main()
{
    init_smb_peripheral(&_peripheral, SMBUS_PERIPHERAL_ADDR);
    wdt_disable();

    PORTA |= (1 << PA7);
    DDRA |= (1 << DDA7);

    PORTB |= (1 << PB2);
    DDRB |= (1 << DDB2);

    __asm__("nop");

    while (1) {
        PORTA ^= (1 << PA7);
        PORTB ^= (1 << PB2);
        _delay_ms(1000);
    }
    return 0;
}

FUSES = {
    .low = AVR_FUSE_L,
    .high = AVR_FUSE_H,
    .extended = AVR_FUSE_E,
};