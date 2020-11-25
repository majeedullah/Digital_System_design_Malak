`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 01:15:32 PM
// Design Name: 
// Module Name: D_Fliplop
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



    
    
    
module D_fliplopfile(clk, reset, D, Q);
parameter N = 16; // coeffient wordlength
input clk, reset;
input [N-1:0] D;
output  reg [N-1:0] Q;
always@(posedge clk, posedge reset)
 if (reset)
 Q <= 0;
 else
 Q <= D;

endmodule
