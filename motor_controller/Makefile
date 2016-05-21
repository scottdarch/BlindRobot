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

LOCAL_ENV_BOARD := arduino_pro_mini

# include procecessor specific definitions
BOARD_DIR       := $(BSP_DIR)/boards/$(LOCAL_ENV_BOARD)
include $(BOARD_DIR)/board.mk
INCLUDE_PATHS   += $(dir $(LOCAL_MAKEFILE))

# +----------------------------------------------------------------------------+
# | INPUTS
# +----------------------------------------------------------------------------+
INCLUDE_PATHS += src \

SOURCE          += $(wildcard src/*.c)

ASSMBLY         += $(wildcard src/*.s)

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
INFO_OUTPUTS    := $(BIN) $(HEX)

# +----------------------------------------------------------------------------+
# | TOOLCHAIN
# +----------------------------------------------------------------------------+

LOCAL_ENV_PROGRAM ?= avrdude -p $(BOARD_CPU) $@

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
                   -Lgcc \
                   -L. \
                   -Wl,--gc-sections \
                   -Wl,--unresolved-symbols=report-all \
                   -Wl,--warn-common \
                   -Wl,--warn-section-align \

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
GLOBAL_PHONIES := all clean size flash flash-bootloader flash-fuse info

.PHONY: $(GLOBAL_PHONEIS)
all: $(HEX)
	# Build all the things!
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
	
info:
	@echo SOURCE: $(addprefix "\n\t", $(SOURCE))
	@echo OBJS: $(addprefix "\n\t", $(OBJS))
	@echo INCLUDES: $(addprefix "\n\t", $(INCLUDE_PATHS))
	@echo OUTPUTS: $(addprefix "\n\t", $(INFO_OUTPUTS))
	@echo TARGETS: $(addprefix "\n\t", $(GLOBAL_PHONIES))
	@echo GCCPREFIX: $(GCCPREFIX)

# +----------------------------------------------------------------------------+
# | AUTO DEPENDENCIES
# +----------------------------------------------------------------------------+
%.d : ;
.PRECIOUS: %.d

-include $(OBJS:.o=.d)
