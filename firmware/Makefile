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
PROJECT_NAME 	:= BlindRobot

# +----------------------------------------------------------------------------+
# | COMMANDS AND DEFINITIONS
# +----------------------------------------------------------------------------+
MKDIRS			:= mkdir -p
RMDIR			:= rm -rf
TOUPPER			= $(shell echo $(1) | tr a-z A-Z)

# use `make [target] DEBUG=1` to override environment setting
ifndef DEBUG
ifeq "$(LOCAL_ENV_FLAVOR)" "debug"
DEBUG			:= 1
endif
endif

# +----------------------------------------------------------------------------+
# | INPUTS
# +----------------------------------------------------------------------------+
CMSIS_SYS_PATH	:= $(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/cmsis/$(LOCAL_ENV_ASF_CPU)
LINKER_SCRIPT 	:= $(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/linker_scripts/$(LOCAL_ENV_ASF_CPU)/gcc/$(LOCAL_ENV_ASF_PART)_flash.ld

INCLUDE_PATHS := src \
	src-gen \
	test \
	$(LOCAL_ENV_CMSIS_PATH)/Include \
	$(CMSIS_SYS_PATH)/source \
	$(CMSIS_SYS_PATH)/include \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/preprocessor \
	$(LOCAL_ENV_ASF_PATH)/$(LOCAL_ENV_ASF_FAMILY)/utils/header_files \
	$(LOCAL_ENV_ASF_PATH)/common/utils \

SOURCE			:= $(CMSIS_SYS_PATH)/source/gcc/startup_samd21.c \
					$(CMSIS_SYS_PATH)/source/system_samd21.c \
					src/main.c \

ASSMBLY			:=

# +----------------------------------------------------------------------------+
# | OUTPUTS
# +----------------------------------------------------------------------------+
BUILD_ROOT		:= .build
ifdef DEBUG
BUILD_FOLDER	:= $(BUILD_ROOT)/Debug
else
BUILD_FOLDER	:= $(BUILD_ROOT)/Release
endif

OBJS		    := $(addprefix $(BUILD_FOLDER)/, $(SOURCE:.c=.o)) \
 				   $(addprefix $(BUILD_FOLDER)/, $(ASSMBLY:.s=.o)) \

BIN				:= $(BUILD_FOLDER)/$(PROJECT_NAME).bin
ELF				:= $(BUILD_FOLDER)/$(PROJECT_NAME).elf

# +----------------------------------------------------------------------------+
# | GCC SETUP
# +----------------------------------------------------------------------------+
GCC_PREFIX		:= $(LOCAL_ENV_CPU_TYPE)-$(LOCAL_ENV_BIN)-$(LOCAL_ENV_ABI)

ASFLAGS 		:= -mcpu=$(LOCAL_ENV_CPU) \
					-gsstabs -march=$(LOCAL_ENV_ARCH) \

CFLAGS	 		:= -mcpu=$(LOCAL_ENV_CPU) \
					-std=gnu99 \
					-mthumb \
					-Os \
					-Wall \
					-ffunction-sections \
					-fdata-sections \
					-nostdlib \
					--param max-inline-insns-single=500 \
					-MMD \

ifdef DEBUG
CFLAGS			+= -g \
					-DDEBUG \

endif

CFLAGS			+= $(addprefix -I, $(INCLUDE_PATHS))
CFLAGS			+= -D__$(call TOUPPER,$(LOCAL_ENV_ASF_PART))__
CFLAGS			+= $(LOCAL_ENV_CFLAGS)

LDFLAGS 		:= -T$(LINKER_SCRIPT) \
					-Lgcc \
					-L. \
					-mthumb \
					-Wl,--cref \
					-Wl,--check-sections \
					-Wl,--gc-sections \
					-Wl,--unresolved-symbols=report-all \
					-Wl,--warn-common \
					-Wl,--warn-section-align \

BINFLAGS		:= -O binary \

# +----------------------------------------------------------------------------+
# | RECIPIES
# +----------------------------------------------------------------------------+
$(BIN) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-objcopy $(BINFLAGS) $< $@

$(ELF) : $(OBJS)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-gcc $(LDFLAGS) -o $@ $^

$(BUILD_FOLDER)/%.o : %.s
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-as $(ASFLAGS) -c $< -o $@

$(BUILD_FOLDER)/%.o : %.c
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-gcc $(CFLAGS) -c $< -o $@

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+
.PHONY: clean
clean:
	$(RMDIR) $(BUILD_ROOT)
