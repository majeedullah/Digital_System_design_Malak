`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 04:36:12 PM
// Design Name: 
// Module Name: LabTask
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


module Mux1( A,B, x, y);

input A, B,x ;
output y;


not (xnot, x);


and and1 (g1, A, xnot);
and and2 (g2, x, B);
or or1 (y, g1, g2);



endmodule
