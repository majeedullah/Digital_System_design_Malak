`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 06:42:51 PM
// Design Name: 
// Module Name: blinky_sequential
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


module blinky_sequential(clkin, clkout);

input clkin;
output reg clkout;

 reg [31:0] counter;

initial 
begin

   counter = 0;
   clkout = 0;
   end 
   
   
   always@ (posedge clkin)
   
   begin
        counter = counter +1;
          if (counter == 100000000)
          begin  
             counter = 0;
             clkout = ~ clkout;
           end
   

    end


endmodule


////////////////
////////////////

module TB;

reg clkin;
wire clkout;



initial 
clkin = 0;

always 

#5 clkin = ~ clkin;


blinky_sequential  BS1(clkin, clkout);
endmodule
