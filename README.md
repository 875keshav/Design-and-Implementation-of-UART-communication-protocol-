# Design-and-Implementation-of-UART-communication-protocol-
## Communication Protocol
Communication protocols are a set of rules that governs how the data is transmitted, received, and processed between different components within a system or between two different systems. Some commonly used Communication protocols are UART, SPI, I2C, etc.
## Universal Asynchronous Receiver Transmitter (UART):
Universal asynchronous receiver transmitter (UART) is an asynchronous serial communication protocol that transmits the data serially between two devices. It is a two wire communication protocols in which one wire is used for transmitting the data while, the second wire is used for reception of data.

#### UART data frame
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/4a7f56e2-9937-4347-a956-a6d47f0d1dee)

## Objective
• To design UART communication protocol using Verilog.

• To implement and verify UART protocol using FPGA board.

## Skillset additionally required to solve/address the problem
1. Verilog HDL.
2. Understanding of communication protocols.
3. Knowledge of working on the FPGA board.

## Block schematic
UART protocol consists of mainly three components, Transmitter, Receiver, and a Baud rate generator. The transmitter takes the data parallelly form the source device and transmits it serially one bit at a time, similarly the receiver receives the data serially one bit at a time and gives all the data parallelly to the destination device.


#### Block diagram of UART Protocol
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/5cab96ae-abdb-4d7a-9489-071d94c02e2a)
                                              
#### Transmitter Module:
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/74ebc838-43f5-494a-962a-318977e37754)
                                        
                                                    
#### Receiver module:
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/779a629f-0713-47b3-8b1b-f66395ce2ad6)


## Simulated Waveform:
#### For transmitting of data 01010101:
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/21cd93c6-f1d0-44d7-9de3-4e95c81199f0)


#### For transmitting of data 00001111:
![image](https://github.com/875keshav/Design-and-Implementation-of-UART-communication-protocol-/assets/126338618/d1fa1137-e9d6-4455-a50b-3476604841bc)


