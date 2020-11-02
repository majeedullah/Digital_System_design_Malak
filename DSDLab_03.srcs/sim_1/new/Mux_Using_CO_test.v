`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 05:21:45 PM
// Design Name: 
// Module Name: Mux_Using_CO_test
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


module Mux_Using_CO_test();
reg s0, s1, s2, In1, In2, In3, In4, In5, In6, In7, In8;
wire Out;



Mux_using_conditionalOp MC1(Out, s0, s1, s2, In1, In2, In3, In4, In5, In6, In7, In8);
//

initial
begin

  #00 { s2, s1, s0} = 3'b000; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'b1xxx_xxxx;
  #10 { s2, s1, s0} = 3'b001; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bx1xx_xxxx;
  #10 { s2, s1, s0} = 3'b010; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bxx1x_xxxx;
  #10 { s2, s1, s0} = 3'b011; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bxxx1_xxxx;
  #10 { s2, s1, s0} = 3'b100; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bxxxx_1xxx;
  #10 { s2, s1, s0} = 3'b101; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bxxxx_x1xx;
  #10 { s2, s1, s0} = 3'b110; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bxxxx_xx1x;
  #10 { s2, s1, s0} = 3'b111; {In1, In2, In3, In4,  In5, In6, In7, In8} = 8'bxxxx_xxx1;
   #10 $stop;
  
end


endmodule
