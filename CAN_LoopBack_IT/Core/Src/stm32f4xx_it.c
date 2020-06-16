/*
 * stm32f4xx_it.c
 *
 *  Created on: 16 de Junho de 2020
 *      Author: Mateus Sousa
 */

#include "main.h"

extern CAN_HandleTypeDef hcan1;

void SysTick_Handler (void){

	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();
}

void CAN1_TX_IRQHandler(void){

	HAL_CAN_IRQHandler(&hcan1);
}

void CAN1_RX0_IRQHandler(void){

	HAL_CAN_IRQHandler(&hcan1);
}

void CAN1_RX1_IRQHandler(void){

	HAL_CAN_IRQHandler(&hcan1);
}

void CAN1_SCE_IRQHandler(void){

	HAL_CAN_IRQHandler(&hcan1);
}
