/*             ``
 *      <X X>  /
 * ``---  |  -
 *     [     ]   A BlindRobot Project (by 32bits.io)
 * _____U___U___________________________________________________________________
 *
 * Copyright (c) 2016 Scott A Dixon.  All right reserved.
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
#include <board.h>
#include <port.h>

void board_init(void) WEAK __attribute__((alias("system_board_init")));

void system_board_init(void) {
  // struct port_config pin_conf;
  // port_get_config_defaults(&pin_conf);
  //
  // /* Configure LEDs as outputs, turn them off */
  // pin_conf.direction = PORT_PIN_DIR_OUTPUT;
  // port_pin_set_config(LED_0_PIN, &pin_conf);
  // port_pin_set_output_level(LED_0_PIN, LED_0_INACTIVE);
  //
  // /* Set buttons as inputs */
  // pin_conf.direction = PORT_PIN_DIR_INPUT;
  // pin_conf.input_pull = PORT_PIN_PULL_UP;
  // port_pin_set_config(BUTTON_0_PIN, &pin_conf);
}
