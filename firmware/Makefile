
PROJECT_NAME 	:= BlindRobot
ASFLAGS 		:= -mcpu=$(LOCAL_ENV_CPU) -gsstabs -march=$(LOCAL_ENV_ARCH)
CFLAGS	 		:= -mcpu=$(LOCAL_ENV_CPU) \
					-mthumb \
					-c -g -Os -Wall \
					-ffunction-sections \
					-fdata-sections \
					-nostdlib \
					--param max-inline-insns-single=500 \
					-MMD \

LDFLAGS 		:= -T$(LOCAL_ENV_CPU).ld -Lgcc -L.
BUILD_FOLDER	:= Debug
SOURCE			:= src/main.c
ASSMBLY			:=
OBJS		    := $(addprefix $(BUILD_FOLDER)/, $(SOURCE:.c=.o)) \
 				   $(addprefix $(BUILD_FOLDER)/, $(ASSMBLY:.s=.o)) \

MKDIRS			:= mkdir -p
RMDIR			:= rm -rf

ifeq "$(LOCAL_ENV_BIN)" "none"
	BIN_EXT		:= bin
else
	BIN_EXT		:= $(LOCAL_ENV_BIN)
endif

GCC_PREFIX		:= $(LOCAL_ENV_CPU_TYPE)-$(LOCAL_ENV_BIN)-$(LOCAL_ENV_ABI)
BIN				:= $(BUILD_FOLDER)/$(PROJECT_NAME).$(BIN_EXT)

INCLUDE_PATHS := src \
	src-gen \
	test \

$(BIN) : $(OBJS)
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-gcc $(LDFLAGS) -o $@ $^

$(BUILD_FOLDER)/%.o : %.s
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-as $(ASFLAGS) $< -o $@

$(BUILD_FOLDER)/%.o : %.c
	@[ -d $(dir $@) ] || $(MKDIRS) $(dir $@)
	$(GCC_PREFIX)-gcc $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	$(RMDIR) $(BUILD_FOLDER)
