################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
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
HSE_SYSCLK_8Mhz.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
HSE_SYSCLK_8Mhz.list \

OBJCOPY_HEX += \
HSE_SYSCLK_8Mhz.hex \

OBJCOPY_BIN += \
HSE_SYSCLK_8Mhz.bin \


# All Target
all: HSE_SYSCLK_8Mhz.elf secondary-outputs

# Tool invocations
HSE_SYSCLK_8Mhz.elf: $(OBJS) $(USER_OBJS) C:\Users\mateu\Documents\Curso\ STM32\MCU2\HSE_SYSCLK_8Mhz\STM32F103C4TX_FLASH.ld
	arm-none-eabi-gcc -o "HSE_SYSCLK_8Mhz.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\mateu\Documents\Curso STM32\MCU2\HSE_SYSCLK_8Mhz\STM32F103C4TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="HSE_SYSCLK_8Mhz.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

HSE_SYSCLK_8Mhz.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "HSE_SYSCLK_8Mhz.list"
	@echo 'Finished building: $@'
	@echo ' '

HSE_SYSCLK_8Mhz.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "HSE_SYSCLK_8Mhz.hex"
	@echo 'Finished building: $@'
	@echo ' '

HSE_SYSCLK_8Mhz.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "HSE_SYSCLK_8Mhz.bin"
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
