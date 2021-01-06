/*
 * LCD.h
 *
 *  Created on: Jan 3, 2021
 *      Author: andreykorchagin
 */

#ifndef INC_LCD_H_
#define INC_LCD_H_

#include "stm32f1xx.h"
#include "math.h"
#include "Font.h"
#include "stdbool.h"
#include "string.h"
#include "stdlib.h"
#include "stdio.h"

void displaySPI2_Init(void) {
	RCC->APB2ENR |= RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN;

	GPIOB->CRH &= ~(GPIO_CRH_CNF13_0 | GPIO_CRH_CNF15_0);
	GPIOB->CRH |= (GPIO_CRH_CNF13_1 | GPIO_CRH_CNF15_1);
	GPIOB->CRH &= ~(GPIO_CRH_MODE13_0 | GPIO_CRH_MODE15_0);
	GPIOB->CRH |= (GPIO_CRH_MODE13_1 | GPIO_CRH_MODE15_1);

	GPIOB->CRH &= ~(GPIO_CRH_CNF11 | GPIO_CRH_CNF14);
	GPIOB->CRH &= ~(GPIO_CRH_MODE11_0 | GPIO_CRH_MODE14_0);
	GPIOB->CRH |= (GPIO_CRH_MODE11_1 | GPIO_CRH_MODE14_1);

	GPIOB->CRH &= ~GPIO_CRH_CNF10;
	GPIOB->CRH &= ~GPIO_CRH_MODE10;
	GPIOB->CRH |= GPIO_CRH_MODE10_1;

	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN;

	SPI2->CR1 |= SPI_CR1_BIDIMODE;
	SPI2->CR1 |= SPI_CR1_BIDIOE;
	SPI2->CR1 &= ~SPI_CR1_DFF;  // 8 	bit
	SPI2->CR1 |= SPI_CR1_CPOL;  // SPI-3
	SPI2->CR1 |= SPI_CR1_CPHA;  // SPI-3
	SPI2->CR1 |= SPI_CR1_BR;    // Baud rate control
	SPI2->CR1 &= ~SPI_CR1_LSBFIRST;
	SPI2->CR1 |= SPI_CR1_SSM | SPI_CR1_SSI;

	SPI2->CR1 |= SPI_CR1_MSTR;  // MASTER
	SPI2->CR1 |= SPI_CR1_SPE;   // turn on SPI
}
void SPI2_Write(uint8_t data) {
	SPI2->DR = data;
	while (!(SPI2->SR & SPI_SR_TXE))
		;
	while (SPI2->SR & SPI_SR_BSY)
		;
}
void display_cmd(uint8_t data) {
	GPIOB->BRR |= GPIO_BRR_BR14;
	SPI2_Write(data);
}
void display_data(uint8_t data) {
	GPIOB->BSRR |= GPIO_BSRR_BS14;
	SPI2_Write(data);
}
void display_Init(void) {
	GPIOB->BSRR |= GPIO_BSRR_BR10;
	GPIOB->BSRR |= GPIO_BSRR_BS10;
	display_cmd(0x21);
	display_cmd(0x14);
	display_cmd(0x04);
	display_cmd(0xB8);
	display_cmd(0x20);
	display_cmd(0xC);
}
void display_light_on(void) {
	RCC->APB2ENR |= RCC_APB2ENR_IOPBEN;

	GPIOB->CRH &= ~GPIO_CRH_CNF12;
	GPIOB->CRH |= GPIO_CRH_MODE12_1;
	GPIOB->CRH &= ~GPIO_CRH_MODE12_0;
	GPIOB->BSRR |= GPIO_BSRR_BS12;
}
void display_light_off(void) {
	GPIOB->BSRR |= GPIO_BSRR_BR12;
}
void display_setpos(uint8_t x, uint8_t y) {
	display_cmd(0x80 + x);
	display_cmd(0x40 + y);
}
void display_clear(void) {
	for (uint8_t y = 0; y < 6; y++) {
		for (uint8_t x = 0; x < 84; x++) {
			display_data(0);
		}
	}
}

void printchar(uint8_t ch) {
	int i;
	if (ch >= 0x20 && ch <= 0x80) {
		display_data(0x00);
		for (i = 0; i < 5; i++) {
			display_data(ASCII[ch - 0x20][i]);
		}
		display_data(0x00);
	}
}

void printstring(char *str) {
	while (*str) {
		printchar(*str);
		str++;
	}
}

void printstring_at(char *str, uint8_t x, uint8_t y) {
	display_setpos(x, y);
	while (*str) {
		printchar(*str);
		str++;
	}
}

#endif /* INC_LCD_H_ */
