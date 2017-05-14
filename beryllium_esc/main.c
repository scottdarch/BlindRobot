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
#include <compiler.h>
#include <status_codes.h>
#include <board.h>
#include <interrupt.h>
#include <port.h>
#include <parts.h>
#include <i2c_common.h>
#include <i2c_master.h>
#include <sercom.h>
#include <clock.h>
#include <gclk.h>
#include <system.h>
#include <pinmux.h>
#include <system_interrupt.h>
#include <power.h>
#include <reset.h>
#include <wdt.h>

#define DO_PRAGMA(x) _Pragma(#x)
#define TODO(x) DO_PRAGMA(message("TODO: " #x))

#define TIMEOUT 1000

void
SysTick_Handler(void)
{
    port_pin_toggle_output_level(LED_0_PIN);
}

/** Configure LED0, turn it off*/
static void
config_led(void)
{
    struct port_config pin_conf;
    port_get_config_defaults(&pin_conf);

    pin_conf.direction = PORT_PIN_DIR_OUTPUT;
    port_pin_set_config(LED_0_PIN, &pin_conf);
    port_pin_set_output_level(LED_0_PIN, LED_0_INACTIVE);
}

#define PERIPHERAL_ADDR 0x49

/* Init software module. */
struct i2c_master_module i2c_master_instance;

static void
configure_i2c_master(void)
{
    /* Initialize config structure and software module. */
    struct i2c_master_config config_i2c_master;
    i2c_master_get_config_defaults(&config_i2c_master);

    /* Change buffer timeout to something longer. */
    config_i2c_master.buffer_timeout = 10000;

    /* Initialize and enable device with config. */
    i2c_master_init(
      &i2c_master_instance, CONF_I2C_MASTER_MODULE, &config_i2c_master);

    i2c_master_enable(&i2c_master_instance);
}

int
main(void)
{
    system_init();

    struct wdt_conf config_wdt;
    wdt_get_config_defaults(&config_wdt);
    config_wdt.always_on = false;
    config_wdt.enable = false;
    wdt_set_config(&config_wdt);

    /*Configure system tick to generate periodic interrupts */
    SysTick_Config(system_gclk_gen_get_hz(GCLK_GENERATOR_0));

    config_led();

    configure_i2c_master();

    uint16_t timeout = 0;

    static struct i2c_master_packet packet = {.address = PERIPHERAL_ADDR,
                                              .data_length = 0,
                                              .data = 0,
                                              .ten_bit_address = false,
                                              .high_speed = false,
                                              .hs_master_code = 0 };

    TODO(Break this out into a SMBBus service);

    uint8_t read_address = 0;
    packet.data = &read_address;
    packet.data_length = 1;
    do {
        while (i2c_master_write_packet_wait(&i2c_master_instance, &packet) !=
               STATUS_OK) {
            /* Increment timeout counter and check if timed out. */
            if (timeout++ == TIMEOUT) {
                break;
            }
        }

        while (i2c_master_read_packet_wait(&i2c_master_instance, &packet) !=
               STATUS_OK) {
            /* Increment timeout counter and check if timed out. */
            if (timeout++ == TIMEOUT) {
                break;
            }
        }
    } while (read_address != packet.address);

    uint8_t start_conversion[2] = { 1, 1 };
    packet.data = start_conversion;
    packet.data_length = 2;
    while (i2c_master_write_packet_wait(&i2c_master_instance, &packet) !=
           STATUS_OK) {
        /* Increment timeout counter and check if timed out. */
        if (timeout++ == TIMEOUT) {
            break;
        }
    }

    uint8_t is_complete = 0;
    do {
        // Wait for a bit to let the darn thing measure. Don't wait too long
        // or it will go back to sleep.
        for (uint32_t i = 0xFF; i > 0; --i) {
            __asm__("NOP");
        }

        uint8_t wait_for_compleation = 2;
        packet.data = &wait_for_compleation;
        packet.data_length = 1;

        while (i2c_master_write_packet_wait_no_stop(&i2c_master_instance,
                                                    &packet) != STATUS_OK) {
            /* Increment timeout counter and check if timed out. */
            if (timeout++ == TIMEOUT) {
                break;
            }
        }

        packet.data = &is_complete;
        packet.data_length = 1;
        while (i2c_master_read_packet_wait(&i2c_master_instance, &packet) !=
               STATUS_OK) {
            /* Increment timeout counter and check if timed out. */
            if (timeout++ == TIMEOUT) {
                break;
            }
        }
    } while (!is_complete);

    uint8_t result = 3;
    packet.data = &result;
    packet.data_length = 1;

    while (i2c_master_write_packet_wait_no_stop(&i2c_master_instance,
                                                &packet) != STATUS_OK) {
        /* Increment timeout counter and check if timed out. */
        if (timeout++ == TIMEOUT) {
            break;
        }
    }

    uint8_t temperature[2];
    packet.data = temperature;
    packet.data_length = 2;
    while (i2c_master_read_packet_wait(&i2c_master_instance, &packet) !=
           STATUS_OK) {
        /* Increment timeout counter and check if timed out. */
        if (timeout++ == TIMEOUT) {
            break;
        }
    }

    while (true) {
        /* Infinite loop */
    }
}
