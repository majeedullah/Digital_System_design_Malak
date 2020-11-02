`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 04:43:44 PM
// Design Name: 
// Module Name: Reduction_Operator
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


module Reduction_Operator(OutAnd, OutOr, OutXor, In);
 input [7:0] In;
 
 output OutAnd, OutOr, OutXor;
 
 //logic
 
 assign OutAnd = & 8'b1111_1110;
 assign OutOr = | 8'b1111_1010;
 assign OutXor = ^ 8'b1010_1010;
endmodule
