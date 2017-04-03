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
#include <dma.h>
#include <dma_crc.h>
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

/** Handler for the device SysTick module, called when the SysTick counter
 *  reaches the set period.
 *
 *  \note As this is a raw device interrupt, the function name is significant
 *        and must not be altered to ensure it is hooked into the device's
 *        vector table.
 */
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

int
main(void)
{
    system_init();

    /*Configure system tick to generate periodic interrupts */
    SysTick_Config(system_gclk_gen_get_hz(GCLK_GENERATOR_0));

    config_led();

    while (true) {
    }
}
