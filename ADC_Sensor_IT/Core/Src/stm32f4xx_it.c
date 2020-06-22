/*
 * it.c
 *
 *  Created on: 21 de Junho, 2020
 *      Author: Mateus Sousa
 */

#include "main.h"

extern ADC_HandleTypeDef hadc1;

void SysTick_Handler(void){

	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();

}

void ADC_IRQHandler(void) {
	HAL_ADC_IRQHandler(&hadc1);
}
