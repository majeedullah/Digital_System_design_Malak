`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 02:30:50 PM
// Design Name: 
// Module Name: Comparator_DataFlow
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


module Comparator_DataFlow( A_lt_B, A_gt_B, A_eq_B, A, B);

input A, B;
output  A_lt_B, A_gt_B, A_eq_B;


// logic
assign A_ltB = A < B;
assign A_gt_B = A > B;
assign A_eq_B = A == B;


endmodule
