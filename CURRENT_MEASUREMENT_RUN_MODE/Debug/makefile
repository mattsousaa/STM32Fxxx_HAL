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
Current_Measurement_Run_Mode.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Current_Measurement_Run_Mode.list \

OBJCOPY_HEX += \
Current_Measurement_Run_Mode.hex \

OBJCOPY_BIN += \
Current_Measurement_Run_Mode.bin \


# All Target
all: Current_Measurement_Run_Mode.elf secondary-outputs

# Tool invocations
Current_Measurement_Run_Mode.elf: $(OBJS) $(USER_OBJS) C:\Users\mateu\Documents\Curso\ STM32\MCU2\Current_Measurement_Run_Mode\LinkerScript.ld
	arm-none-eabi-gcc -o "Current_Measurement_Run_Mode.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\mateu\Documents\Curso STM32\MCU2\Current_Measurement_Run_Mode\LinkerScript.ld" --specs=nosys.specs -Wl,-Map="Current_Measurement_Run_Mode.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Current_Measurement_Run_Mode.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Current_Measurement_Run_Mode.list"
	@echo 'Finished building: $@'
	@echo ' '

Current_Measurement_Run_Mode.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "Current_Measurement_Run_Mode.hex"
	@echo 'Finished building: $@'
	@echo ' '

Current_Measurement_Run_Mode.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Current_Measurement_Run_Mode.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
