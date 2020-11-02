`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 04:48:20 PM
// Design Name: 
// Module Name: Reduction_operator_test
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


module Reduction_operator_test();
//reg [7:0] In;
wire OutAnd, OutOr, OutXor;


 assign OutAnd = & 8'b1111_1110;
 assign OutOr = | 8'b1111_1010;
 assign OutXor = ^ 8'b1010_1010;
 
endmodule
