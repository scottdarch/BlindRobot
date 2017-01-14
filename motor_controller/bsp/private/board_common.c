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

#include "board.h"
#include "private/boarddef.h"
#include <string.h>

void init_board()
{
    init_board_private();
}

// +--------------------------------------------------------------------------+
// | BoardGPIO
// +--------------------------------------------------------------------------+

void _board_gpio_dset_high(BoardGPIO *self)
{
    BoardGPIOPrivate *pself = (BoardGPIOPrivate *)self;
    pself->data |= (1 << pself->pin);
}

void _board_gpio_dset_low(BoardGPIO *self)
{
    BoardGPIOPrivate *pself = (BoardGPIOPrivate *)self;
    pself->data &= ~(1 << pself->pin);
}

void _board_gpio_dset_toggle(BoardGPIO *self)
{
    BoardGPIOPrivate *pself = (BoardGPIOPrivate *)self;
    pself->data ^= (1 << pself->pin);
}

bool _board_gpio_dget(BoardGPIO *self)
{
    BoardGPIOPrivate *pself = (BoardGPIOPrivate *)self;
    return (pself->data & (1 << pself->pin));
}

BoardGPIOPrivate *init_board_gpio(BoardGPIOPrivate *self, BoardGPIOID id)
{
    if (self) {
        self->super.id = id;
        self->super.digital_write_high = _board_gpio_dset_high;
        self->super.digital_write_low = _board_gpio_dset_low;
        self->super.digital_toggle = _board_gpio_dset_toggle;
        self->super.digital_read = _board_gpio_dget;
    }
    return self;
}
