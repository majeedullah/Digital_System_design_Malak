`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 01:56:03 PM
// Design Name: 
// Module Name: priority_encTest
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


module priority_encTest();
reg  [7:0] I;
 wire [2:0] Q; 
 
  Priority_encoder G(I, Q);
  
 initial
 begin 
 
      #00 I= 8'b00000001;
      #10 I= 8'b00000010;
      #10 I= 8'b00000100;
      #10 I= 8'b00001000;
      #10 I= 8'b00010000;
      #10 I= 8'b00100000;
      #10 I= 8'b01000000;
      #10 I= 8'b10000000;
      #10 $stop;
      
    end  
endmodule
