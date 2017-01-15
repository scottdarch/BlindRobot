
PROJECT_NAME               := blind_motor_controller
PROJECT_BOARD              := HBRIDGEKIT2GO
PROJECT_MCU                := XMC1100_Q024x0064

COMMA                       = ,

CALL_RMDIR                  = rm -rf $(1)
CALL_MOVE                   = mv -f $(1) $(2)
CALL_FIND_ALL_C_FILES       = $(foreach srcdir, $(1), $(wildcard $(srcdir)/*.c))

MACRO_PYTHON                = python
MACRO_MKDIRS               := mkdir -p
MACRO_ENSURE_TARGET_DIRS    = @[ -d "$(dir $@)" ] || $(MACRO_MKDIRS) "$(dir $@)"

DIR_ROOT                   := $(abspath .)
DIR_BUILD                  := build/debug/$(PROJECT_BOARD)

TOOLCHAIN_PREFIX           := arm-none-eabi-
TOOLCHAIN_OBJCPY           := $(TOOLCHAIN_PREFIX)objcopy
TOOLCHAIN_OBJDUMP          := $(TOOLCHAIN_PREFIX)objdump
TOOLCHAIN_SIZE             := $(TOOLCHAIN_PREFIX)size
TOOLCHAIN_CC               := $(TOOLCHAIN_PREFIX)gcc
TOOLCHAIN_OCD              := openocd

PROJECT_OCD_CFG            := hbridge2go.cfg
PROJECT_ASFLAGS            := -mcpu=cortex-m0 \
                              -mthumb \
                              -mapcs \

PROJECT_LIBS               := 

PROJECT_LINKER_SCRIPT      := linker_script.cfg

PROJECT_LDFLAGS            := --specs=nano.specs \
                              -Wl,--gc-sections \

PROJECT_CFLAGS             := -O0 \
                              -D$(PROJECT_MCU) \
                              -DDEBUG \
                              -nostartfiles \
                              -fno-common \
                              -fno-builtin \
                              -ffreestanding \
                              -fdata-sections \
                              -ffunction-sections \
                              -fsigned-char \
                              -mlong-calls \
                              -g3 \
                              -Werror \
                              -Wall \
                              -Wno-unused \
                              -Wextra \
                              -pipe \
                              -fno-strict-aliasing \
                              -std=c11 \

PROJECT_HEX                := $(DIR_BUILD)/$(PROJECT_NAME).hex
PROJECT_ELF                := $(DIR_BUILD)/$(PROJECT_NAME).elf
PROJECT_LSS                := $(DIR_BUILD)/$(PROJECT_NAME).lss
PROJECT_INCLUDE_PATHS      := . \
                              Dave/Generated \
                              Libraries/CMSIS/Include \
                              Libraries/CMSIS/Infineon/XMC1100_series/Include \
                              Libraries/XMCLib/inc \

PROJECT_SOURCE             := Startup/startup_XMC1100.S \
                              Startup/system_XMC1100.c \
                              Dave/Generated/Dave.c \
                              main.c \

PROJECT_S                  := $(filter %.S,$(PROJECT_SOURCE))
PROJECT_C                  := $(filter %.c,$(PROJECT_SOURCE))
PROJECT_OBJECTS            := $(addprefix $(DIR_BUILD)/,$(PROJECT_S:.S=.o)) \
                              $(addprefix $(DIR_BUILD)/,$(PROJECT_C:.c=.o)) \

.PHONY : all clean info disassemble size program console

all : $(PROJECT_HEX) ;

clean : ;
	$(call CALL_RMDIR,$(DIR_BUILD))

info : 
	@echo PROJECT_OBJECTS = $(addprefix "\n\t",$(PROJECT_OBJECTS))
	@echo PROJECT_S = $(addprefix "\n\t",$(filter %.S,$(PROJECT_S)))
	@echo PROJECT_C = $(addprefix "\n\t",$(filter %.c,$(PROJECT_C)))

size : $(PROJECT_ELF)
	$(TOOLCHAIN_SIZE) $<

disassemble : $(PROJECT_LSS)
	@less $<

program : $(PROJECT_OCD_CFG) $(PROJECT_ELF)
	$(TOOLCHAIN_OCD) -f $< -c "program $(filter %.elf,$^) verify reset exit"

console :
	$(MACRO_PYTHON) -m serial.tools.miniterm /dev/tty.usbmodem1411 115200

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

$(addprefix $(DIR_BUILD)/,$(PROJECT_C:.c=.o)) : $(DIR_BUILD)/%.o : %.c $(DIR_BUILD)/%.d
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_CC) -c \
                    $(PROJECT_ASFLAGS) \
                    -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)" \
                    $(PROJECT_CFLAGS) \
                    $(addprefix -I,$(PROJECT_INCLUDE_PATHS)) \
                    $< \
                    -o $@
	$(call CALL_MOVE, $(patsubst %.o,%.Td,$@), $(patsubst %.o,%.d,$@))

$(addprefix $(DIR_BUILD)/,$(PROJECT_S:.S=.o)) : $(DIR_BUILD)/%.o : %.S $(DIR_BUILD)/%.d
	$(MACRO_ENSURE_TARGET_DIRS)
	$(TOOLCHAIN_CC) -c \
                    $(PROJECT_ASFLAGS) \
                    -MT $@ -MMD -MP -MF "$(patsubst %.o,%.Td,$@)" \
                    $(PROJECT_CFLAGS) \
                    $(addprefix -I,$(PROJECT_INCLUDE_PATHS)) \
                    $< \
                    -o $@
	$(call CALL_MOVE, $(patsubst %.o,%.Td,$@), $(patsubst %.o,%.d,$@))

%d : ;

.PRECIOUS: %.d

-include $(PROJECT_OBJECTS:.o=.d)
