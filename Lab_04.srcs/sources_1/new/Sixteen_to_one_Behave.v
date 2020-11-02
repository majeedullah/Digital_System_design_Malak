`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 06:22:04 PM
// Design Name: 
// Module Name: Sixteen_to_one_Behave
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


module Sixteen_to_one_Behave(Out, s, in);

input [15:0] in;
input [3:0] s;

output reg Out;

always @ (*)

begin

 
    case (s)   // here we will have 16 if else condition so we should use CASE
      0: Out = in[0];
      1: Out = in[1];
      2: Out = in[2];
      3: Out = in[3];
      4: Out = in[4];
      5: Out = in[5];
      6: Out = in[6];
      7: Out = in[7];
      8: Out = in[8];
      9: Out = in[9];
      10: Out = in[10];
      11: Out = in[11];
      12: Out = in[12];
      13: Out = in[13];
      14: Out = in[14];
      15: Out = in[15];
      default : Out = 1'bz;
      
  endcase
      
end
endmodule
