################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
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
ADC_Sensor_IT.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
ADC_Sensor_IT.list \

OBJCOPY_HEX += \
ADC_Sensor_IT.hex \

OBJCOPY_BIN += \
ADC_Sensor_IT.bin \


# All Target
all: ADC_Sensor_IT.elf secondary-outputs

# Tool invocations
ADC_Sensor_IT.elf: $(OBJS) $(USER_OBJS) C:\Users\mateu\Documents\Curso\ STM32\MCU2\ADC_Sensor_IT\STM32F401RETX_FLASH.ld
	arm-none-eabi-gcc -o "ADC_Sensor_IT.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\mateu\Documents\Curso STM32\MCU2\ADC_Sensor_IT\STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="ADC_Sensor_IT.map" -Wl,--gc-sections -static -u _printf_float --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

ADC_Sensor_IT.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "ADC_Sensor_IT.list"
	@echo 'Finished building: $@'
	@echo ' '

ADC_Sensor_IT.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "ADC_Sensor_IT.hex"
	@echo 'Finished building: $@'
	@echo ' '

ADC_Sensor_IT.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "ADC_Sensor_IT.bin"
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
