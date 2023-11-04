`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:53 09/12/2023 
// Design Name: 
// Module Name:    debounce 
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
module debounce(pb,clk_in,out);
input pb,clk_in;
output out;

wire clk_out;
wire q1,q2,q2_bar;

slow_clk_4_hz u1(clk_in,clk_out);
D_ff D1(pb,clk_out,q1);
D_ff D2(q1,clk_out,q2);

assign q2_bar=~q2;
assign out= q1 & q2_bar;
endmodule
