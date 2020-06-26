################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/subdir.mk
-include StdPeriph_Driver/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
CURRENT_MEASUREMENT_RUN_MODE.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
CURRENT_MEASUREMENT_RUN_MODE.list \

OBJCOPY_BIN += \
CURRENT_MEASUREMENT_RUN_MODE.bin \


# All Target
all: CURRENT_MEASUREMENT_RUN_MODE.elf secondary-outputs

# Tool invocations
CURRENT_MEASUREMENT_RUN_MODE.elf: $(OBJS) $(USER_OBJS) C:\Users\mateu\Documents\Curso\ STM32\MCU2\CURRENT_MEASUREMENT_RUN_MODE\LinkerScript.ld
	arm-none-eabi-gcc -o "CURRENT_MEASUREMENT_RUN_MODE.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\mateu\Documents\Curso STM32\MCU2\CURRENT_MEASUREMENT_RUN_MODE\LinkerScript.ld" --specs=nosys.specs -Wl,-Map="CURRENT_MEASUREMENT_RUN_MODE.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

CURRENT_MEASUREMENT_RUN_MODE.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "CURRENT_MEASUREMENT_RUN_MODE.list"
	@echo 'Finished building: $@'
	@echo ' '

CURRENT_MEASUREMENT_RUN_MODE.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "CURRENT_MEASUREMENT_RUN_MODE.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
