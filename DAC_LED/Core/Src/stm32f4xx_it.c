/*
 * stm32f4xx_it.c
 *
 *  Created on: 24 de Junho de 2020
 *      Author: Mateus Sousa
 */

#include "main.h"

void SysTick_Handler (void){

	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();
}