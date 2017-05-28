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
static uint8_t _buffer[10];

static __attribute__((unused)) void
_read_status(I2CMaster* periph)
{
    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 0;
    _buffer[1] = 0;

    periph->send_message(periph, _buffer, 2);

    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 1;

    periph->send_message(periph, _buffer, 4);
}

static __attribute__((unused)) void
_read_all(I2CMaster* periph)
{
    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 0;
    _buffer[1] = 0;

    periph->send_message(periph, _buffer, 2);

    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 1;

    periph->send_message(periph, _buffer, 9);
}

static void
_reset_to_defaults(I2CMaster* periph)
{
    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 0;
    _buffer[1] = 2;
    // reset and HI-Z
    _buffer[2] = 0x8D;

    periph->send_message(periph, _buffer, 3);
}

static void
_write_usb_hi_current(I2CMaster* periph)
{
    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 0;
    _buffer[1] = 2;
    _buffer[2] = 0x5C;

    periph->send_message(periph, _buffer, 3);
}

static void
_write_voltage(I2CMaster* periph)
{
    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 0;
    _buffer[1] = 3;
    _buffer[2] = 0x28;

    periph->send_message(periph, _buffer, 3);
}

static void
_disable_thermal_protection(I2CMaster* periph)
{
    _buffer[0] = (BQ2461x_I2C_ADDR << 1) | 0;
    _buffer[1] = 7;
    _buffer[2] = 0x98;

    periph->send_message(periph, _buffer, 3);
}

int
main()
{
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    PRR |= (1 << PRTIM1) | (1 << PRTIM0) | (1 << PRADC);

    wdt_disable();
    LI_LED0_DDR |= (1 << LI_LED0);
    LI_LED0_PORT |= (1 << LI_LED0);

    I2CMaster* const periph = init_i2c_master(&_peripheral);

    (void)_peripheral;
    (void)_buffer;

    cli();

    for (uint8_t i = 0; i < 2; ++i) {
        _delay_ms(800);

        LI_LED0_PORT &= ~(1 << LI_LED0);

        _delay_ms(800);

        LI_LED0_PORT |= (1 << LI_LED0);
    }

    _read_status(periph);
    _reset_to_defaults(periph);
    _delay_ms(80);
    _write_usb_hi_current(periph);
    _write_voltage(periph);
    _disable_thermal_protection(periph);
    _read_all(periph);

    while (1) {
        LI_LED0_PORT &= ~(1 << LI_LED0);
        _delay_ms(800);
        sleep_enable();
        sleep_cpu();
        sleep_disable();

        LI_LED0_PORT |= (1 << LI_LED0);
        _delay_ms(800);
    }

    return 0;
}

FUSES = {
    .low = AVR_FUSE_L,
    .high = AVR_FUSE_H,
    .extended = AVR_FUSE_E,
};
