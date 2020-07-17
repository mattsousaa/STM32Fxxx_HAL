## STM32Fxxx_HAL 

Applications developed during course [MCU2](https://www.udemy.com/course/microcontroller-programming-stm32-timers-pwm-can-bus-protocol/) by [FastBit Embedded Brain Academy](http://fastbitlab.com/). Contains source coude for all exercises done during the course with the help of STM32Cube Hardware Abstraction Layer (HAL). Here you will find several applications such as clock settings (HSI, HSE and PLL), Timers, PWM, ADC, DAC, CAN, Low Power modes (RUN, SLEEP, STOP and STANDBY modes) and RTC (Calendar block and Alarm). All of these were tested and adjusted for [Nucleo-F446RE](https://br.mouser.com/ProductDetail/STMicroelectronics/NUCLEO-F446RE?qs=PRtH0mD6DWYnuBoPSlbRCA%3D%3D) and other families of STMicroeletronics with Cortex-M3. In the latter family, applications are tested on the proteus. 

## Folder Contents

* ADC_Sensor - Example of using the ADC channel by temperature sensor
* ADC_Sensor_IT - Example of using the ADC channel temperature sensor by interrupt
* BkupSRAM_Standby - Example of use of standby mode and its effects on SRAM memory of the backup domain
* CAN_LoopBack - Example of using the CAN peripheral with a SN65HVD230 transceiver for testing in loopback mode
* CAN_LoopBack_IT - Example of using the CAN peripheral with a SN65HVD230 transceiver for testing in loopback mode with interrupt
* CAN_Normal_Mode_IT - Example of using the CAN peripheral with a SN65HVD230 transceiver in normal operating mode
* Current_Measurement_Run_Mode - Current measurement of the STM board in Run Mode using the CPU Benchmark
* Current_Measurement_Sleep_Mode - Current measurement of the STM board in Sleep Mode using the CPU Benchmark
* Current_Measurement_Standby_Mode - Current measurement of the STM board in Standby Mode using the CPU Benchmark
* Current_Measurement_Stop_Mode - Current measurement of the STM board in Stop Mode using the CPU Benchmark
* DAC_LED - Example of LED fadding effect using DAC
* HSE_SYSCLK_8Mhz - STM board running with external oscillator crystal (HSE) at 8MHz
* PLL_SYSCLK - Configuration application for PLL modes
* PLL_SYSCLK_HSE - Configuration application for PLL mode with external oscillator
* PWM_DAC - PWM via DAC and simple low-pass filter
* RTC_AlarmA - RTC peripheral A clock setup application
* RTC_AlarmA_12h - Setting the RTC alarm for every 12h PM
* RTC_Alarm_Sunday_8AM - Setting the RTC alarm to 8h AM
* RTC_Alarm_standby_wakeup - Setting the RTC alarm in Standby mode
* RTC_Date_Time - Date setting on the RTC peripheral
* SLEEP-ON-EXIT_1 - Sleep mode through the feature Sleep on exit

## Usage

## Setup Installation - Ubuntu 18.04
* ##### GCC Toolchain installation (v7.5.0)
  * `$ gcc -v     // check C compiler is installed or not` 
   &nbsp;
   
  * Open terminal and type following command to install GCC\
  `$ sudo apt-get install gcc`
  
* ##### STM32Cube IDE installation (v1.3.0)
  * [Download installation for Linux](https://www.st.com/en/development-tools/stm32cubeide.html) (Debian Linux Installer)
  * Navigate to downloads folder and run following command in terminal\
  `sudo chmod +x script-name-here.sh` This command will set execute permission on installation script.
  * To run installation script run one of the following commands:
    * `sudo ./script-name-here.sh`
    or
    * `sudo sh script-name-here.sh`
    or
    * `sudo bash script-name-here.sh`

* ##### Installing GIT (v2.7.1)
  * Install Git using apt-get:\
   `$ sudo apt-get update`\
   `$ sudo apt-get install git`
   &nbsp;
   
  * Verify the installation was successful by typing:\
  `$ git --version`



## Setup Installation - Windows 10
* ##### STM32Cube IDE installation (v1.3.0)
* [Download installation for Windows](https://www.st.com/en/development-tools/stm32cubeide.html#get-software) (Windows Installer)
* Download the software and install it following the instructions.

## Contributing 

Pull requests are welcome. If you discover any bug/issue feel free to report it and let me know if you want to.

## License
[MIT](https://github.com/mattsousaa/STM32Fxxx_HAL/blob/master/LICENSE)
