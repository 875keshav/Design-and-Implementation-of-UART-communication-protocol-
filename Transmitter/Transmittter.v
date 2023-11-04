`timescale 1ns / 1ps

module Transmitter(clk,data,transmit,reset,TxD);
input clk;
input [7:0]data;
input transmit;
input reset;
output reg TxD;

//internal variables
reg [3:0] bit_counter;
reg [13:0] baudrate_counter;
reg [9:0] shiftright_register;
reg state, next_state;// idle state=0 and transmitting state=1
reg shift;//to shift the signal to start shifting the bits in uart
reg load;// to start loading the data into the shiftright register also add start and stop bits
reg clear;// to reset the bit_counter for uart transmission


//UART transmission
always@(posedge clk)
begin
	if(reset)
	begin
	state<=0;//state is idle meaning it is not transmitting the data at this point
	bit_counter<=0;
	baudrate_counter<=0;
	end

   else 
	begin
	baudrate_counter<=baudrate_counter+1;
	if(baudrate_counter==10415)    /// For baud rate of 9600
	begin
	state<=next_state;
	baudrate_counter<=0;

		if(load)
		shiftright_register<={1'b1,data,1'b0};
		if(clear)
		bit_counter<=0;
		if(shift)
		begin
		shiftright_register<=shiftright_register>>1;
		bit_counter<=bit_counter+1;
		end
	end
	end
end

//Melay Machine,state machine

always@(posedge clk)
begin
load<=0;
shift<=0;
clear<=1;
TxD<=1;

case(state)
0:begin //idle state, no transmission
  if(transmit)
  begin
  next_state<=1;
  load<=1;
  shift<=0;
  clear<=0;
  end
  
  else
  begin
  next_state<=0;
  TxD<=1;
  end
 end
  
1:begin//transmiting state
  if(bit_counter==10)
  begin
  next_state<=0;//switch from transmission mode to idle mode
  clear<=1;
  end
  else
  begin
  next_state<=1;
  TxD<=shiftright_register[0];
  shift<=1;
  end
  end
default:next_state<=0;
endcase
end 
endmodule

