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
PLL_SYSCLK.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
PLL_SYSCLK.list \

OBJCOPY_HEX += \
PLL_SYSCLK.hex \

OBJCOPY_BIN += \
PLL_SYSCLK.bin \


# All Target
all: PLL_SYSCLK.elf secondary-outputs

# Tool invocations
PLL_SYSCLK.elf: $(OBJS) $(USER_OBJS) C:\Users\mateu\Documents\Curso\ STM32\MCU2\PLL_SYSCLK\STM32F103T6UX_FLASH.ld
	arm-none-eabi-gcc -o "PLL_SYSCLK.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\mateu\Documents\Curso STM32\MCU2\PLL_SYSCLK\STM32F103T6UX_FLASH.ld" --specs=nosys.specs -Wl,-Map="PLL_SYSCLK.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

PLL_SYSCLK.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "PLL_SYSCLK.list"
	@echo 'Finished building: $@'
	@echo ' '

PLL_SYSCLK.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "PLL_SYSCLK.hex"
	@echo 'Finished building: $@'
	@echo ' '

PLL_SYSCLK.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "PLL_SYSCLK.bin"
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
