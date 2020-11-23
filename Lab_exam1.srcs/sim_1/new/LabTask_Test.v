`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 05:08:24 PM
// Design Name: 
// Module Name: LabTask_Test
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


module LabTask_Test( );

reg x1, x2, s;
wire  y1, y2;



labTask_Mid1  Mid1(x1, x2, s, y1, y2);

initial
begin

   #00  s = 2'b00;  x1 = 2'b11; x2 = 2'b11;
   #10  s = 2'b01;  x1 = 2'b11; x2 = 2'b11;
   #10  s = 2'b10;  x1 = 2'b11; x2 = 2'b11;
   #10  s = 2'b11;  x1 = 2'b11; x2 = 2'b11;
  


   #10 $stop; 
   
end

endmodule
