/*
 * stm32f4xx_it.c
 *
 *  Created on: 03 de Julho de 2020
 *      Author: Mateus Sousa
 */

#include "main.h"

void SysTick_Handler(void){
	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();
}

void EXTI15_10_IRQHandler(void){
	HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_13);
}
