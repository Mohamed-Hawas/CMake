# Custom target to flash the binary to the microcontroller using st-flash
add_custom_target(flash   
    COMMAND st-flash write ${CMAKE_BINARY_DIR}/${EXCUTABLE}.bin 0x8000000
    DEPENDS binary  
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}  
    COMMENT "Flashing ${EXCUTABLE}.bin...")

# Custom target to erase the microcontroller's flash memory using st-flash
add_custom_target(erase   
    COMMAND st-flash erase
    DEPENDS binary 
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}  
    COMMENT "Erasing...")

# Custom target to check the connected STM32 microcontroller information using st-info
add_custom_target(check-stlink   
    COMMAND st-info --probe
    DEPENDS binary  
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}  
    COMMENT "Checking STM32 information...")
