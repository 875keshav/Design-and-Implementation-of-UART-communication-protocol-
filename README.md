# Design-and-Implementation-of-UART-communication-protocol-
## Communication Protocol
Communication protocols are a set of rules that governs how the data is transmitted, received, and processed between different components within a system or between two different systems. Some commonly used Communication protocols are UART, SPI, I2C, etc.
## Universal Asynchronous Receiver Transmitter (UART):
Universal asynchronous receiver transmitter (UART) is an asynchronous serial communication protocol that transmits the data serially between two devices. It is a two wire communication protocols in which one wire is used for transmitting the data while, the second wire is used for reception of data.

## Objective
• To design UART communication protocol using Verilog.

• To implement and verify UART protocol using FPGA board.

## Skillset additionally required to solve/address the problem
1. Verilog HDL.
2. Understanding of communication protocols.
3. Knowledge of working on the FPGA board.

## Block schematic
UART protocol consists of mainly three components, Transmitter, Receiver, and a Baud rate generator. The transmitter takes the data parallelly form the source device and transmits it serially one bit at a time, similarly the receiver receives the data serially one bit at a time and gives all the data parallelly to the destination device.
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/5cab96ae-abdb-4d7a-9489-071d94c02e2a)
                                              Figure 1: Block diagram of UART Protocol
Transmitter Module:
                                           
                                             Figure 2: Block diagram of transmitter module           
Receiver module:
 
                                             Figure 3: Block diagram of receiver module
7.	Completed Milestones 
●	 Project objectives and scope is defined.
●	 Literatures of UART protocol has been reviewed.
●	 The UART communication protocol has been studied and also learned how to implement the protocol using Verilog.
●	 The UART transmitter module has been designed using Verilog.
●	The receiver module of UART in Verilog.
●	Integration of Transmitter and Receiver module of UART is implemented on FPGA board.

8.	Expected Challenges
●	Handling various errors and maintaining data integrity.
●	Ensuring that data transfer and clock domains are synchronized. 
●	Verifying the correctness and reliability throughout simulation. 

9.	Work done:
●	Data Frame of UART Transmitter module:
UART protocol transmit and receive the data in a particular sequence/frame, which is called as data frame. The data frame contains one start bit (logic 0), 8 bit of data, one parity bit(which is optional)and one or more stop bits (logic 1).	 
    
		Figure 3: Data framing for Transmitter module    
●	Transmitter waveform:
➢	For transmitting of data 01010101:
                                                 
			 Figure 4: Waveform for transmission of data 01010101      

➢	For transmitting of data 00001111:
 
			 Figure 5: Waveform for transmission of data 00001111    

