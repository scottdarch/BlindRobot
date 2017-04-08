/**
 * \file
 *
 * \brief SAM C21 Xplained Pro board initialization
 *
 * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */

#include <compiler.h>
#include <board.h>
#include <conf_board.h>
#include <port.h>
#include <pinmux.h>

void
system_board_init(void)
{
    struct port_config pin_conf;
    port_get_config_defaults(&pin_conf);

    /* Configure LEDs as outputs, turn them off */
    pin_conf.direction = PORT_PIN_DIR_OUTPUT;
    port_pin_set_config(LED_0_PIN, &pin_conf);
    port_pin_set_output_level(LED_0_PIN, LED_0_INACTIVE);

    /* Set buttons as inputs */
    pin_conf.direction = PORT_PIN_DIR_INPUT;
    pin_conf.input_pull = PORT_PIN_PULL_UP;
    port_pin_set_config(BUTTON_0_PIN, &pin_conf);

    //    struct system_pinmux_config pinmux_config;
    //
    //    system_pinmux_get_config_defaults(&pinmux_config);
    //
    //    pinmux_config.mux_position = 0x02; // C
    //    pinmux_config.input_pull = SYSTEM_PINMUX_PIN_PULL_NONE;
    //    system_pinmux_pin_set_config(EXT1_PIN_I2C_SDA, &pinmux_config);
    //    system_pinmux_pin_set_config(EXT1_PIN_I2C_SCL, &pinmux_config);
    //
    //    pinmux_config.mux_position = 0x07; // H
    //    pinmux_config.direction = SYSTEM_PINMUX_PIN_DIR_OUTPUT;
    //    system_pinmux_pin_set_config(PIN_PB15, &pinmux_config);
    //    system_pinmux_pin_set_config(PIN_PB14, &pinmux_config);
}
