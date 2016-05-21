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

BOARD_CPU_ARCH           := avr
BOARD_GCC_PREFIX         := $(BOARD_CPU_ARCH)-
BOARD_CPU                := atmega328p
BOARD_ARDUINO_BOOTLOADER := $(BOARD_DIR)/AtmegaBOOT_168_atmega328_pro_8MHz.hex
BOARD_HFUSE              := DA
BOARD_LFUSE              := FF
BOARD_EFUSE              := 05
BOARD_PROGRAM_FUSE       := -e -u -U lock:w:0x3f:m -U efuse:w:0x$(BOARD_EFUSE):m -U hfuse:w:0x$(BOARD_HFUSE):m -U lfuse:w:0x$(BOARD_LFUSE):m
BOARD_PROGRAM_FIRMWARE    = -U flash:w:$< -U lock:w:0x0f:m
CFLAGS                   += -D__AVR_ATmega328P__