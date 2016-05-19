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

#ifndef CONF_CLOCKS_H_INCLUDED
#define CONF_CLOCKS_H_INCLUDED

/**
 * \brief Define the current CPU clock speed based on device settings
 *
 * This define is used by e.g. the libc delay functions to calculate the correct
 * amount of cycles to busy wait for a given delay.
 *
 * \note This value needs to reflect the device fuse settings, that is it needs to
 * be the correct value for either the current internal RC setting or external
 * clock or crystal settings. Functions that rely on this define will not work
 * correctly with an incorrect value.
 */
#define F_CPU 1000000UL

#endif /* CONF_CLOCKS_H_INCLUDED */
