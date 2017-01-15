/*
 * shell.h
 *
 *  Created on: Jan 25, 2016
 *      Author: schwarzg
 */

#ifndef SHELL_H_
#define SHELL_H_

#define CMD_BUF_SIZE 	20		// Command Buffer Size (maximum length of command string)
#define TICKS_PER_SECOND 100

// SPI command set
#define RD_DIA	0x00
#define RES_DIA	0x80
#define RD_REV	0x20
#define RD_CTRL	0x60
#define WR_CTRL_RD_DIA	0xD0
#define WR_CTRL	0xE0

// SPI diagnosis bit masks
#define DIA_EN 		0x80
#define DIA_OT 		0x40
#define DIA_TV 		0x20
#define DIA_CL 		0x10
#define DIA_4  		0x08
#define DIA_3  		0x04
#define DIA_2  		0x02
#define DIA_1  		0x01
#define DIA_BITS    0xF
#define DIA_NO_FAULT   0xF
#define DIA_SCG1  	0xE
#define DIA_SCVS1  	0xD
#define DIA_OL  	0xC
#define DIA_SCG2  	0xB
#define DIA_SCG1_SCG2  	0xA
#define DIA_SCVS1_SCG2  0x9
#define DIA_SCVS2  		0x7
#define DIA_SCVS1_SCVS2 0x6
#define DIA_UV 		0x3

// SPI control bit masks
#define OLDIS 0x10
#define SIN   0x08
#define SEN   0x04
#define SDIR  0x02
#define SPWM  0x01
#define MASK_CMD_BITS  0xE0 // bits 5..7
#define MASK_DATA_BITS  0x1F // bits 0..4


void shell_init(void);
void uart_print(const char *send_string);

#endif /* SHELL_H_ */
