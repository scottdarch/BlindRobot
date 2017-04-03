#             ``
#      <X X>  /
# ``---  |  -
#     [     ]   A BlindRobot Project (by 32bits.io)
# _____U___U____________________________________________________________________
#
# Copyright (c) 2017 Scott A Dixon.  All right reserved.
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

PROJECT_NAME    := beryllium_esc
LOCAL_MAKEFILE  := $(lastword $(MAKEFILE_LIST))

# +----------------------------------------------------------------------------+
# | RESET
# +----------------------------------------------------------------------------+
CFLAGS          :=
INCLUDE_PATHS   :=
SOURCE          :=
ASSMBLY         :=
LIBS            :=
LIB_PATH        :=

# +----------------------------------------------------------------------------+
# | COMMANDS AND DEFINITIONS
# +----------------------------------------------------------------------------+
MKDIRS          := mkdir -p
RMDIR           := rm -rf
PAGER           ?= less

# use `make [target] DEBUG=1` to override environment setting
ifndef DEBUG
ifeq "$(LOCAL_ENV_FLAVOR)" "debug"
DEBUG           := 1
endif

ifeq "$(LOCAL_ENV_FLAVOR)" ""
DEBUG           := 1
endif
endif

# +----------------------------------------------------------------------------+
# | BOARD
# +----------------------------------------------------------------------------+
BOARD                    := samc21_xplained_pro
BOARD_CPU_ARCH           := arm-none-eabi
BOARD_GCC_PREFIX         := $(BOARD_CPU_ARCH)-
BOARD_FAMILY             := sam0
BOARD_CPU                := samc21
BOARD_CPU_PART           := j18a
BOARD_ARM_CPU            := cortex-m0plus
BOARD_PROGRAMMER         := dragon_isp
CFLAGS                   += -D__SAMC21J18A__ \
                            -DBOARD=SAMC21_XPLAINED_PRO \

# +----------------------------------------------------------------------------+
# | INPUTS
# +----------------------------------------------------------------------------+
INCLUDE_PATHS   += . \
                   asf/thirdparty/CMSIS/Include \
                   asf/common/utils \
                   asf/common/boards \
                   asf/$(BOARD_FAMILY)/utils/cmsis/$(BOARD_CPU)/include \
                   asf/$(BOARD_FAMILY)/utils/cmsis/$(BOARD_CPU)/source/ \
                   asf/$(BOARD_FAMILY)/boards \
                   asf/$(BOARD_FAMILY)/utils \
                   asf/$(BOARD_FAMILY)/utils/preprocessor \
                   asf/$(BOARD_FAMILY)/utils/header_files \
                   asf/$(BOARD_FAMILY)/drivers/port \
                   asf/$(BOARD_FAMILY)/drivers/system \
                   asf/$(BOARD_FAMILY)/drivers/system/clock \
                   asf/$(BOARD_FAMILY)/drivers/system/clock/clock_samc20_c21/ \
                   asf/$(BOARD_FAMILY)/drivers/system/power/power_sam_c/ \
                   asf/$(BOARD_FAMILY)/drivers/system/reset/reset_sam_c/ \
                   asf/$(BOARD_FAMILY)/drivers/system/interrupt \
                   asf/$(BOARD_FAMILY)/drivers/system/interrupt/system_interrupt_samc20_c21/ \
                   asf/$(BOARD_FAMILY)/drivers/system/pinmux \
                   asf/$(BOARD_FAMILY)/drivers/wdt \
                   asf/$(BOARD_FAMILY)/drivers/sercom \
                   asf/$(BOARD_FAMILY)/drivers/sercom/i2c \
                   asf/$(BOARD_FAMILY)/drivers/dma \
                   
SOURCE          += asf/$(BOARD_FAMILY)/boards/$(BOARD)/board_init.c \
                   asf/$(BOARD_FAMILY)/utils/cmsis/$(BOARD_CPU)/source/system_$(BOARD_CPU).c \
                   asf/$(BOARD_FAMILY)/utils/cmsis/$(BOARD_CPU)/source/gcc/startup_$(BOARD_CPU).c \
                   asf/$(BOARD_FAMILY)/drivers/port/port.c \
                   asf/$(BOARD_FAMILY)/drivers/wdt/wdt.c \
                   asf/$(BOARD_FAMILY)/drivers/system/system.c \
                   asf/$(BOARD_FAMILY)/drivers/system/interrupt/system_interrupt.c \
                   asf/$(BOARD_FAMILY)/drivers/system/pinmux/pinmux.c \
                   asf/$(BOARD_FAMILY)/drivers/system/clock/clock_samc20_c21/clock.c \
                   asf/$(BOARD_FAMILY)/drivers/system/clock/clock_samc20_c21/gclk.c \
                   asf/common/utils/interrupt/interrupt_sam_nvic.c \
                   asf/$(BOARD_FAMILY)/drivers/sercom/i2c/i2c_$(BOARD_FAMILY)/i2c_master.c \
                   asf/$(BOARD_FAMILY)/drivers/sercom/sercom.c \
                   asf/$(BOARD_FAMILY)/drivers/sercom/usart/usart.c \
                   asf/$(BOARD_FAMILY)/drivers/dma/dma.c \

SOURCE          += $(wildcard *.c)

ASSMBLY         += $(wildcard *.S)

LINKER_SCRIPT   := asf/$(BOARD_FAMILY)/utils/linker_scripts/$(BOARD_CPU)/gcc/$(BOARD_CPU)$(BOARD_CPU_PART)_flash.ld

# +----------------------------------------------------------------------------+
# | OUTPUTS
# +----------------------------------------------------------------------------+
BUILD_ROOT      := build
ifdef DEBUG
BUILD_FOLDER    := $(BUILD_ROOT)/Debug
else
BUILD_FOLDER    := $(BUILD_ROOT)/Release
endif

OBJS            := $(addprefix $(BUILD_FOLDER)/, $(SOURCE:.c=.o)) \
                   $(addprefix $(BUILD_FOLDER)/, $(ASSMBLY:.S=.o)) \

HEX             := $(BUILD_FOLDER)/$(PROJECT_NAME).hex
ELF             := $(BUILD_FOLDER)/$(PROJECT_NAME).elf
INFO_OUTPUTS    := $(BIN) $(HEX)
MAP_FILE        := $(BUILD_FOLDER)/$(PROJECT_NAME).map
LISTING_FILE    := $(BUILD_FOLDER)/$(PROJECT_NAME).lss

# +----------------------------------------------------------------------------+
# | TOOLCHAIN
# +----------------------------------------------------------------------------+

LOCAL_ENV_PROGRAM ?= avrdude -c $(BOARD_PROGRAMMER) -p $(BOARD_CPU)

ASFLAGS         := -Wa,-g \
                   -Wa,-gdwarf2 \

DEPFLAGS         = -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)"

POSTCOMPILE      = mv -f $(patsubst %.o,%.Td,$@) $(patsubst %.o,%.d,$@)

CFLAGS          +=  \
                    -std=c99 \
                    -Wall \
                    -Werror \
                    -mcpu=$(BOARD_ARM_CPU) \
                    -ffunction-sections \
                    -fdata-sections \
                    -funsigned-char \
                    -funsigned-bitfields \
                    -fno-strict-aliasing \
                    -fpack-struct \
                    -fshort-enums \
                    -Dprintf=iprintf \
                    -Dscanf=iscanf \

ifdef DEBUG
CFLAGS          += -ggdb \
                   -DDEBUG \
                   -Og \

else
CFLAGS          += -Os \

endif

CFLAGS          += $(addprefix -I, $(INCLUDE_PATHS))

LDFLAGS         := $(foreach LIB,$(LIBS),-l$(LIB))
LDFLAGS         += $(foreach _LIB_PATH,$(LIB_PATH),-L$(_LIB_PATH))
LDFLAGS         += -pipe \
                   -L. \
                   -Wl,--gc-sections \
                   -Wl,--unresolved-symbols=report-all \
                   -Wl,--warn-common \
                   -Wl,--warn-section-align \
                   -Wl,-M=$(MAP_FILE) \
                   -T$(LINKER_SCRIPT) \

BINFLAGS         = -j .text -j .data -O ihex

GCCPREFIX       := $(strip $(shell $(BOARD_GCC_PREFIX)gcc -v 2>&1 | awk '{FS="--|="; if ( $$2 ~ /prefix/ ) print $$3 }'))
GCCHEADERS      := $(GCCPREFIX)/$(BOARD_CPU_ARCH)/include

# +----------------------------------------------------------------------------+
# | RECIPIES
# +----------------------------------------------------------------------------+
$(HEX) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)objcopy $(BINFLAGS) $< $@

$(ELF) : $(OBJS)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(CFLAGS) $(LDFLAGS) -o $@ $^

$(BUILD_FOLDER)/%.o : %.s $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)as $(DEPFLAGS) $(CFLAGS) $(ASFLAGS) -D__ASSEMBLY__ -c $< -o $@
	$(POSTCOMPILE)

$(BUILD_FOLDER)/%.o : %.c $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(DEPFLAGS) $(CFLAGS) -c $< -o $@
	$(POSTCOMPILE)

$(MAP_FILE) : $(ELF)

$(LISTING_FILE) : $(ELF)
	$(BOARD_GCC_PREFIX)objdump -h -S -D $< > $@

.DELETE_ON_ERROR: ;

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+
GLOBAL_PHONIES := all clean size flash info map dump

.PHONY: $(GLOBAL_PHONEIS)
all: $(HEX)
	# Build all the things!

clean:
	$(RMDIR) $(BUILD_ROOT)

size: $(HEX)
	$(BOARD_GCC_PREFIX)size --mcu=$(BOARD_CPU) --format=avr --target=binary $<

flash: $(HEX)
	$(LOCAL_ENV_PROGRAM) -U $@:w:$<:i

info:
	@echo SOURCE: $(addprefix "\n\t", $(SOURCE))
	@echo OBJS: $(addprefix "\n\t", $(OBJS))
	@echo INCLUDES: $(addprefix "\n\t", $(INCLUDE_PATHS))
	@echo OUTPUTS: $(addprefix "\n\t", $(INFO_OUTPUTS))
	@echo TARGETS: $(addprefix "\n\t", $(GLOBAL_PHONIES))
	@echo GCCPREFIX: $(GCCPREFIX)

map: $(MAP_FILE)
	$(PAGER) $<

dump: $(LISTING_FILE)
	$(PAGER) $<

# +----------------------------------------------------------------------------+
# | AUTO DEPENDENCIES
# +----------------------------------------------------------------------------+
%.d : ;
.PRECIOUS: %.d

-include $(OBJS:.o=.d)
