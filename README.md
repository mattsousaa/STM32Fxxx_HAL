## STM32Fxxx_HAL 

Applications developed during course [MCU2](https://www.udemy.com/course/microcontroller-programming-stm32-timers-pwm-can-bus-protocol/) by [FastBit Embedded Brain Academy](http://fastbitlab.com/). Contains source coude for all exercises done during the course with the help of STM32Cube Hardware Abstraction Layer (HAL). Here you will find several applications such as clock settings (HSI, HSE and PLL), Timers, PWM, ADC, DAC, CAN, Low Power modes (RUN, SLEEP, STOP and STANDBY modes) and RTC (Real time clock). All of these were tested and adjusted for [Nucleo-F446RE](https://br.mouser.com/ProductDetail/STMicroelectronics/NUCLEO-F446RE?qs=PRtH0mD6DWYnuBoPSlbRCA%3D%3D) and other families of STMicroeletronics with Cortex-M3. In the latter family, applications are tested on the proteus. 


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
[MIT](https://github.com/mattsousaa/STM32F4xx_drivers/blob/master/LICENSE)
