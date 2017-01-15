#  .            ``
#      <X X>  /
# ``---  |  -
#     [     ]   A BlindRobot Project (by 32bits.io)
#______U___U____________________________________________________________________
#

PROJECT_NAME               := blind_motor_controller
PROJECT_BOARD              := HBRIDGEKIT2GO
PROJECT_MCU                := XMC1100_Q024x0064
PROJECT_MCU_JLINK          := XMC1100-0064

COMMA                       = ,

CALL_RMDIR                  = rm -rf $(1)
CALL_MOVE                   = mv -f $(1) $(2)
CALL_FIND_ALL_C_FILES       = $(foreach srcdir, $(1), $(wildcard $(srcdir)/*.c))

MACRO_PYTHON                = python
MACRO_SED                   = sed
MACRO_MKDIRS               := mkdir -p
MACRO_ENSURE_TARGET_DIRS    = @[ -d "$(dir $@)" ] || $(MACRO_MKDIRS) "$(dir $@)"

DIR_ROOT                   := $(abspath .)
DIR_BUILD                  := build/debug/$(PROJECT_BOARD)

# +----------------------------------------------------------------------------+
# | TERMINAL
# +----------------------------------------------------------------------------+
TERM_COLOR_BLACK           := 0
TERM_COLOR_RED             := 1
TERM_COLOR_GREEN           := 2
TERM_COLOR_YELLOW          := 3
TERM_COLOR_BLUE            := 4
TERM_COLOR_MAGENTA         := 5
TERM_COLOR_CYAN            := 6
TERM_COLOR_WHITE           := 7
#
# tput help: http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x405.html
# terminal help: man terminfo
# props: http://eli.thegreenplace.net/2013/12/18/makefile-functions-and-color-output/
#
define colorecho
    @tput setaf $(2)
    @echo $(1)
    @tput sgr0
endef

# +----------------------------------------------------------------------------+
# | TOOLCHAIN
# +----------------------------------------------------------------------------+

TOOLCHAIN_PREFIX           := arm-none-eabi-
TOOLCHAIN_OBJCPY           := $(TOOLCHAIN_PREFIX)objcopy
TOOLCHAIN_OBJDUMP          := $(TOOLCHAIN_PREFIX)objdump
TOOLCHAIN_SIZE             := $(TOOLCHAIN_PREFIX)size
TOOLCHAIN_CC               := $(TOOLCHAIN_PREFIX)gcc

TEMPLATE_SED_JLINK_FLASH   := flash.jlink
PROJECT_ASFLAGS            := -mcpu=cortex-m0 \
                              -mthumb \
                              -mapcs-frame \

PROJECT_LIBS               := 

PROJECT_LINKER_SCRIPT      := linker_script.ld

PROJECT_LDFLAGS            := --specs=nano.specs \
                              -Wl,--gc-sections \

PROJECT_CFLAGS             := -O0 \
                              -D$(PROJECT_MCU) \
                              -g \
                              -gdwarf-2 \
                              -Werror \
                              -Wall \
                              -Wno-unused \
                              -Wextra \
                              -pipe \
                              -fmessage-length=0 \
                              -std=c11 \

# Flags I added, not in the original DAVE makefiles
PROJECT_CFLAGS             += -DDEBUG \
                              -fsigned-char \
                              -nostartfiles \
                              -fno-common \
                              -fno-builtin \
                              -ffreestanding \
                              -fdata-sections \
                              -ffunction-sections \
                              -fno-strict-aliasing \

CALL_JLINK_FLASH            = JLinkExe -device $(1) -if SWD -speed 4000 -autoconnect 1 -CommanderScript $(2)

# +----------------------------------------------------------------------------+
# | TARGETS
# +----------------------------------------------------------------------------+

PROJECT_HEX                := $(DIR_BUILD)/$(PROJECT_NAME).hex
PROJECT_ELF                := $(DIR_BUILD)/$(PROJECT_NAME).elf
PROJECT_LSS                := $(DIR_BUILD)/$(PROJECT_NAME).lss

# +----------------------------------------------------------------------------+
# | SOURCE AND INCLUDES
# +----------------------------------------------------------------------------+

#
# Populate includes and source variables for all source and headers
# at a given location (not recursive).
# param 1    The base path.
# param 2    (optional) If supplied, the subdir for includes.
# param 3    (optional) If supplied, the subdir for source.
#
# examples:
#
#    $(eval $(call app_project_source_and_include,Libraries/mylib))
#    $(eval $(call app_project_source_and_include,Libraries/myotherlib,include,src))
#
define app_project_source_and_include
	
	ifeq (,$(2))
    	PROJECT_INCLUDE_PATHS += $(1)
    else
    	PROJECT_INCLUDE_PATHS += $(1)/$(2)
    endif
    ifeq (,$(3))
    	PROJECT_SOURCE += $$(wildcard $(1)/*.c)
    	PROJECT_SOURCE += $$(wildcard $(1)/*.cpp)
    	PROJECT_SOURCE += $$(wildcard $(1)/*.S)
    else
    	PROJECT_SOURCE += $$(wildcard $(1)/$(3)/*.c)
    	PROJECT_SOURCE += $$(wildcard $(1)/$(3)/*.cpp)
    	PROJECT_SOURCE += $$(wildcard $(1)/$(3)/*.S)
    endif

endef

PROJECT_INCLUDE_PATHS      := . \
                              Libraries/CMSIS/Include \
                              Libraries/CMSIS/Infineon/XMC1100_series/Include \

PROJECT_SOURCE             := Startup/startup_XMC1100.S \
                              Startup/system_XMC1100.c \
                              Libraries/Newlib/syscalls.c \
                              main.c \

$(eval $(call app_project_source_and_include,Dave/Generated))
$(eval $(call app_project_source_and_include,Dave/Generated/CLOCK_XMC1))
$(eval $(call app_project_source_and_include,Dave/Generated/CPU_CTRL_XMC1))
$(eval $(call app_project_source_and_include,Dave/Generated/DIGITAL_IO))
$(eval $(call app_project_source_and_include,Dave/Generated/GLOBAL_CCU4))
$(eval $(call app_project_source_and_include,Dave/Generated/PWM))
$(eval $(call app_project_source_and_include,Libraries/XMCLib,inc,src))

PROJECT_S                  := $(filter %.S,$(PROJECT_SOURCE))
PROJECT_C                  := $(filter %.c,$(PROJECT_SOURCE))
PROJECT_CPP                := $(filter %.cpp,$(PROJECT_SOURCE))

# +----------------------------------------------------------------------------+
# | OBJECTS
# +----------------------------------------------------------------------------+

PROJECT_OBJECTS            := $(addprefix $(DIR_BUILD)/,$(PROJECT_S:.S=.o)) \
                              $(addprefix $(DIR_BUILD)/,$(PROJECT_C:.c=.o)) \
                              $(addprefix $(DIR_BUILD)/,$(PROJECT_CPP:.cpp=.o)) \

PROJECT_OBJ_LSS            := $(addsuffix .lss,$(PROJECT_OBJECTS))

# +----------------------------------------------------------------------------+
# | RULES
# +----------------------------------------------------------------------------+

PROJECT_PHONIES := all clean info info-more disassemble size program console

.PHONY : $(PROJECT_PHONIES)

all : $(PROJECT_HEX) ;

clean :
	$(call CALL_RMDIR,$(DIR_BUILD))

info :
	$(call colorecho,"PHONY",$(TERM_COLOR_YELLOW)) 
	@echo $(addprefix "\n\t",$(PROJECT_PHONIES)) 
	@echo

info-more : info
	$(call colorecho,"PROJECT_OBJECTS",$(TERM_COLOR_YELLOW))
	@echo $(addprefix "\n\t",$(PROJECT_OBJECTS))
	@echo
	$(call colorecho,"PROJECT_S",$(TERM_COLOR_YELLOW))
	@echo $(addprefix "\n\t",$(filter %.S,$(PROJECT_S)))
	@echo
	$(call colorecho,"PROJECT_C",$(TERM_COLOR_YELLOW))
	@echo $(addprefix "\n\t",$(filter %.c,$(PROJECT_C)))
	@echo
	$(call colorecho,"PROJECT_OBJ_LSS",$(TERM_COLOR_YELLOW))
	@echo $(addprefix "\n\t",$(PROJECT_OBJ_LSS))
	@echo

size : $(PROJECT_ELF)
	$(TOOLCHAIN_SIZE) -x -B $<

disassemble : $(PROJECT_LSS)
	@less $<

program : $(DIR_BUILD)/$(TEMPLATE_SED_JLINK_FLASH)
	$(call CALL_JLINK_FLASH, $(PROJECT_MCU_JLINK), $<)

console :
	$(MACRO_PYTHON) -m serial.tools.miniterm /dev/tty.usbmodem1411 115200

$(DIR_BUILD)/$(TEMPLATE_SED_JLINK_FLASH) : $(TEMPLATE_SED_JLINK_FLASH) $(PROJECT_HEX)
	$(MACRO_SED) 's/\%BINARY/$(subst /,\/,$(filter %.hex,$^))/' <$< > $@

$(PROJECT_LSS) : $(PROJECT_ELF)
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_OBJDUMP) -h -S $< > $@

$(PROJECT_HEX) : $(PROJECT_ELF)
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_OBJCPY) -O ihex -R .eeprom -R .fuse -R .lock -R .signature $< $@

$(PROJECT_ELF) : $(PROJECT_OBJECTS) $(PROJECT_LINKER_SCRIPT)
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_CC) $(PROJECT_ASFLAGS) \
                    $(PROJECT_CFLAGS) \
                    $(PROJECT_LDFLAGS) \
                    -Wl,-Map="$(basename $@).map"\
                    -Wl,--cref \
                    $(addprefix -T,$(filter-out %.a %.o, $^)) \
                    $(filter %.o %.a, $^) -o $@ \
                    $(addprefix -Wl$(COMMA)-l,$(PROJECT_LIBS))

$(addprefix $(DIR_BUILD)/,$(PROJECT_C:.c=.o)) : $(DIR_BUILD)/%.o : %.c $(DIR_BUILD)/%.d $(MAKEFILE_LIST)
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_CC) -c \
                    $(PROJECT_ASFLAGS) \
                    -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)" \
                    -Wa,-adhlns="$@.lss" \
                    $(PROJECT_CFLAGS) \
                    $(addprefix -I,$(PROJECT_INCLUDE_PATHS)) \
                    $< \
                    -o $@
	$(call CALL_MOVE, $(patsubst %.o,%.Td,$@), $(patsubst %.o,%.d,$@))

$(addprefix $(DIR_BUILD)/,$(PROJECT_S:.S=.o)) : $(DIR_BUILD)/%.o : %.S $(DIR_BUILD)/%.d $(MAKEFILE_LIST)
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_CC) -c \
                    $(PROJECT_ASFLAGS) \
                    -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)" \
                    -Wa,-adhlns="$@.lss" \
                    $(PROJECT_CFLAGS) \
                    $(addprefix -I,$(PROJECT_INCLUDE_PATHS)) \
                    $< \
                    -o $@
	$(call CALL_MOVE, $(patsubst %.o,%.Td,$@), $(patsubst %.o,%.d,$@))

$(DIR_BUILD)/%.o.lss : $(DIR_BUILD)/%.o
	@echo $@

# +----------------------------------------------------------------------------+
# | AUTO DEPS
# +----------------------------------------------------------------------------+

%d : ;

.PRECIOUS: %.d

-include $(PROJECT_OBJECTS:.o=.d)
