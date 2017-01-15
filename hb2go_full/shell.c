/*
 * shell.c
 *
 *  Created on: Jan 25, 2016
 *      Author: schwarzg
 */

#include <DAVE.h> //Declarations from DAVE Code Generation (includes SFR declaration)
#include <stdio.h>
#include <stdlib.h> // includes strtol
#include "shell.h"

//****************************************************************************
// shell_init
//
// initialises the shell environment
//
//****************************************************************************
void shell_init(void)
{

    // Configure and start System Tick Timer
    // The System Tick Timer will call the function
    // SysTick_Handler TICKS_PER_SECOND times every second
    // (e.g. every 10ms if TICKS_PER_SECOND = 100)
    SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

    // print welcome message
    uart_print("\r\n");
    uart_print("\r\n");
    uart_print("H-Bridge Kit 2Go command line interface, Rev. 1.2, 2016-06-22\r\n");
    uart_print("To display the list of available commands please enter '?' or 'help'\r\n\r\n>");
}

//****************************************************************************
// hex2dec
//
// Returns decimal value for hexadecimal character
//
//****************************************************************************
int hex2dec(char hex)
{
    switch (hex) {
    case 'F':
    case 'f':
        return (15);
    case 'E':
    case 'e':
        return (14);
    case 'D':
    case 'd':
        return (13);
    case 'C':
    case 'c':
        return (12);
    case 'B':
    case 'b':
        return (11);
    case 'A':
    case 'a':
        return (10);
    case '9':
        return (9);
    case '8':
        return (8);
    case '7':
        return (7);
    case '6':
        return (6);
    case '5':
        return (5);
    case '4':
        return (4);
    case '3':
        return (3);
    case '2':
        return (2);
    case '1':
        return (1);
    default:
        return (0);
    }
}

//****************************************************************************
// uart_print
//
// transmits a string to UART FIFO character by character
//
//****************************************************************************
void uart_print(const char *send_string)
{
    uint32_t length;
    uint32_t index = 0;

    length = strlen(send_string);

    while (index < length) {
        UART_TransmitWord(&UART_0, send_string[index]);
        index++;

        // Wait for transmit buffer interrupt to fill it again with remaining data
        while ((UART_GetTXFIFOStatus(&UART_0) & XMC_USIC_CH_TXFIFO_EVENT_STANDARD) == 0)
            ;
        UART_ClearTXFIFOStatus(&UART_0, XMC_USIC_CH_TXFIFO_EVENT_STANDARD);
    }
}

//****************************************************************************
// show_help
//
// shows a list of available commands
//
//****************************************************************************
void show_help(void)
{
    uart_print("\r\n");
    uart_print("H-Bridge Kit 2Go command line interface, Rev. 1.2, 2016-06-22\r\n");
    uart_print("-----------------------------------------------------------------------------------"
               "----------------\r\n");
    uart_print("Command Argument1        Argument2       Example            Description\r\n");
    uart_print("-----------------------------------------------------------------------------------"
               "----------------\r\n");
    uart_print(
        "?       -                -               '?'                show available commands\r\n");
    uart_print(
        "help    -                -               '?'                show available commands\r\n");
    uart_print(
        "dis     0/1              -               'dis 1 / dis 0'    set DIS pin high or low\r\n");
    uart_print("d       -                -               'd'                enable = 'dis 1'\r\n");
    uart_print("e       -                -               'e'                enable = 'dis 0'\r\n");
    uart_print(
        "dir     0/1              -               'dir 1 / dir 0'    set DIR pin high or low\r\n");
    uart_print("f       -                -               'f'                forward = 'dir 1'\r\n");
    uart_print("r       -                -               'r'                reverse = 'dir 0'\r\n");
    uart_print("pwm     duty cycle[%]    frequency[Hz]   'pwm 50 1000'      set PWM duty cycle and "
               "frequency\r\n");
    uart_print("p       duty cycle[%]    frequency[Hz]   'p 50'             - frequency is "
               "optional (default 1kHz)\r\n");
    uart_print("spi     hex value        -               'spi 2A'           write to spi; expects "
               "2 digit hex value\r\n");
    uart_print(
        "s       hex value        -               's 2a'             - lower case or capital\r\n");
    uart_print(
        "dia     -                -               'dia'              show diagnosis register\r\n");
    uart_print(
        "res     -                -               'res'              reset diagnosis register\r\n");
    uart_print(
        "rev     -                -               'rev'              show revision register\r\n");
    uart_print(
        "ctrl    -                -               'ctrl'             show control register\r\n");
    uart_print("oldis   0/1              -               'oldis 1'          disconnect open load "
               "current source\r\n");
    uart_print("sin     0/1              -               'sin 1 / sin 0'    set control via SPI on "
               "or off \r\n");
    uart_print("sen     0/1              -               'sen 1 / sen 0'    set EN via SPI high or "
               "low\r\n");
    uart_print("sdir    0/1              -               'sdir 1 / sdir 0'  set DIR via SPI high "
               "or low\r\n");
    uart_print("spwm    0/1              -               'spwm 1 / spwm 0'  set PWM via SPI high "
               "or low\r\n");
    uart_print("-----------------------------------------------------------------------------------"
               "----------------\r\n>");
}

//****************************************************************************
// set_dir
//
// sets the DIR pin high or low
// LED1 displays the status of DIR
//
//****************************************************************************
void set_dir(const char *arg)
{
    if (!strcmp(arg, "0")) {
        DIGITAL_IO_SetOutputLow(&DIR);  // DIR
        DIGITAL_IO_SetOutputLow(&LED1); // LED1
    } else if (!strcmp(arg, "1")) {
        DIGITAL_IO_SetOutputHigh(&DIR);  // DIR
        DIGITAL_IO_SetOutputHigh(&LED1); // LED1
    } else
        uart_print(">unknown argument \r\n>");
}

//****************************************************************************
// set_dis
//
// sets the DIS pin high or low
// LED2 displays the status of DIS
//
//****************************************************************************
void set_dis(const char *arg)
{
    if (!strcmp(arg, "0")) {
        DIGITAL_IO_SetOutputLow(&DIS);  // DIS
        DIGITAL_IO_SetOutputLow(&LED2); // LED2
    } else if (!strcmp(arg, "1")) {
        DIGITAL_IO_SetOutputHigh(&DIS);  // DIS
        DIGITAL_IO_SetOutputHigh(&LED2); // LED2
    } else
        uart_print(">unknown argument \r\n>");
}

//****************************************************************************
// set_pwm
//
// sets the PWM duty cycle and frequency
// default PWM frequency is 1000 Hz
// if the frequency is not specified it will stay unchanged
//
//
//****************************************************************************
void set_pwm(const char *dc, const char *f)
{
    static uint32_t pwm_frequency = 1000; // initial PWM frequency = 1kHz
    static uint32_t duty_cycle = 0;       // initial duty cycle = 0%

    pwm_frequency = strtol(f, NULL, 10); // convert f string to long integer value
    duty_cycle = strtol(dc, NULL, 10);   // convert f string to long integer value

    if (duty_cycle <= 100) {
        PWM_SetDutyCycle(&PWM, duty_cycle * 100);
    }

    if (pwm_frequency <= 30000) {
        PWM_SetFreq(&PWM, pwm_frequency);
    }
}

//****************************************************************************
// spi_write
//
// writes 8 bit word to SPI (hex)
// prints output of IFX9201 (hex)
// note: output is answer to previous message
//
//****************************************************************************
void spi_write(const char *arg)
{
    uint8_t SendData;
    uint8_t ReadData;
    char output[10];
    uint8_t c1, c2;

    if (strlen(arg) == 2) // expecting 2 hex characters
    {
        c1 = hex2dec(arg[0]); // convert first hex character to decimal
        c2 = hex2dec(arg[1]); // convert second hex character to decimal

        SendData = 16 * c1 + c2;

        SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1);

        // Dummy message to get answer to first message
        SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1);

        // print received data
        sprintf(output, "0x%X\r\n>", ReadData);
        uart_print(output);
    }

    else {
        uart_print("wrong input - expecting 2 hex characters (e.g. '2A')\r\n>");
    }
}

//****************************************************************************
// show_diagnosis
//
// prints content of DIA register to UART
//
//****************************************************************************
void show_diagnosis(void)
{
    uint8_t SendData;
    uint8_t ReadData;
    char output[20];

    SendData = RD_DIA;

    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // send command RD_DIA
    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // get answer

    sprintf(output, "0x%X (", ReadData);
    uart_print(output);

    if (ReadData == 0xDF) {
        uart_print("no failure)\r\n>");
    } else {
        if (!(ReadData & DIA_EN)) // low active /EN = DIS
            uart_print("DIS, ");
        if (!(ReadData & DIA_OT)) // low active
            uart_print("OT, ");
        if (!(ReadData & DIA_CL)) // low active
            uart_print("CL, ");

        ReadData &= DIA_BITS; // diagnosis bits only

        if (ReadData == DIA_SCG1)
            uart_print("SCG1, ");
        if (ReadData == DIA_SCVS1)
            uart_print("SCVS1, ");
        if (ReadData == DIA_OL)
            uart_print("OL, ");
        if (ReadData == DIA_SCG2)
            uart_print("SCG2, ");
        if (ReadData == DIA_SCG1_SCG2)
            uart_print("SCG1, SCG2, ");
        if (ReadData == DIA_SCVS1_SCG2)
            uart_print("SCVS1, SCG2, ");
        if (ReadData == DIA_SCVS2)
            uart_print("SCVS2, ");
        if (ReadData == DIA_SCVS1_SCVS2)
            uart_print("SCVS1, SCVS2, ");
        if (ReadData == DIA_UV)
            uart_print("UV, ");

        uart_print("\b\b)\r\n>"); // delete last comma and close bracket
    }
}

//****************************************************************************
// reset_diagnosis
//
// sends reset diagnosis command via SPI
//
//****************************************************************************
void reset_diagnosis(void)
{
    uint8_t SendData;
    uint8_t ReadData;

    SendData = RES_DIA;

    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1);
}

//****************************************************************************
// show_revision
//
// prints content of REV register to UART
//
//****************************************************************************
void show_revision(void)
{
    uint8_t SendData;
    uint8_t ReadData;
    char output[20];

    SendData = RD_REV;

    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // send command RD_REV
    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // get answer

    sprintf(output, "0x%X\r\n>", ReadData);
    uart_print(output);
}

//****************************************************************************
// show_control
//
// prints content of CTRL register to UART
//
//****************************************************************************
void show_control(void)
{
    uint8_t SendData;
    uint8_t ReadData;
    char output[20];

    SendData = RD_CTRL;

    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // send command RD_CTRL
    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // get answer

    sprintf(output, "0x%X", ReadData);
    uart_print(output);

    if (ReadData & MASK_DATA_BITS) // any data bit set?
    {
        uart_print(" ("); // open bracket

        if (ReadData & OLDIS)
            uart_print("OLDIS, ");
        if (ReadData & SIN)
            uart_print("SIN, ");
        if (ReadData & SEN)
            uart_print("SEN, ");
        if (ReadData & SDIR)
            uart_print("SDIR, ");
        if (ReadData & SPWM)
            uart_print("SPWM, ");

        uart_print("\b\b)"); // delete last comma and close bracket
    }

    uart_print("\r\n>");
}

//****************************************************************************
// set_ctrl
//
//
//
//****************************************************************************
void set_ctrl(uint8_t bit, const char *arg)
{
    uint8_t ReadData;
    uint8_t SendData;

    SendData = RD_CTRL;

    // read control register setting to get current setting
    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // send command RD_CTRL
    SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // get answer

    ReadData &= MASK_DATA_BITS; // clear CMD bits

    if (!strcmp(arg, "0")) {
        SendData = WR_CTRL | (ReadData & ~bit);             // clear bit
        SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // write CTRL_REG
    } else if (!strcmp(arg, "1")) {
        SendData = WR_CTRL | (ReadData | bit);              // set bit
        SPI_MASTER_Transfer(&SPI, &SendData, &ReadData, 1); // write CTRL_REG
    } else
        uart_print(">unknown argument \r\n>");
}

//****************************************************************************
// execute_command
//
// analyzes the command string and calls command functions
//
//****************************************************************************
void execute_command(const char *cmd_string)
{
    char cmd[CMD_BUF_SIZE];
    char arg1[CMD_BUF_SIZE];
    char arg2[CMD_BUF_SIZE];
    int nchar = 0;

    // get command
    while (*cmd_string != 0 && *cmd_string != 32) {
        cmd[nchar] = *cmd_string;
        cmd_string++;
        nchar++;
    }

    cmd[nchar] = 0;
    cmd_string++;
    nchar = 0;

    // get first argument
    while (*cmd_string != 0 && *cmd_string != 32) {
        arg1[nchar] = *cmd_string;
        cmd_string++;
        nchar++;
    }

    arg1[nchar] = 0;
    cmd_string++;
    nchar = 0;

    // get second argument
    while (*cmd_string != 0 && *cmd_string != 32) {
        arg2[nchar] = *cmd_string;
        cmd_string++;
        nchar++;
    }

    arg2[nchar] = 0;

    // choose function to be executed
    if (!strcmp(cmd, "dis")) // disable pin DIS high/low
        set_dis(arg1);
    else if (!strcmp(cmd, "e")) // enable = 'dis 0'
        set_dis("0");
    else if (!strcmp(cmd, "d")) // disable = 'dis 1'
        set_dis("1");
    else if (!strcmp(cmd, "dir")) // direction pin DIR high/low
        set_dir(arg1);
    else if (!strcmp(cmd, "f")) // forward = 'dir 1'
        set_dir("1");
    else if (!strcmp(cmd, "r")) // reverse = 'dir 0'
        set_dir("0");
    else if (!strcmp(cmd, "pwm") || !strcmp(cmd, "p")) // PWM DutyCycle[%] Frequency[Hz]
        set_pwm(arg1, arg2);
    else if (!strcmp(cmd, "spi") || !strcmp(cmd, "s")) // SPI 0xXX - expects 2 digit hex value
        spi_write(arg1);
    else if (!strcmp(cmd, "?") || !strcmp(cmd, "help"))
        show_help();
    else if (!strcmp(cmd, "dia")) // show diagnosis
        show_diagnosis();
    else if (!strcmp(cmd, "res")) // diagnosis reset
        reset_diagnosis();
    else if (!strcmp(cmd, "rev")) // show device revision
        show_revision();
    else if (!strcmp(cmd, "ctrl")) // show control register setting
        show_control();
    else if (!strcmp(cmd, "oldis")) // set open load current source disconnect
        set_ctrl(OLDIS, arg1);
    else if (!strcmp(cmd, "sin")) // setInput Control via SPI on/off
        set_ctrl(SIN, arg1);
    else if (!strcmp(cmd, "sen")) // set EN signal via SPI high/low
        set_ctrl(SEN, arg1);
    else if (!strcmp(cmd, "sdir")) // set DIR signal via SPI high/low
        set_ctrl(SDIR, arg1);
    else if (!strcmp(cmd, "spwm")) // set PWM signal via SPI high/low
        set_ctrl(SPWM, arg1);
    else if (!strcmp(cmd, ""))
        ;
    // do nothing -  just a new line;
    else
        uart_print("unknown command\r\n>");
}

//****************************************************************************
// SysTick_Handler
//
// gets called every 10 ms
//
//****************************************************************************
void SysTick_Handler(void)
{

    static uint8_t init = 1;

    static char message_buffer[CMD_BUF_SIZE];
    static int nchar = CMD_BUF_SIZE; // number of characters in message buffer
    static char input_char;

    if (init) // if function is called the first time
    {
        while (nchar > 0)
            message_buffer[--nchar] = '\0'; // "clear" message buffer and set nchar=0
        init = 0;
    }

    // read command string from UART
    if (!UART_IsRXFIFOEmpty(&UART_0)) // check if receive buffer contains any data
    {
        input_char = (char)UART_GetReceivedWord(&UART_0); // get one character from FIFO

        switch (input_char) {
        case '\r': // Return / Enter
        case '\n':
            uart_print("\r\n>"); // new line

            execute_command(message_buffer); // analyze command string and execute

            while (nchar > 0)
                message_buffer[--nchar] = '\0'; // clear message buffer and set nchar=0
            break;

        case '\b':               // Delete last character
            uart_print("\b \b"); // delete: step back one character, print space, step back again
            if (nchar > 0)
                nchar--;
            message_buffer[nchar] = '\0';
            break;

        default:
            if (nchar < CMD_BUF_SIZE - 1) {
                UART_TransmitWord(&UART_0, (uint8_t)input_char);
                // uart_putchar(input_char);
                message_buffer[nchar] = input_char;
                nchar++;
                message_buffer[nchar] = '\0';
            } else
                message_buffer[nchar] = '\0';
            break;
        }
    }
}
