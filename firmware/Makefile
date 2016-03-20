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
# | RESET
# +----------------------------------------------------------------------------+
CFLAGS 			:=
INCLUDE_PATHS 	:=
SOURCE 			:=
ASSMBLY			:=
LIBS			:=
LIB_PATH		:=

# +----------------------------------------------------------------------------+
# | COMMANDS AND DEFINITIONS
# +----------------------------------------------------------------------------+
MKDIRS			:= mkdir -p
RMDIR			:= rm -rf
PYTHON			:= python
TOUPPER			= $(shell echo $(1) | tr a-z A-Z)
PROGRAM			= openocd
BUILD_SUPPORT	:= build_support

# use `make [target] DEBUG=1` to override environment setting
ifndef DEBUG
ifeq "$(LOCAL_ENV_FLAVOR)" "debug"
DEBUG			:= 1
endif
endif

# include procecessor specific definitions
include $(BUILD_SUPPORT)/boards/$(LOCAL_ENV_BOARD)/board.mk

# +----------------------------------------------------------------------------+
# | INPUTS
# +----------------------------------------------------------------------------+
INCLUDE_PATHS += src \
	src-gen \
	test \

SOURCE			+= src/main.c \

ASSMBLY			+=

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

# See http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/
# for an explaination of this dependency scheme.
DEPFLAGS		= -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)"

POSTCOMPILE 	= mv -f $(patsubst %.o,%.Td,$@) $(patsubst %.o,%.d,$@)

CFLAGS	 		+=  \
					-std=gnu99 \
					-mcpu=$(LOCAL_ENV_CPU) \
					-mthumb \
					-Os \
					-Wall \
					-ffunction-sections -fdata-sections \
					-fno-strict-aliasing \
					-Werror-implicit-function-declaration \
					-Wchar-subscripts -Wcomment -Wformat=2 -Wimplicit-int \
					-Wmain -Wparentheses \
					-Wsequence-point -Wreturn-type -Wswitch -Wtrigraphs -Wunused \
					-Wuninitialized -Wunknown-pragmas -Wfloat-equal -Wundef \
					-Wshadow -Wbad-function-cast -Wwrite-strings \
					-Wsign-compare -Waggregate-return \
					-Wmissing-declarations \
					-Wformat -Wmissing-format-attribute -Wno-deprecated-declarations \
					-Wpacked -Wredundant-decls -Wnested-externs -Wlong-long \
					-Wunreachable-code \
					-Wcast-align \
					-Dprintf=iprintf \
					--param max-inline-insns-single=500 \

ifdef DEBUG
CFLAGS			+= -g \
					-DDEBUG \

endif

CFLAGS			+= $(addprefix -I, $(INCLUDE_PATHS))
CFLAGS			+= $(LOCAL_ENV_CFLAGS)

LDFLAGS			:= $(foreach LIB,$(LIBS),-l$(LIB))
LDFLAGS			+= $(foreach _LIB_PATH,$(LIB_PATH),-L$(_LIB_PATH))
LDFLAGS 		+= -T$(LINKER_SCRIPT) \
					-pipe \
					-Lgcc \
					-L. \
					-mthumb \
					--specs=nano.specs \
					-Wl,-Map=$(BUILD_FOLDER)/$(PROJECT_NAME).map,--cref \
					-Wl,--check-sections \
					-Wl,--gc-sections \
					-Wl,--unresolved-symbols=report-all \
					-Wl,--warn-common \
					-Wl,--warn-section-align \

BINFLAGS		:= -O binary \

# +----------------------------------------------------------------------------+
# | OPEN OCD SETUP
# +----------------------------------------------------------------------------+
SYNTH_CONF		:= $(BUILD_SUPPORT)/synthetic_board.ocd.cfg
BOARD_CONF		:= $(BUILD_FOLDER)/$(LOCAL_ENV_ASF_CPU).ocd.cfg

# +----------------------------------------------------------------------------+
# | RECIPIES
# +----------------------------------------------------------------------------+
$(BIN) : $(ELF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-objcopy $(BINFLAGS) $< $@

$(ELF) : $(OBJS)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-gcc $(LDFLAGS) -o $@ $^

$(BUILD_FOLDER)/%.o : %.s $(BUILD_FOLDER)/%.d
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-as $(DEPFLAGS) $(ASFLAGS) -D__ASSEMBLY__ -c $< -o $@
	$(POSTCOMPILE)

$(BUILD_FOLDER)/%.o : %.c $(BUILD_FOLDER)/%.d
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-gcc $(DEPFLAGS) $(CFLAGS) -c $< -o $@
	$(POSTCOMPILE)

$(BOARD_CONF) : $(SYNTH_CONF)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(PYTHON) -c "import jinja2 ; \
        ocd_defs = {'interface' : '$(LOCAL_ENV_OCD_INTERFACE)', \
            'target': '$(LOCAL_ENV_OCD_TARGET)', \
            'transport': '$(LOCAL_ENV_OCD_TRANSPORT)', \
            'endian': '$(LOCAL_ENV_OCD_ENDIAN)', \
            'chipname': '$(LOCAL_ENV_OCD_CHIPNAME)'} ; \
        config_stream = jinja2.Environment(loader=jinja2.FileSystemLoader(\"$(dir $<)\", followlinks=True), undefined=jinja2.StrictUndefined)\
            .get_template(\"$(notdir $<)\").stream(ocd=ocd_defs)\
            .dump(open(\"$@\", 'w'), errors='strict') ;"

.DELETE_ON_ERROR: ;

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+
.PHONY: all
all: $(BIN)
	# Build all the things!

.PHONY: clean
clean:
	$(RMDIR) $(BUILD_ROOT)

.PHONY: size
size: $(BIN)
	$(GCC_PREFIX)-size --target=binary $<

.PHONY: flash
flash: $(BIN) $(BOARD_CONF)
	$(PROGRAM) \
	-f $(BOARD_CONF) \
	-c "program $< verify reset exit 0x00000000"

# +----------------------------------------------------------------------------+
# | AUTO DEPENDENCIES
# +----------------------------------------------------------------------------+
%.d : ;
.PRECIOUS: %.d

-include $(OBJS:.o=.d)
