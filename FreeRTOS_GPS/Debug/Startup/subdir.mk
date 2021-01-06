################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f100xb.s 

OBJS += \
./Startup/startup_stm32f100xb.o 

S_DEPS += \
./Startup/startup_stm32f100xb.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/startup_stm32f100xb.o: ../Startup/startup_stm32f100xb.s
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -x assembler-with-cpp -MMD -MP -MF"Startup/startup_stm32f100xb.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

