`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University                                                     
// Engineer: Malak Majeed Ullah khan
// 
// Create Date: 10/15/2020 04:26:48 PM
// Design Name:  Multiplexer combinational circuits
// Module Name: Multiplexer_behavioural_model
// Project Name:  Lab_04
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


module Multiplexer_behavioural_model(Out, In, s);
input wire [3:0] In;
input wire [1:0] s;
output reg Out;

// logic

always @ (*)    //sensitivity list  (for combinational we can use staric (*) to denote all )
begin

        //Algorithm
      if ( s == 2'b00)
          Out = In[0];
          else if (s == 2'b01)
           Out = In[1];
          else if (s == 2'b10)
             Out = In[2];  
          else if (s == 2'b11)
            Out = In[3];
          else Out = 1'bz;
             
 end       
endmodule



module TB;

reg [3:0] In;
reg [1:0] s;
wire Out;

 Multiplexer_behavioural_model MBM(Out, In, s);
 initial
 begin
 
      #00 s= 2'b00; In = 4'bxxx1;
      #10 s= 2'b01; In = 4'bxx1x;
      #10 s= 2'b10; In = 4'bx1xx;
      #10 s= 2'b11; In = 4'b1xxx;
      #10 s= 2'bxx; In = 4'b1111;
      
      #10 $stop;
 end
 
 endmodule
 
