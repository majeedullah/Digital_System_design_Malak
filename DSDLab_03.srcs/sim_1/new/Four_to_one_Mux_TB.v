`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 01:24:26 PM
// Design Name: 
// Module Name: Four_to_one_Mux_TB
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


module Four_to_one_Mux_TB();

reg A, B, C, D, a, b;
wire Q;

// instantiate
Four_to_one_Mux_DataFlow inst0(A, B, C, D, a, b, Q);


//signal 
initial
begin
 
   #00 b=0;  a= 0;  {D, C, B, A} = 4'bzzz1;
   #10 b=0;  a= 1;  {D, C, B, A} = 4'bzz1z;
   #10 b=1;  a= 0;  {D, C, B, A} = 4'bz1zz;
   #10 b=1;  a= 1;  {D, C, B, A} = 4'b1zzz;
   
   #10 $stop;
   end
   
endmodule
