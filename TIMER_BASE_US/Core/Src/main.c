#include "main.h"
#include "stm32f1xx_hal_tim.h"

void SystemClock_Config(uint8_t clock_freq);
void TIMER3_Init(void);
void GPIO_Init(void);
void Error_Handler(void);
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);

/* TIMER3 can be used for basic timer
 * See STM32 cross-series timer overview document for more details */
TIM_HandleTypeDef htimer3;

int main(void){

	HAL_Init();
	SystemClock_Config(SYS_CLOCK_FREQ_48_MHZ);
	GPIO_Init();
	TIMER3_Init();

	HAL_TIM_Base_Start(&htimer3);

	//Lets start timer in IT mode
	HAL_TIM_Base_Start_IT(&htimer3);

  	while(1);

  	return 0;
}

/* For Cortex-M3 (STM32F1xx)*/
void SystemClock_Config(uint8_t clock_freq){

	RCC_OscInitTypeDef osc_init;
	RCC_ClkInitTypeDef clk_init;

	uint32_t FLatency = 0;

	osc_init.OscillatorType = RCC_OSCILLATORTYPE_HSI;
	osc_init.HSIState = RCC_HSI_ON;
	osc_init.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
	osc_init.PLL.PLLState = RCC_PLL_ON;
	osc_init.PLL.PLLSource = RCC_PLLSOURCE_HSI_DIV2;

	switch(clock_freq){

		case SYS_CLOCK_FREQ_20_MHZ:

			osc_init.PLL.PLLMUL = RCC_CFGR_PLLMULL5;

			clk_init.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK |
			                     RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
			clk_init.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
			clk_init.AHBCLKDivider = RCC_SYSCLK_DIV1;
			clk_init.APB1CLKDivider = RCC_HCLK_DIV2;
			clk_init.APB2CLKDivider = RCC_HCLK_DIV2;

			// flash memory latency
			FLatency = FLASH_LATENCY_0;

			break;

		case SYS_CLOCK_FREQ_48_MHZ:

			osc_init.PLL.PLLMUL = RCC_CFGR_PLLMULL12;

			clk_init.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK |
						         RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
			clk_init.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
			clk_init.AHBCLKDivider = RCC_SYSCLK_DIV1;
			clk_init.APB1CLKDivider = RCC_HCLK_DIV2;
			clk_init.APB2CLKDivider = RCC_HCLK_DIV2;

			// flash memory latency
			FLatency = FLASH_LATENCY_1;

			break;

		case SYS_CLOCK_FREQ_64_MHZ:

			osc_init.PLL.PLLMUL = RCC_CFGR_PLLMULL16;

			clk_init.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK |
								 RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
			clk_init.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
			clk_init.AHBCLKDivider = RCC_SYSCLK_DIV1;
			clk_init.APB1CLKDivider = RCC_HCLK_DIV2;
			clk_init.APB2CLKDivider = RCC_HCLK_DIV2;

			// flash memory latency
			FLatency = FLASH_LATENCY_2;

			break;

		default:

			return;

	}

	if(HAL_RCC_OscConfig(&osc_init) != HAL_OK){
		Error_Handler();
	}

	if(HAL_RCC_ClockConfig(&clk_init, FLatency) != HAL_OK){
		Error_Handler();
	}

	//Systick configuration
  	HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);
  	HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){

	HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_2);

}

void GPIO_Init(void){

	GPIO_InitTypeDef ledgpio;

	/* GPIOA clock enable */
    __HAL_RCC_GPIOA_CLK_ENABLE();

    /* High Level GPIO Initialization */
	ledgpio.Pin = GPIO_PIN_2;
	ledgpio.Mode = GPIO_MODE_OUTPUT_PP;
	ledgpio.Pull = GPIO_NOPULL;
	ledgpio.Speed = GPIO_SPEED_FREQ_LOW;

	/* Init GPIO */
	HAL_GPIO_Init(GPIOA, &ledgpio);

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_2, GPIO_PIN_RESET);
}

void TIMER3_Init(void){

	/* Verify the spreadsheet "timer_period_calculation" to adjust Prescaler and Period values;
	 * Prescaler value is stored in TIMx_PSC register (16 bits);
	 * Period value is stored in TIMx_ARR register (16 bits - MAX 65535);
	 * Choose a clock value for your microcontroller in the spreadsheet (TIMx_CLK);
	 * Choose a time base required in seconds in the spreadsheet;
	 * Check if the TIMER Count Clock (CNT_CLK) exceeded the maximum value of TIMx_ARR register (16 bits - MAX 65535);
	 * If yes, increase or decrease the prescaler in the spreedsheet until 0 < CNT_CLK <= 65535;
 	 * This process will find how many ticks there exists for every period of clock;
 	 * For instance, if TIMx_CLK = 16MHz and prescaler = 0, so for every 0.0625us a tick happens;
 	 * In this case, what is the period value must be configured to get the time base of 100ms?;
 	 * This math results in 1600000 and should be placed in TIMx_ARR register, but this value is greater than 65535;
 	 * That's why you should increase or decrease the prescaler value.
 	 * */

	/* Create a time base for 10us with SYSCLK = 48MHz */
	htimer3.Instance = TIM3;
	htimer3.Init.Prescaler = 9;
	htimer3.Init.Period = 48-1;	// The update event happens after one time gap or one time period

	if(HAL_TIM_Base_Init(&htimer3) != HAL_OK){
		Error_Handler();
	}

}

void Error_Handler(void){

}
