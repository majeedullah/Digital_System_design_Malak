`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 01:15:41 PM
// Design Name: 
// Module Name: Priority_encoder
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


module Priority_encoder(I, Q);

input [7:0] I;
output reg [3:0] Q; 


always @ (I)
 begin
  casex (I)
  
  8'b00000001 : Q = 3'b000;
  8'b0000001x : Q = 3'b001;
  8'b000001xx : Q = 3'b010;
  8'b00001xxx : Q = 3'b011;
  8'b0001xxxx : Q = 3'b100;
  8'b001xxxxx : Q = 3'b101;
  8'b01xxxxxx : Q = 3'b110;
  8'b1xxxxxxx : Q = 3'b111;
   default Q= 1'bz;
   endcase
  end

endmodule
