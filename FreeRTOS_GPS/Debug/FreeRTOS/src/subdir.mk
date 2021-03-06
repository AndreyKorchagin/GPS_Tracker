################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/src/croutine.c \
../FreeRTOS/src/event_groups.c \
../FreeRTOS/src/heap_1.c \
../FreeRTOS/src/list.c \
../FreeRTOS/src/port.c \
../FreeRTOS/src/queue.c \
../FreeRTOS/src/tasks.c \
../FreeRTOS/src/timers.c 

OBJS += \
./FreeRTOS/src/croutine.o \
./FreeRTOS/src/event_groups.o \
./FreeRTOS/src/heap_1.o \
./FreeRTOS/src/list.o \
./FreeRTOS/src/port.o \
./FreeRTOS/src/queue.o \
./FreeRTOS/src/tasks.o \
./FreeRTOS/src/timers.o 

C_DEPS += \
./FreeRTOS/src/croutine.d \
./FreeRTOS/src/event_groups.d \
./FreeRTOS/src/heap_1.d \
./FreeRTOS/src/list.d \
./FreeRTOS/src/port.d \
./FreeRTOS/src/queue.d \
./FreeRTOS/src/tasks.d \
./FreeRTOS/src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/src/croutine.o: ../FreeRTOS/src/croutine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/croutine.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/event_groups.o: ../FreeRTOS/src/event_groups.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/event_groups.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/heap_1.o: ../FreeRTOS/src/heap_1.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/heap_1.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/list.o: ../FreeRTOS/src/list.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/list.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/port.o: ../FreeRTOS/src/port.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/port.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/queue.o: ../FreeRTOS/src/queue.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/queue.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/tasks.o: ../FreeRTOS/src/tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/tasks.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS/src/timers.o: ../FreeRTOS/src/timers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -c -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/CMSIS/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/Core/inc" -I"/Users/andreykorchagin/Desktop/gps/FreeRTOS_GPS/FreeRTOS/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"FreeRTOS/src/timers.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

