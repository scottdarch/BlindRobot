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
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include <util/delay.h>

#include "I2CMaster.h"
#include "lithium.h"

#define STAY_AWAKE_FOR_CYCLES (8)
#define BQ2461x_I2C_ADDR (0b1101011)

static I2CMaster _peripheral;

int
main()
{
    MCUCR |= (1 << PUD);
    PRR |= (1 << PRTIM1) | (1 << PRTIM0) | (1 << PRADC);

    // wdt_enable(WDTO_500MS);
    LI_LED0_DDR |= (1 << LI_LED0);
    LI_LED0_PORT |= (1 << LI_LED0);

    I2CMaster* const periph = init_i2c_master(&_peripheral);
    periph->start(periph);

    sei();

    uint8_t idle_count = 0;

    while (1) {
        cli();
        wdt_reset();

        uint8_t msg[] = { (BQ2461x_I2C_ADDR << 1) | 1, 0x00 };

        periph->send_message(periph, msg, 2);

        if (periph->run(periph)) {
            idle_count += 1;
        } else {
            idle_count = 0;
        }

        wdt_reset();

        if (idle_count > STAY_AWAKE_FOR_CYCLES) {
            idle_count = 0;
            set_sleep_mode(SLEEP_MODE_PWR_SAVE);
            sei();
            {
                LI_LED0_PORT &= ~(1 << LI_LED0);
                sleep_enable();
                sleep_cpu();
                sleep_disable();
                LI_LED0_PORT |= (1 << LI_LED0);
            }
            cli();
        }
        sei();
        wdt_reset();
        _delay_us(80);
    }
    return 0;
}

FUSES = {
    .low = AVR_FUSE_L,
    .high = AVR_FUSE_H,
    .extended = AVR_FUSE_E,
};
