`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:06 09/12/2023 
// Design Name: 
// Module Name:    slow_clk_4_hz 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module slow_clk_4_hz(clk_in,clk_out);
input clk_in;
output reg clk_out;



//for converting a 100MHZ clk into 4HZ clk, we will require 25x10^6 clk pulses for making a resultant 1 clk pulse for 4HZ.
// And in order to make a clk pulse of 4hz we will divide the 25x10^6 by 2 for having positive and negative part of the waveform bacause 
//we are inverting the value of clk pulse afetr every 25x10^6 divided by 2 clk pulses.
reg [25:0] count=0;// here we have to count 12.5 billion cycles so we are taking a 26 bit counter

always@(posedge clk_in)
begin
count<=count+1;
if(count==12_500_000)
begin
count<=0;
clk_out=~clk_out;
end
end
endmodule
