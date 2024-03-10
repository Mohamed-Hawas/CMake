# Set the C compiler and related tools for ARM Cortex-M4
set(CMAKE_C_COMPILER arm-none-eabi-gcc -nostdlib)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
set(CMAKE_OBJCOPY arm-none-eabi-objcopy)
set(CMAKE_SIZE arm-none-eabi-size)
set(CMAKE_OBJDUMP arm-none-eabi-objdump)

# Enable C and ASM languages
enable_language(C ASM)  

# Set CPU parameters for ARM Cortex-M4
set(CPU_PARAMETERS
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=hard)

# Compiler flags
set(FLAGS
    -fdata-sections 
    -ffunction-sections 
    -nostdlib 
    --specs=nano.specs 
    -Wl,--gc-sections)

# Linker flags
set(LINKER_FLAGS
    --specs=nosys.specs
    -Wl,--start-group
    -lc
    -lm
    -lstdc++
    -Wl,--end-group
    -Wl,--print-memory-usage)
