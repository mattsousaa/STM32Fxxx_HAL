################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/core_list_join.c \
../src/core_main.c \
../src/core_matrix.c \
../src/core_portme.c \
../src/core_state.c \
../src/core_util.c \
../src/main.c \
../src/pwr_modes.c \
../src/stm32f4xx_it.c \
../src/syscalls.c \
../src/system_stm32f4xx.c 

OBJS += \
./src/core_list_join.o \
./src/core_main.o \
./src/core_matrix.o \
./src/core_portme.o \
./src/core_state.o \
./src/core_util.o \
./src/main.o \
./src/pwr_modes.o \
./src/stm32f4xx_it.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/core_list_join.d \
./src/core_main.d \
./src/core_matrix.d \
./src/core_portme.d \
./src/core_state.d \
./src/core_util.d \
./src/main.d \
./src/pwr_modes.d \
./src/stm32f4xx_it.d \
./src/syscalls.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/core_list_join.o: ../src/core_list_join.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/core_list_join.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/core_main.o: ../src/core_main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/core_main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/core_matrix.o: ../src/core_matrix.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/core_matrix.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/core_portme.o: ../src/core_portme.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/core_portme.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/core_state.o: ../src/core_state.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/core_state.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/core_util.o: ../src/core_util.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/core_util.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/main.o: ../src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/pwr_modes.o: ../src/pwr_modes.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/pwr_modes.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/stm32f4xx_it.o: ../src/stm32f4xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/syscalls.o: ../src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/system_stm32f4xx.o: ../src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -c -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/StdPeriph_Driver/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/inc" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/device" -I"C:/Users/mateu/Documents/Curso STM32/MCU2/CURRENT_MEASUREMENT_RUN_MODE/CMSIS/core" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

