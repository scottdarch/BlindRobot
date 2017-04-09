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
#include "InterruptSafeListenerRegistrar.h"

static ListenerRegistrarResult
_interrupt_safe_add_listener(ListenerRegistrar* self, Listener* listener)
{
    return LRR_REGISTRAR_IS_FULL;
}

InterruptSafeListenerRegistrar*
init_interrupt_safe_listener_registrar(InterruptSafeListenerRegistrar* self,
                                       Listener* listeners_storage,
                                       size_t listeners_storage_len)
{
    if (self) {
        self->super.add_listener = _interrupt_safe_add_listener;
        self->super._iterable_end = 0;
        self->super._iterable_length = listeners_storage_len;
        self->super._iterable_storage = listeners_storage;
    }
    return self;
}
