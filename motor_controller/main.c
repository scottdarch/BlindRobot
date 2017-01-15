/*
 * main.c
 *
 *  Created on: 2015 Nov 05 09:11:24
 *  Author: schwarzg
 */

/***************************************************************************
 *  H-Bridge Kit 2Go - Simple DC Motor Control Demo
 *
 *  Drives a DC motor with 1kHz PWM
 *
 *  The PWM duty cycle is gradually increased in steps of 1% up to 100%
 *  and then decreased again back to 0% .
 *
 *  After each cycle of increasing and decreasing the rotating direction
 *  of the motor is changed (DIR pin of IFX9201 is toggled)
 *
 ***************************************************************************
 *
 * forward
 *
 *    ^ motor speed
 *    |
 *    |   /\            /\
 *    |  /  \          /  \
 *    | /    \        /    \
 * 0 -|/------\------/--------->
 *    |        \    /         t
 *    |         \  /
 *    |          \/
 *
 * reverse
 *
 ***************************************************************************
 *  Revision 1.0 as of 2015-11-06
 **************************************************************************/

#include <DAVE.h> //Declarations from DAVE Code Generation (includes SFR declaration)

#define TICKS_PER_SECOND 100UL

bool dir = 0;
bool inc = 1;
uint32_t duty = 0;

int main(void)
{
    DAVE_STATUS_t status;

    status = DAVE_Init(); /* Initialization of DAVE APPs  */

    DIGITAL_IO_SetOutputHigh(&DIS);
    DIGITAL_IO_SetOutputLow(&DIS);

    while (1U) {
        uint32_t i = 0;

        if (inc) {
            // Increment the PWM duty cycle by 1%
            duty += 100;

            // Set PWM duty cycle
            PWM_SetDutyCycle(&PWM, duty);

            // Once the duty cycle has reached 100% change flag to decrement
            if (duty >= 10000) {
                inc = 0;
            }
        } else // decrement
        {
            // Decrement the PWM duty cycle by 1%
            duty -= 100;

            // Set PWM duty cycle
            PWM_SetDutyCycle(&PWM, duty);

            // Once the duty has reached 0% change flag to increment
            // and change the motor turning direction (toggle DIR pin)
            if (duty < 100) {
                inc = 1;

                if (dir == 1) {
                    // change direction --> set DIR pin low
                    dir = 0;
                    DIGITAL_IO_SetOutputLow(&DIR);
                    DIGITAL_IO_SetOutputLow(&LED2); // visual indicator for DIR
                } else {
                    // change direction --> set DIR pin high
                    dir = 1;
                    DIGITAL_IO_SetOutputHigh(&DIR);
                    DIGITAL_IO_SetOutputHigh(&LED2); // visual indicator for DIR
                }
            }
        }

        for (i = 0; i < 8000; i++)
            ;
        DIGITAL_IO_ToggleOutput(&LED1);
    }
}
