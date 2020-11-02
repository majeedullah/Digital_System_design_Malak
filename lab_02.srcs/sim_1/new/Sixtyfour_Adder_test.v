`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 04:53:56 PM
// Design Name: 
// Module Name: Sixtyfour_Adder_test
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


module Sixtyfour_Adder_test( );
reg [63:0] A, B;
reg Cin;

wire [63:0] Sum;
wire Carry;

initial 
begin
 #00 A = 50000; B = 1500; Cin=0;
 #10 A = 20000; B = 2500; Cin=0;
 #10 A = 40000; B = 3500; Cin=0;
 #10 A = 530000; B = 5500; Cin=0;
 
 #100 $stop;
 end
 
 
 Sixtyfour_bit_Adder SixtyfourAD1(Carry, Sum, A, B, Cin);

endmodule
