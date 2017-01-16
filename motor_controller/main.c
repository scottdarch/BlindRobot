/* .            ``
 *      <X X>  /
 * ``---  |  -
 *     [     ]   A BlindRobot Project (by 32bits.io)
 *______U___U____________________________________________________________________
 */

// Infineon XMC1100 SDK
#include <DAVE.h>

#define TICKS_PER_SECOND 100

static void uart_print(const char *send_string)
{
    uint32_t length;
    uint32_t index = 0;

    length = strlen(send_string);

    while (index < length) {
        UART_TransmitWord(&UART_0, send_string[index]);
        index++;

        // Wait for transmit buffer interrupt to fill it again with remaining data
        while ((UART_GetTXFIFOStatus(&UART_0) & XMC_USIC_CH_TXFIFO_EVENT_STANDARD) == 0) {
        }
    }
    UART_ClearTXFIFOStatus(&UART_0, XMC_USIC_CH_TXFIFO_EVENT_STANDARD);
}

void SysTick_Handler(void)
{
    static uint32_t i = 0;
    i += 1;
    if (i == TICKS_PER_SECOND) {
        i = 0;
        DIGITAL_IO_ToggleOutput(&LED1);
        DIGITAL_IO_ToggleOutput(&LED2);
        uart_print("blink\n");
    }
}

int main(void)
{
    DAVE_STATUS_t status;

    status = DAVE_Init(); /* Initialization of DAVE APPs  */

    DIGITAL_IO_SetOutputHigh(&DIS);
    DIGITAL_IO_SetOutputLow(&DIS);
    DIGITAL_IO_SetOutputLow(&LED1);
    DIGITAL_IO_SetOutputHigh(&LED2);

    SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

    while (true) {
    }
}
