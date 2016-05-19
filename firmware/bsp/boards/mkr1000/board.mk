#             ``
#      <X X>  /
# ``---  |  -
#     [     ]   A BlindRobot Project (by 32bits.io)
# _____U___U____________________________________________________________________
#
# Copyright (c) 2016 Scott A Dixon.  All right reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

LOCAL_ENV_ASF_CPU		?= samd21
LOCAL_ENV_ASF_PART		?= samd21g18a
LOCAL_ENV_CPU_TYPE		?= arm
LOCAL_ENV_CPU			?= cortex-m0plus
LOCAL_ENV_ABI			?= eabi
LOCAL_ENV_ARCH			?= armv6-m
LOCAL_ENV_BIN			?= none
LOCAL_ENV_ASF_FAMILY	?= sam0
LOCAL_ENV_OCD_CHIPNAME	?= at91samd21g18
LOCAL_ENV_OCD_TARGET	?= at91samdXX
LOCAL_ENV_OCD_TRANSPORT	?= swd
LOCAL_ENV_OCD_ENDIAN	?= little
LOCAL_ENV_OCD_BOOTLOADER?= at91samd bootloader 0

LOCAL_ENV_ASF_CLOCK		?= clock_samd21_r21_da
LOCAL_ENV_ASF_POWER		?= power_sam_d_r
LOCAL_ENV_ASF_RESET		?= reset_sam_d_r
LOCAL_ENV_ASF_INT		?= system_interrupt_samd21
LOCAL_ENV_ARDUINO_BOOTLOADER ?= $(realpath samd21_sam_ba_arduino_mkr1000.bin)

CMSIS_SYS_PATH	:= $(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/cmsis/$(LOCAL_ENV_ASF_CPU)
LINKER_SCRIPT 	:= $(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/linker_scripts/$(LOCAL_ENV_ASF_CPU)/gcc/$(LOCAL_ENV_ASF_PART)_flash.ld
CMSIS_PATH		:= $(LOCAL_ENV_ASF_PATH)/thirdparty/CMSIS

CFLAGS			+= -D__$(call TOUPPER,$(LOCAL_ENV_ASF_PART))__ \
					-D ARM_MATH_CM0PLUS=true \
					-D BOARD=USER_BOARD \
					-D ACTUAL_BOARD=ARDUINO_MKR1000 \
					-D EXTINT_CALLBACK_MODE=true \
					-mthumb \

LDFLAGS			+= -mthumb \

LIBS			+= \
					arm_cortexM0l_math \
					m \

LIB_PATH		+= \
					$(CMSIS_PATH)/Lib/GCC \

INCLUDE_PATHS 	+= \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/port \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/extint \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/usb/stack_interface \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/usb/ \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/interrupt \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/interrupt/$(LOCAL_ENV_ASF_INT) \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/pinmux \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/power/$(LOCAL_ENV_ASF_POWER) \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/reset/$(LOCAL_ENV_ASF_RESET) \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/clock \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/clock/$(LOCAL_ENV_ASF_CLOCK) \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/preprocessor \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/header_files \
	$(LOCAL_ENV_ASF_PATH)/common/utils \
	$(LOCAL_ENV_ASF_PATH)/common/utils/stdio/stdio_usb/ \
	$(LOCAL_ENV_ASF_PATH)/common/boards \
	$(LOCAL_ENV_ASF_PATH)/common/services/sleepmgr \
	$(LOCAL_ENV_ASF_PATH)/common/services/usb/class/cdc/ \
	$(LOCAL_ENV_ASF_PATH)/common/services/usb \
	$(LOCAL_ENV_ASF_PATH)/common/services/usb/udc \
	$(LOCAL_ENV_ASF_PATH)/common/services/usb/class/udd \
	$(LOCAL_ENV_ASF_PATH)/common/services/usb/class/cdc/device \
	$(BSP_DIR)/boards/mkr1000 \
	$(BSP_DIR)/boards/mkr1000/conf \
	$(CMSIS_PATH)/Include \
	$(CMSIS_SYS_PATH)/source \
	$(CMSIS_SYS_PATH)/include \
	$(CMSIS_SYS_PATH)/include/instance \


SOURCE			+= $(CMSIS_SYS_PATH)/source/gcc/startup_$(LOCAL_ENV_ASF_CPU).c \
					$(CMSIS_SYS_PATH)/source/system_$(LOCAL_ENV_ASF_CPU).c \
					$(BSP_DIR)/boards/mkr1000/board_init.c \
					$(LOCAL_ENV_ASF_PATH)/common/utils/interrupt/interrupt_sam_nvic.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/system.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/port/port.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/clock/$(LOCAL_ENV_ASF_CLOCK)/clock.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/clock/$(LOCAL_ENV_ASF_CLOCK)/gclk.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/interrupt/system_interrupt.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/system/pinmux/pinmux.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/extint/extint_callback.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/extint/extint_sam_d_r/extint.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/port/port.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/usb/usb_sam_d_r/usb.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/usb/stack_interface/usb_device_udd.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/drivers/usb/stack_interface/usb_dual.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/stdio/read.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/stdio/write.c \
					$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/syscalls/gcc/syscalls.c \
					$(LOCAL_ENV_ASF_PATH)/common/utils/stdio/stdio_usb/stdio_usb.c \
					$(LOCAL_ENV_ASF_PATH)/common/utils/interrupt/interrupt_sam_nvic.c \
					$(LOCAL_ENV_ASF_PATH)/common/services/usb/udc/udc.c \
					$(LOCAL_ENV_ASF_PATH)/common/services/usb/class/cdc/device/udi_cdc.c \
					$(LOCAL_ENV_ASF_PATH)/common/services/usb/class/cdc/device/udi_cdc_desc.c \
					$(LOCAL_ENV_ASF_PATH)/common/services/sleepmgr/samd/sleepmgr.c \
