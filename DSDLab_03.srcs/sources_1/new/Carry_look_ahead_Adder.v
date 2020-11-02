`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 07:00:55 PM
// Design Name: 
// Module Name: Carry_look_ahead_Adder
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

module Carry_Look_ahead_Adder (Sum, Cout, a, b, Cin);
input [3:0] a, b;
input Cin;

output [3:0] Sum;
output Cout;

wire p0, p1, p2, p3, g0, g1, g2, g3, c1, c2, c3, c4;

assign p0 =a[0] ^ b[0];
assign p1 =a[1] ^ b[1];
assign p2 =a[2] ^ b[2];
assign p3 =a[3] ^ b[3];


assign g0 =a[0] & b[0];
assign g1 =a[1] & b[1];
assign g2 =a[2] & b[2];
assign g3 =a[3] & b[3];

assign c1 = g0 | (p0 & Cin);
assign c2 = g1 | (p1 & g0) | (p1 & p0 & Cin);
assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & Cin);
assign c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & Cin); 


assign Sum[0] = p0 ^ Cin;
assign Sum[1] = p1 ^ c1;
assign Sum[2] = p2 ^ c2;
assign Sum[3] = p3 ^ c3;


assign Cout = c4;
endmodule
