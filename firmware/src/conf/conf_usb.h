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

#ifndef _CONF_USB_H_
#define _CONF_USB_H_

#include <compiler.h>

/**
 * USB Device Configuration
 * @{
 */

//! Device definition
#define USB_DEVICE_VENDOR_ID USB_VID_ATMEL
#define USB_DEVICE_PRODUCT_ID USB_PID_ATMEL_ASF_CDC
#define USB_DEVICE_MAJOR_VERSION 1
#define USB_DEVICE_MINOR_VERSION 0
#define USB_DEVICE_POWER 100
#define USB_DEVICE_MANUFACTURE_NAME "ATMEL ASF"
#define USB_DEVICE_PRODUCT_NAME "CDC"

#define USB_DEVICE_ATTR (USB_CONFIG_ATTR_SELF_POWERED)
// (USB_CONFIG_ATTR_BUS_POWERED)
//	(USB_CONFIG_ATTR_REMOTE_WAKEUP|USB_CONFIG_ATTR_SELF_POWERED)
//	(USB_CONFIG_ATTR_REMOTE_WAKEUP|USB_CONFIG_ATTR_BUS_POWERED)

/**
 * Device speeds support
 * Low speed not supported by CDC
 * @{
 */
//! To authorize the High speed
#if (UC3A3 || UC3A4)
//#define  USB_DEVICE_HS_SUPPORT
#endif
//@}

/**
 * USB Device Callbacks definitions
 * @{
 */
#define UDC_VBUS_EVENT(b_vbus_high)
#define UDC_SOF_EVENT()
#define UDC_SUSPEND_EVENT()
#define UDC_RESUME_EVENT()
//@}

//@}

/**
 * USB Interface Configuration
 * @{
 */
/**
 * Configuration of CDC interface
 * @{
 */
//! Interface callback definition
#define UDI_CDC_ENABLE_EXT(port) stdio_usb_enable()
#define UDI_CDC_DISABLE_EXT(port) stdio_usb_disable()
#define UDI_CDC_RX_NOTIFY(port)
#define UDI_CDC_TX_EMPTY_NOTIFY(port)
#define UDI_CDC_SET_CODING_EXT(port, cfg)
#define UDI_CDC_SET_DTR_EXT(port, set)
#define UDI_CDC_SET_RTS_EXT(port, set)

//! Default configuration of communication port
#define UDI_CDC_DEFAULT_RATE 115200
#define UDI_CDC_DEFAULT_STOPBITS CDC_STOP_BITS_1
#define UDI_CDC_DEFAULT_PARITY CDC_PAR_NONE
#define UDI_CDC_DEFAULT_DATABITS 8
//@}
//@}

/**
 * USB Device Driver Configuration
 * @{
 */
//@}

//! The includes of classes and other headers must be done at the end of this file to avoid compile
//! error
#include <udi_cdc_conf.h>
#include <stdio_usb.h>

#endif // _CONF_USB_H_
