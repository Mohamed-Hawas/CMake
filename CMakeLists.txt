# Set the minimum required version of CMake
cmake_minimum_required(VERSION 3.16)

# Include the toolchain configuration
include(toolchain.cmake)

# Set linker script and startup script locations
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/startup/linker.ld)
set(STARTUP_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/startup/startup.s)

# Project definition
project(STM32F401xC)

# Define source directory
set(Src "${CMAKE_CURRENT_SOURCE_DIR}/Src/")

# Specify project include directories using the 'Src' variable
set(PROJECT_INCLUDES
    ${Src}
    ${Src}LIB
    ${Src}APP/Inc
    ${Src}HCOMPASS
    ${Src}HLCD
    ${Src}HMOTOR
    ${Src}HERVO
    ${Src}HULTRA_SONIC
    ${Src}MCAL/MGPIO
    ${Src}MCAL/MRCC
    ${Src}MCAL/I2C
    ${Src}MCAL/MEXTI
    ${Src}MCAL/MIWDT
    ${Src}MCAL/MNVIC
    ${Src}MCAL/MSPI
    ${Src}MCAL/MSTK
    ${Src}MCAL/MTIMER
    ${Src}MCAL/MUART)


# Collect source files""anyfile.c" using a glob pattern
file(GLOB_RECURSE PROJECT_SRCS 
    CONFIGURE_DEPENDS 
    ${Src}*.c ) 
    
# Extract the folder name to use as the executable name
get_filename_component(FOLDER_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
set(EXCUTABLE ${FOLDER_NAME})

# Add the executable target
add_executable(${EXCUTABLE} 
    ${PROJECT_SRCS} 
    ${STARTUP_SCRIPT})

# Add include directories to the executable target
target_include_directories(${EXCUTABLE} 
    SYSTEM PRIVATE
    ${PROJECT_INCLUDES})

# Set compiler flags for the project
target_compile_options(${EXCUTABLE} PRIVATE
    ${CPU_PARAMETERS})
   
# Set linker options for the project
target_link_options(${EXCUTABLE} PRIVATE
    -T${LINKER_SCRIPT}
    ${CPU_PARAMETERS} ${LINKER_FLAGS})

# Link additional libraries (e.g., 'm' library)
target_link_libraries(${EXCUTABLE} m)

# Add custom target to generate binary file from the executable
add_custom_target(binary ALL
    DEPENDS ${EXCUTABLE}
    COMMAND arm-none-eabi-objcopy -O binary ${EXCUTABLE} ${EXCUTABLE}.bin)

# Include additional custom targets from st_link.cmake
include(st-link.cmake)
