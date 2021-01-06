################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/src/system_stm32f1xx.c 

OBJS += \
./CMSIS/src/system_stm32f1xx.o 

C_DEPS += \
./CMSIS/src/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/src/system_stm32f1xx.o: ../CMSIS/src/system_stm32f1xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"CMSIS/src/system_stm32f1xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

