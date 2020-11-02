`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 02:52:17 PM
// Design Name: 
// Module Name: Binary_Shifter_Test
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


module Binary_Shifter_Test( );
reg  [4:0] data;
wire  [4:0] s1, s2, s3, s4;


//instantiation
Binary_Shifter BS1(s1, s2, s3, s4, data );
initial
begin
 #00 data = 5'b00001;
  #10 $stop;

end

endmodule
