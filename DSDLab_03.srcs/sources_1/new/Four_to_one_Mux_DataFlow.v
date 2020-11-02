`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 01:16:53 PM
// Design Name: 
// Module Name: Four_to_one_Mux_DataFlow
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


module Four_to_one_Mux_DataFlow(A, B, C, D, a, b, Q);
input A, B, C, D, a, b;
output Q;

assign P1 = ~a & ~b & A; // bitwise operators
assign P2 = a & ~b & B;
assign P3 = ~a & b & C;
assign P4 = a & b & D;

assign Q = P1 | P2| P3 |P4;

endmodule
