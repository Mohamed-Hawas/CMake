#include "MRCC_Int.h"
#include "MGPIO_int.h"

int main(void) {
    // Initialize the Reset and Clock Control module
    MRCC_vInit();

    // Enable the clock for GPIOC peripheral
    MRCC_vEnableClock(GPIOC_EN);

    //****************************test*******************************
    // Set pin 13 of port C as output
    MGPIO_vSetPinMode(PORTC, PIN13, OUTPUT);

    // Set the initial value of pin 13 to LOW
    MGPIO_vSetPinValue(PORTC, PIN13, LOW);
    //***************************************************************

    // Infinite loop to keep the program running
    while (1) {
    }
}
