`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 02:48:23 PM
// Design Name: 
// Module Name: Binary_Shifter
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


module Binary_Shifter(s1, s2, s3, s4, data );
input [4:0] data;

output  [4:0] s1, s2, s3, s4;

// logic === lift shifter

   assign s1 = data << 1;
   assign s2 = data << 2;
   assign s3 = data << 3;
   assign s4 = data << 4;
   


endmodule
