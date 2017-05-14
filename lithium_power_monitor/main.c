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

#include "I2CSubordinate.h"
#include "lithium.h"

#define STAY_AWAKE_FOR_CYCLES 8

static I2CSubordinate _peripheral;

static volatile uint8_t _data[8] = {
    LI_SMBUS_PERIPHERAL_ADDR, 0x0, 0x0, 0x0, 0x0, 0xF, 0x10, 0x11
};

static const uint8_t _data_writable_flags[1] = { 0x2 };

static bool _hack_conversion = false;

void
start_temperature_conversion()
{
    PRR &= ~(1 << PRADC);
    ADMUX = 0b10100010;
    // Sampling Rate: 500kHz = 8MHz/16
    ADCSRA |= (1 << ADEN) | (0b100 << ADPS0) | (1 << ADATE);
    ADCSRB |= (0b000 << ADTS0); // Enable free running mode
    ADCSRA |= (1 << ADSC);      // start a single conversion
    _hack_conversion = true;
}

bool
check_adc_conversion()
{
    return ((ADCSRA & (1 << ADIF)) == (1 << ADIF));
}

void
finish_adc_conversion()
{
    _data[3] = ADCL;
    _data[4] = ADCH;
    ADCSRA |= (1 << ADIF); // Clear ADC Conversion Interrupt Flag
    PRR |= (1 << PRADC);
    _hack_conversion = false;
}

bool
is_adc_running()
{
    // return (PRR & (1 << PRADC));
    return _hack_conversion;
}

int
main()
{
    MCUCR |= (1 << PUD);
    PRR |= (1 << PRTIM1) | (1 << PRTIM0) | (1 << PRADC);

    // wdt_enable(WDTO_500MS);
    LI_LED0_DDR |= (1 << LI_LED0);
    LI_LED0_PORT |= (1 << LI_LED0);

    I2CSubordinate* const periph = init_i2c_subordinate(
      &_peripheral, LI_SMBUS_PERIPHERAL_ADDR, _data, 8, _data_writable_flags);
    periph->start(periph);

    sei();

    uint8_t idle_count = 0;

    while (1) {
        cli();
        wdt_reset();
        if (_data[1]) {
            _data[1] = 0;
            _data[2] = 0;
            // reduce noise while doing ADC conversion
            set_sleep_mode(SLEEP_MODE_ADC);
            LI_LED0_PORT &= ~(1 << LI_LED0);
            start_temperature_conversion();
            sei();
            {
                sleep_enable();
                sleep_cpu();
                sleep_disable();
            }
            cli();
            LI_LED0_PORT |= (1 << LI_LED0);
        }
        bool adc_is_running = is_adc_running();
        if (adc_is_running && check_adc_conversion()) {
            finish_adc_conversion();
            _data[2] = 1;
            adc_is_running = false;
        }

        if (periph->run(periph)) {
            idle_count += 1;
        } else {
            idle_count = 0;
        }

        wdt_reset();

        if (idle_count > STAY_AWAKE_FOR_CYCLES && !adc_is_running) {
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
