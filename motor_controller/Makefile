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
PROJECT_NAME    := BlindRobot_motor_controller
LOCAL_MAKEFILE  := $(lastword $(MAKEFILE_LIST))

# +----------------------------------------------------------------------------+
# | ENVIRONMENT
# +----------------------------------------------------------------------------+
LOCAL_ENV_BOARD   ?= arduino_pro_mini
LOCAL_ENV_PROGRAM ?= avrdude -p $(BOARD_CPU) $@
LOCAL_ENV_CFLAGS  ?=
LOCAL_ENV_FLAVOR  ?= debug
LOCAL_ENV_DBGSVR  ?= avarice

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
PYTHON          := python
BSP_DIR         := bsp

# use `make [target] DEBUG=1` to override environment setting
ifndef DEBUG
ifeq "$(LOCAL_ENV_FLAVOR)" "debug"
DEBUG           := 1
endif
endif

# include procecessor specific definitions
BOARD_DIR       := $(BSP_DIR)/boards/$(LOCAL_ENV_BOARD)
include $(BOARD_DIR)/board.mk
INCLUDE_PATHS   += $(dir $(LOCAL_MAKEFILE)) \
                   $(BSP_DIR) \

# See http://wiki.bash-hackers.org/scripting/terminalcodes for reference
ANSI_CLEAR      := \033[0m
ANSI_TEXT_BLK   := \033[30m
ANSI_TEXT_RED   := \033[31m
ANSI_TEXT_GREEN := \033[32m
ANSI_TEXT_YELO  := \033[33m
ANSI_TEXT_BLUE  := \033[34m
ANSI_TEXT_MAG   := \033[35m
ANSI_TEXT_CYAN  := \033[36m
ANSI_TEXT_WHT   := \033[37m
ANSI_TEXT_DEF   := \033[39m
ANSI_BG_WHT     := \033[47m
ANSI_REDONWHT   := $(ANSI_TEXT_RED)$(ANSI_BG_WHT)
ANSI_BLONWHT    := $(ANSI_TEXT_BLUE)$(ANSI_BG_WHT)

# +----------------------------------------------------------------------------+
# | INPUTS
# +----------------------------------------------------------------------------+
INCLUDE_PATHS += src \

SOURCE          += $(wildcard src/*.c) \
                   $(wildcard $(BSP_DIR)/*.c) \
                   $(wildcard $(BSP_DIR)/private/*.c) \
                   $(wildcard $(BOARD_DIR)/*.c) \

ASSMBLY         += $(wildcard src/*.s) \
                   $(wildcard $(BOARD_DIR)/*.s) \

# +----------------------------------------------------------------------------+
# | OUTPUTS
# +----------------------------------------------------------------------------+
BUILD_ROOT      := .build
ifdef DEBUG
BUILD_FOLDER    := $(BUILD_ROOT)/Debug
else
BUILD_FOLDER    := $(BUILD_ROOT)/Release
endif

OBJS            := $(addprefix $(BUILD_FOLDER)/, $(SOURCE:.c=.o)) \
                   $(addprefix $(BUILD_FOLDER)/, $(ASSMBLY:.s=.o)) \

HEX             := $(BUILD_FOLDER)/$(PROJECT_NAME).hex
ELF             := $(BUILD_FOLDER)/$(PROJECT_NAME).elf
INFO_OUTPUTS    := $(ELF) $(HEX)

# +----------------------------------------------------------------------------+
# | TOOLCHAIN
# +----------------------------------------------------------------------------+

ASFLAGS         := -mcpu=$(BOARD_CPU) \
                   -gsstabs \
                   -march=$(BOARD_CPU_ARCH) \

# See http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/
# for an explaination of this dependency scheme.
DEPFLAGS         = -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)"

POSTCOMPILE      = mv -f $(patsubst %.o,%.Td,$@) $(patsubst %.o,%.d,$@)

CFLAGS          +=  \
                    -std=gnu99 \
                    -Wall \
                    -Werror \
                    -ffunction-sections \
                    -fdata-sections \
                    -fno-strict-aliasing \
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
CFLAGS          += $(LOCAL_ENV_CFLAGS)

LDFLAGS         := $(foreach LIB,$(LIBS),-l$(LIB))
LDFLAGS         += $(foreach _LIB_PATH,$(LIB_PATH),-L$(_LIB_PATH))
LDFLAGS         += -pipe \
                   -Wl,--no-gc-sections \
                   -Wl,--print-gc-sections \
                   -Wl,--unresolved-symbols=report-all \
                   -Wl,--warn-common \
                   -Wl,--warn-section-align \

BINFLAGS         = -j .text -j .data

ifndef DEBUG
BINFLAGS        += -S
endif

GCCPREFIX       := $(strip $(shell $(BOARD_GCC_PREFIX)gcc -v 2>&1 | awk '{FS="--|="; if ( $$2 ~ /prefix/ ) print $$3 }'))
GCCHEADERS      := $(GCCPREFIX)/$(BOARD_CPU_ARCH)/include

# +----------------------------------------------------------------------------+
# | RECIPIES
# +----------------------------------------------------------------------------+
$(HEX) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)objcopy $(BINFLAGS) -O ihex $< $@

$(ELF) : $(OBJS)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(LDFLAGS) -o $@ $^

$(BUILD_FOLDER)/%.o : %.s $(BUILD_FOLDER)/%.d
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)as $(DEPFLAGS) $(ASFLAGS) -D__ASSEMBLY__ -c $< -o $@
	$(POSTCOMPILE)

$(BUILD_FOLDER)/%.o : %.c $(BUILD_FOLDER)/%.d
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(DEPFLAGS) $(CFLAGS) -c $< -o $@
	$(POSTCOMPILE)

.DELETE_ON_ERROR: ;

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+
GLOBAL_PHONIES := all clean size flash flash-bootloader flash-fuse flash-dwen info debug-server

.PHONY: $(GLOBAL_PHONEIS)
all: $(HEX)
	@echo $(BOARD_GCC_PREFIX)gcc -I$(GCCHEADERS)

clean:
	$(RMDIR) $(BUILD_ROOT)

size: $(HEX)
	$(BOARD_GCC_PREFIX)size --mcu=$(BOARD_CPU) --format=avr --target=binary $<

flash: $(HEX)
	$(LOCAL_ENV_PROGRAM) $(BOARD_PROGRAM_FIRMWARE)

flash-bootloader: $(BOARD_ARDUINO_BOOTLOADER)
	$(LOCAL_ENV_PROGRAM) $(BOARD_PROGRAM_FIRMWARE)

flash-fuse: 
	$(LOCAL_ENV_PROGRAM) $(BOARD_PROGRAM_FUSE)

flash-dwen:
	$(LOCAL_ENV_PROGRAM) $(BOARD_PROGRAM_FUSE_DWEN)

debug-server:
	$(LOCAL_ENV_DBGSVR) -g -w -P $(BOARD_CPU) :4242

info:
	@echo "+----------------------------------------------------------------------------+"
	@echo "| $(ANSI_TEXT_GREEN)$(LOCAL_ENV_BOARD)-$(LOCAL_ENV_FLAVOR) :: $(GCCPREFIX)$(ANSI_CLEAR)"
	@echo "+----------------------------------------------------------------------------+"
	@echo
	@echo "$(ANSI_BLONWHT)SOURCE:$(ANSI_CLEAR)" $(addprefix "\n\t", $(SOURCE))
	@echo
	@echo "$(ANSI_BLONWHT)OBJS:$(ANSI_CLEAR)" $(addprefix "\n\t", $(OBJS))
	@echo
	@echo "$(ANSI_BLONWHT)INCLUDES:$(ANSI_CLEAR)" $(addprefix "\n\t", $(INCLUDE_PATHS))
	@echo
	@echo "$(ANSI_BLONWHT)OUTPUTS:$(ANSI_CLEAR)" $(addprefix "\n\t", $(INFO_OUTPUTS))
	@echo
	@echo "$(ANSI_BLONWHT)TARGETS:$(ANSI_CLEAR)" $(addprefix "\n\t", $(GLOBAL_PHONIES))
	@echo

# +----------------------------------------------------------------------------+
# | AUTO DEPENDENCIES
# +----------------------------------------------------------------------------+
%.d : ;
.PRECIOUS: %.d

-include $(OBJS:.o=.d)
