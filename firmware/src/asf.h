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

#ifndef ASF_H
#define ASF_H

/*
 * This file includes all API header files for the selected drivers from ASF.
 * Note: There might be duplicate includes required by more than one driver.
 *
 * The file is automatically generated and will be re-written when
 * running the ASF driver selector tool. Any changes will be discarded.
 */

// From module: Common SAM0 compiler driver
#include <compiler.h>
#include <status_codes.h>

// From module: EXTINT - External Interrupt (Callback APIs)
#include <extint.h>
#include <extint_callback.h>

// From module: Generic board support
#include <board.h>

// From module: Interrupt management - SAM implementation
#include <interrupt.h>

// From module: PORT - GPIO Pin Control
#include <port.h>

// From module: Part identification macros
#include <parts.h>

// From module: SAM D21/R21/D11/L21/DA1/L22 USB Dual role interface
#include <usb_dual.h>

// From module: SYSTEM - Clock Management for SAMD21/R21/DAx
#include <clock.h>
#include <gclk.h>

// From module: SYSTEM - Core System Driver
#include <system.h>

// From module: SYSTEM - I/O Pin Multiplexer
#include <pinmux.h>

// From module: SYSTEM - Interrupt Driver
#include <system_interrupt.h>

// From module: SYSTEM - Power Management for SAM D20/D21/R21/D09/D10/D11/DA0/DA1
#include <power.h>

// From module: SYSTEM - Reset Management for SAM D20/D21/R21/D09/D10/D11/DA0/DA1
#include <reset.h>

// From module: Sleep manager - SAMD implementation
#include <samd/sleepmgr.h>
#include <sleepmgr.h>

// From module: USB - Universal Serial Bus
#include <usb.h>

// From module: USB CDC Protocol
#include <usb_protocol_cdc.h>

// From module: USB Device CDC (Single Interface Device)
#include <udi_cdc.h>

// From module: USB Device CDC Standard I/O (stdio) - SAM0 implementation
#include <stdio_usb.h>

// From module: USB Device Stack Core (Common API)
#include <udc.h>
#include <udd.h>

#endif
