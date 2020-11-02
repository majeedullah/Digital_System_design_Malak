`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 07:24:22 PM
// Design Name: 
// Module Name: Carry_look_ahead_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Carry_Look_ahead_Adder_test();
reg [3:0] a, b; 
reg  Cin;
wire [3:0] Sum; 
wire Cout;

Carry_Look_ahead_Adder Carry1(Sum, Cout, a, b, Cin);

// signal generation 
initial
begin
   #00 a = 7;  b  = 10; Cin = 0; 
   #10 a = 7;  b  = 15; Cin = 0; 
   #10 a = 8;  b  = 6;  Cin = 0; 
   #10 a = 9;  b  = 12; Cin = 0; 
   #10 a = 10; b  = 13; Cin = 0; 
   #10 a = 15; b  = 10; Cin = 0; 
   #10 $stop; 
end 

// instatiate 



endmodule