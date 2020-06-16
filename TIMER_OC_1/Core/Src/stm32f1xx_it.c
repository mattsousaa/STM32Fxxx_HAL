/*
 * stm32f4xx_it.c
 *
 *  Created on: 03 de Junho de 2020
 *      Author: Mateus Sousa
 */

#include "main.h"
#include "stm32f1xx_it.h"

extern TIM_HandleTypeDef htimer2;

void SysTick_Handler(void){

	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();

}

void TIM2_IRQHandler(void){

	//HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
	HAL_TIM_IRQHandler(&htimer2);
}


