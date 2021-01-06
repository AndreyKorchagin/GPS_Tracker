################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/src/main.c 

OBJS += \
./Core/src/main.o 

C_DEPS += \
./Core/src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Core/src/main.o: ../Core/src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

