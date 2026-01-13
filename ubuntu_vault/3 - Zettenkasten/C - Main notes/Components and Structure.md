___
📆 2025-12-30 17:05

🔗 Permalink: [[C LANGUAGE]] [[EMBEDDED]]
___

# Components and Structure
- ES are specialized computing systems designed to perform specific functions within larger systems.
- it consists of various hardware and software components carefully integrated to achieve their intended task efficiently and reliably.
# Hardware components:
## 1. Important Components of Hardware:
### a. Microcontroller or Microprocessor: 
- At the heart of every ES, responsible for executing for program instructions and controlling system operations.
- Microcontrollers: 
	- they are integrated circuits containing a CPU, memory, input/output peripherals, and other essential components on a single chip 
	=> suitable for embedded applications requiring compactness and low power consumption
- Microprocessors:
	- They are general-purpose CPUs used in more complex embedded systems with higher computational requirements
### b. Memory:
- ES utilize various types of memory to store program code, data, and system configurations:
	- Read-Only Memory (ROM): storing firmware or boot code
	- Random-Access Memory: runtime data storage
	- Non-Volatile Memory or Electrically Erasable Programmable Read-Only Memory (EEPROM): storing persistent data that survives power cycles
### c. Peripherals:
- they are external devices or components connected to microcontroller or microprocessor to enable input, output, and communication with the external world
	- Analog-to-digital converters (ADC)
	- Digital-to-analog converters (DAC)
	- timers
	- serial communication interfaces (UART, SPI, I2C)
	- general-purpose input/output (GPIO) pins
	- various sensors and actuators
### d. Power Supply:
- ES require a stable and reliable power supply to operate correctly
- Power management circuits regulate voltage levels, manage power consumption, and provide protection against electrical anomalies such as overvoltage, undervoltage, and power surges
e. Clock Source:
- A clock source generates timing signals required for synchronizing the operations of the microcontroller or microprocessor and other system components 
- it ensures that tasks are executed at precise interval and enables the system to meet timing requirements, especially in real-time applications
# 2. Parts of Software Components:
### a. Firmware:
- it is low-level software stored in ROM or flash memory, responsible for booting the system and initializing hardware peripherals 
- It typically includes a bootloader for loading the main application code from external storage or secondary memory into RAM
### b. Device Drivers:
- they are software modules that interface with hardware 

![[Pasted image 20251230171032.png]]
# References
