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
BOARD_OCD                := atmel_$(BOARD)
BOARD_CPU_ARCH           := arm-none-eabi
BOARD_GCC_PREFIX         := $(BOARD_CPU_ARCH)-
BOARD_FAMILY             := sam0
BOARD_CPU                := samc21
BOARD_CPU_PART           := j18a
BOARD_ARM_CPU            := cortex-m0plus
CFLAGS                   += -D__SAMC21J18A__ \
                            -DBOARD=SAMC21_XPLAINED_PRO \
                            -DWDT_CALLBACK_MODE=false \
                            -DI2C_MASTER_CALLBACK_MODE=false \
                            -DUSART_CALLBACK_MODE=false \
                            -DDARM_MATH_CM0PLUS=true \

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
                   asf/$(BOARD_FAMILY)/drivers/sercom \
                   asf/$(BOARD_FAMILY)/drivers/sercom/i2c \
                   
SOURCE          += asf/$(BOARD_FAMILY)/utils/cmsis/$(BOARD_CPU)/source/gcc/startup_$(BOARD_CPU).c \
                   asf/$(BOARD_FAMILY)/utils/cmsis/$(BOARD_CPU)/source/system_$(BOARD_CPU).c \
                   asf/$(BOARD_FAMILY)/boards/$(BOARD)/board_init.c \
                   asf/$(BOARD_FAMILY)/drivers/port/port.c \
                   asf/$(BOARD_FAMILY)/drivers/system/system.c \
                   asf/$(BOARD_FAMILY)/drivers/system/interrupt/system_interrupt.c \
                   asf/$(BOARD_FAMILY)/drivers/system/pinmux/pinmux.c \
                   asf/$(BOARD_FAMILY)/drivers/system/clock/clock_samc20_c21/clock.c \
                   asf/$(BOARD_FAMILY)/drivers/system/clock/clock_samc20_c21/gclk.c \
                   asf/common/utils/interrupt/interrupt_sam_nvic.c \
                   asf/$(BOARD_FAMILY)/drivers/sercom/i2c/i2c_$(BOARD_FAMILY)/i2c_master.c \
                   asf/$(BOARD_FAMILY)/drivers/sercom/sercom.c \
                   asf/$(BOARD_FAMILY)/utils/syscalls/gcc/syscalls.c \

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
EEPROM          := $(BUILD_FOLDER)/$(PROJECT_NAME).eep
ELF             := $(BUILD_FOLDER)/$(PROJECT_NAME).elf
INFO_OUTPUTS    := $(BIN) $(HEX)
MAP_FILE        := $(BUILD_FOLDER)/$(PROJECT_NAME).map
LISTING_FILE    := $(BUILD_FOLDER)/$(PROJECT_NAME).lss

# +----------------------------------------------------------------------------+
# | TOOLCHAIN
# +----------------------------------------------------------------------------+

ASFLAGS         := -Wa,-g \
                   -Wa,-gdwarf2 \

DEPFLAGS         = -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)"

POSTCOMPILE      = mv -f $(patsubst %.o,%.Td,$@) $(patsubst %.o,%.d,$@)

CFLAGS          +=  \
                    -std=gnu99 \
                    -mthumb \
                    -mlong-calls\
                    --specs=nano.specs \
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

# extra warnings/errors
CFLAGS           += -Werror-implicit-function-declaration \
                    -Wstrict-prototypes \
                    -Wmissing-prototypes \
                    -Wpointer-arith \
                    -Wchar-subscripts \
                    -Wcomment \
                    -Wformat=2 \
                    -Wimplicit-int \
                    -Wmain \
                    -Wparentheses \
                    -Wsequence-point \
                    -Wreturn-type \
                    -Wswitch \
                    -Wtrigraphs \
                    -Wunused \
                    -Wuninitialized \
                    -Wunknown-pragmas \
                    -Wfloat-equal \
                    -Wundef \
                    -Wshadow \
                    -Wbad-function-cast \
                    -Wwrite-strings \
                    -Wsign-compare \
                    -Waggregate-return \
                    -Wmissing-declarations \
                    -Wformat \
                    -Wmissing-format-attribute \
                    -Wno-deprecated-declarations \
                    -Wredundant-decls \
                    -Wnested-externs \
                    -Wlong-long \
                    -Wunreachable-code \
                    -Wcast-align \
                    --param max-inline-insns-single=500 \

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
                   -L"asf/thirdparty/CMSIS/Lib/GCC" \
                   -Wl,--start-group \
                       -larm_cortexM0l_math \
                       -lm  \
                   -Wl,--end-group \
                   -Wl,--gc-sections \
                   -Wl,--unresolved-symbols=report-all \
                   -Wl,--warn-common \
                   -Wl,--warn-section-align \
                   -Wl,--entry=Reset_Handler \
                   -Wl,-Map=$(MAP_FILE),--cref\
                   -Wl,-T$(LINKER_SCRIPT) \

GCCPREFIX       := $(strip $(shell $(BOARD_GCC_PREFIX)gcc -v 2>&1 | awk '{FS="--|="; if ( $$2 ~ /prefix/ ) print $$3 }'))
GCCHEADERS      := $(GCCPREFIX)/$(BOARD_CPU_ARCH)/include

# +----------------------------------------------------------------------------+
# | RECIPIES
# +----------------------------------------------------------------------------+
$(HEX) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature $< $@

$(EEPROM) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)objcopy -j .eeprom --set-section-flags=.eeprom=alloc,load \
        --change-section-lma .eeprom=0 \
        --no-change-warnings \
        -O binary  $< $@

$(ELF) : $(OBJS) $(LINKER_SCRIPT)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc -o $@ $(filter %.o,$^) $(CFLAGS) $(LDFLAGS)

$(BUILD_FOLDER)/%.o : %.S $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(DEPFLAGS) $(CFLAGS) $(ASFLAGS) -D__ASSEMBLY__ -c $< -o $@
	$(POSTCOMPILE)

$(BUILD_FOLDER)/%.o : %.c $(BUILD_FOLDER)/%.d $(MAKEFILE_LIST)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(BOARD_GCC_PREFIX)gcc $(DEPFLAGS) $(CFLAGS) -c $< -o $@
	$(POSTCOMPILE)

$(MAP_FILE) : $(ELF)

$(LISTING_FILE) : $(ELF)
	$(BOARD_GCC_PREFIX)objdump -h -S $< > $@

.DELETE_ON_ERROR: ;

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+
GLOBAL_PHONIES := all clean size flash info map dump

.PHONY: $(GLOBAL_PHONEIS)
all: $(HEX) $(EEPROM) $(LISTING_FILE)
	# Build all the things!

clean:
	$(RMDIR) $(BUILD_ROOT)

size: $(ELF)
	$(BOARD_GCC_PREFIX)size $<

flash: $(ELF)
	openocd -f board/$(BOARD_OCD).cfg -c "program $< verify reset exit"

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
