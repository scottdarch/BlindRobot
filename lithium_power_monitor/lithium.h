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

// +---------------------------------------------------------------------------+
// | SMBus
// +---------------------------------------------------------------------------+
// SMBus prototype address 0x01 (1001 0XXb)
#define LI_SMBUS_PERIPHERAL_ADDR 0x49

enum
{
    LI_SMBUS_COMMAND_READ_TEMP = 0x01
};

// +---------------------------------------------------------------------------+
// | GPIO
// +---------------------------------------------------------------------------+

//                                  PDIP/SOIC
//                           +----------------------+
//                        +5 | 1 VCC         GND 14 | GND
//                           | 2 PB0         PA0 13 | ADC0 -> VBAT
//                           | 3 PB1         PA1 12 | ADC1 -> +6
//                    !RESET | 4 PB3         PA2 11 | ADC2 -> +5
//                           | 5 PB2         PA3 10 |
//                      LED0 | 6 PA7         PA4  9 | SCL
//                  MOSI/SDA | 7 PA6         PA5  8 | MISO
//                           +----------------------+
//
//
//                                  QFN/MLF
//
//                                   M       M/
//                                   I       OS
//                                   S       SD
//                                   O       IA
//                          +--------------------------+
//                          | .      2 1 1 1 1         |
//                          |        0 9 8 7 6         |
//                          |        P       P         |
//                      SCL | 1 PA4  A       A  PA7 15 | LED0
//                          | 2 PA3  5       6  PB2 14 |
//               ADC2 -> +5 | 3 PA2             PB3 13 | !RESET
//               ADC1 -> +6 | 4 PA1             PB1 12 |
//             ADC0 -> VBAT | 5 PA0      G V    PB0 11 |
//                          |            N C           |
//                          |            D C 1         |
//                          |        6 7 8 9 0         |
//                          +--------------------------+
//                                       G +
//                                       N 5
//                                       D
//
#define LI_LED0 PA7
#define LI_LED0_PORT PORTA
#define LI_LED0_DDR DDRA

#define LI_USI0_PORT PORTA
#define LI_USI0_PIN PINA
#define LI_USI0_DDR DDRA

#define LI_SDA0 PA6

#define LI_SCL0 PA4
