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
PROJECT_NAME    := lithium_power_monitor
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
LOCAL_ENV_BOARD          := lithium
BOARD_CPU_ARCH           := avr
BOARD_GCC_PREFIX         := $(BOARD_CPU_ARCH)-
BOARD_CPU                := attiny84
BOARD_CLOCK              := 8000000
BOARD_PROGRAMMER         := dragon_isp
CFLAGS                   += -D__AVR_ATtiny84__

BOARD_AVR_FUSE_H         := 0xDF
BOARD_AVR_FUSE_H_DW      := 0x9F
BOARD_AVR_FUSE_L         := 0xE2
BOARD_AVR_FUSE_E         := 0xFF

CFLAGS += -DAVR_FUSE_H=$(BOARD_AVR_FUSE_H) \
          -DAVR_FUSE_L=$(BOARD_AVR_FUSE_L) \
          -DAVR_FUSE_E=$(BOARD_AVR_FUSE_E) \

# +----------------------------------------------------------------------------+
# | INPUTS
# +----------------------------------------------------------------------------+
INCLUDE_PATHS   += . \
                   applications \
                   usi_twi_subordinate \
                   usi_twi_master \

SOURCE          += $(wildcard *.c) \
                   applications/main_master.c \
                   
                   # applications/main_subordinate.c \

YAKINDU_SOURCE  := $(wildcard usi_twi_subordinate/*.c) \
                   $(wildcard usi_twi_master/*.c) \

ASSMBLY         += $(wildcard *.S)

# +----------------------------------------------------------------------------+
# | BUILD DIRECTORY
# +----------------------------------------------------------------------------+
BUILD_ROOT      := build
ifdef DEBUG
BUILD_FOLDER    := $(BUILD_ROOT)/Debug
else
BUILD_FOLDER    := $(BUILD_ROOT)/Release
endif

# +----------------------------------------------------------------------------+
# | OUTPUTS
# +----------------------------------------------------------------------------+
C_OBJS          := $(addprefix $(BUILD_FOLDER)/, $(SOURCE:.c=.o))
S_OBJS          := $(addprefix $(BUILD_FOLDER)/, $(ASSMBLY:.S=.o))
Y_OBJS          := $(addprefix $(BUILD_FOLDER)/, $(YAKINDU_SOURCE:.c=.o))

HEX             := $(BUILD_FOLDER)/$(PROJECT_NAME).hex
ELF             := $(BUILD_FOLDER)/$(PROJECT_NAME).elf
INFO_OUTPUTS    := $(ELF) $(HEX)
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

CFLAGS          +=  -Wall \
                    -Werror \
                    -std=c99 \
                    -DF_CPU=$(BOARD_CLOCK) \
                    -mmcu=$(BOARD_CPU) \
                    -ffunction-sections \
                    -fdata-sections \
                    -funsigned-char \
                    -funsigned-bitfields \
                    -fno-strict-aliasing \
                    -fshort-enums \
                    -Dprintf=iprintf \
                    -Dscanf=iscanf \
                    -mrelax \

CFLAGS_YAK      := -Wno-implicit-function-declaration \
                   -Wno-unused-function \

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

BINFLAGS        := -j .text -j .data

GCCPREFIX       := $(strip $(shell $(BOARD_GCC_PREFIX)gcc -v 2>&1 | awk '{FS="--|="; if ( $$2 ~ /prefix/ ) print $$3 }'))
GCCHEADERS      := $(GCCPREFIX)/$(BOARD_CPU_ARCH)/include

# +----------------------------------------------------------------------------+
# | RECIPIES
# +----------------------------------------------------------------------------+
$(HEX) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)objcopy $(BINFLAGS) -O ihex $< $@

$(ELF) : $(C_OBJS) $(S_OBJS) $(Y_OBJS)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(CFLAGS) $(LDFLAGS) -o $@ $^

$(S_OBJS) : $(BUILD_FOLDER)/%.o : %.s $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)as $(DEPFLAGS) $(CFLAGS) $(ASFLAGS) -D__ASSEMBLY__ -c $< -o $@
	$(POSTCOMPILE)

$(C_OBJS) : $(BUILD_FOLDER)/%.o : %.c $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(DEPFLAGS) $(CFLAGS) -c $< -o $@
	$(POSTCOMPILE)

$(Y_OBJS) : $(BUILD_FOLDER)/%.o : %.c $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(DEPFLAGS) $(CFLAGS) $(CFLAGS_YAK) -c $< -o $@
	$(POSTCOMPILE)

$(MAP_FILE) : $(ELF)

$(LISTING_FILE) : $(ELF)
	$(BOARD_GCC_PREFIX)objdump -h -S -D $< > $@

.DELETE_ON_ERROR: ;

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+
GLOBAL_PHONIES := all clean size flash info map dump signature fuses debug-server enable-dw

.PHONY: $(GLOBAL_PHONEIS)
all: $(HEX) size
	# Build all the things!

clean:
	$(RMDIR) $(BUILD_ROOT)

size: $(ELF)
	$(BOARD_GCC_PREFIX)size --mcu=$(BOARD_CPU) --format=avr --target=elf32-avr $<

flash: $(HEX)
	$(LOCAL_ENV_PROGRAM) -U $@:w:$<:i

fuses:
	# Also reset dwen fuse. Use enable-dw target to re-enable.
	$(LOCAL_ENV_PROGRAM) -U lfuse:w:$(BOARD_AVR_FUSE_L):m \
                         -U hfuse:w:$(BOARD_AVR_FUSE_H):m \
                         -U efuse:w:$(BOARD_AVR_FUSE_E):m

enable-dw:
	$(LOCAL_ENV_PROGRAM) -U hfuse:w:$(BOARD_AVR_FUSE_H_DW):m

signature:
	$(LOCAL_ENV_PROGRAM) -v -v

debug-server:
	# for Eclipse Hardware debugging don't forget to uncheck "load image" but
	# leave "load symbols" checked.
	avarice --dragon --debugwire --part $(BOARD_CPU) -I -j usb :4343

info:
	@echo "             ``"
	@echo "      <X X>  /"
	@echo " \`\`---  |  -"
	@echo "     [     ]   A BlindRobot Project (by 32bits.io)"
	@echo " _____U___U____________________________________________________________________"
	@echo
	@echo ENVIRONMENT:
	@echo "  OSX 10.12"
	@echo "  CrossPack-AVR gcc version 4.8.1"
	@echo "  sed"
	@echo "  awk"
	@echo "  Yakindu (to modify state machines)"
	@echo
	@echo OBJS: $(addprefix "\n\t", $(C_OBJS)) $(addprefix "\n\t", $(S_OBJS)) $(addprefix "\n\t", $(Y_OBJS))
	@echo
	@echo INCLUDE DIRS: $(addprefix "\n\t", $(INCLUDE_PATHS))
	@echo
	@echo OUTPUTS: $(addprefix "\n\t", $(INFO_OUTPUTS))
	@echo
	@echo TARGETS:
	@echo "  all          - build everything."
	@echo "  clean        - remove build directory ($(BUILD_ROOT))"
	@echo "  size         - print the memory usage for the current binary."
	@echo "  flash        - program an attached device using defaults."
	@echo "  map          - $(PAGER) the memory map produced by the linker."
	@echo "  dump         - $(PAGER) dissassembled binary."
	@echo "  signature    - print the signature of an attached device using defaults."
	@echo "  fuses        - program the normal fuses for an attached device."
	@echo "  enable-dw    - set the DWEN (debug-wire enable) fuse of an attached device."
	@echo "  debug-server - start a gdb server for an attached device. Requires" 
	@echo "                 the DWEN fuse to be set."
	@echo
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

-include $(C_OBJS:.o=.d)
-include $(S_OBJS:.o=.d)
-include $(Y_OBJS:.o=.d)