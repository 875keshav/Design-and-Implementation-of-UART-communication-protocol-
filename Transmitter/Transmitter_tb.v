`timescale 1ns/1ps

module uart_transmitter_tb;
reg clk,transmit,reset;
reg [7:0] data;
wire TxD;

//Instantiation
Transmitter uut(clk,data,transmit,reset,TxD);
initial
begin
$monitor($time,"clk=%b,data=%b,transmit=%b,reset=%b,TxD=%b",clk,data,transmit,reset,TxD);
end

initial
begin
clk=1'b1;
forever
#5 clk=~clk;
end

//after every 105-110us, clock edge of 9600 buadrate appears
initial 
begin
reset=1;
#150_000//150us
reset=0;
end

initial 
begin
transmit=0;
#150_000  
forever
begin
transmit=1;
#150_000
transmit=0;
#1350_000;
end
end

initial
begin
data=8'b01010101;
#1500_000 //1500us
data=8'b000001111;
#1500_000 //1500us
data=8'b11110000;
#1500_000 //1500us
data=8'b00110011;
#2500_000
$finish;
end
endmodule

