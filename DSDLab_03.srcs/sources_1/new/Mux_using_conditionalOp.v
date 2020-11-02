`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 04:55:50 PM
// Design Name: 
// Module Name: Mux_using_conditionalOp
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


module Mux_using_conditionalOp(Out, s0, s1, s2, In1, In2, In3, In4, In5, In6, In7, In8);

input  s0, s1, s2, In1, In2, In3, In4,  In5, In6, In7, In8;
output Out;


// syntax of conditional operatotr    assign Out = condition ? true: false;

//assign Out = S ? In2: In1;     condition for 2 to 1 Mux

//assign Out = s0 ?(s1 ? In4 : In3) :(s1 ? In2: In1);       // 4 to 1 Mux      Nested condition 

assign Out = s2 ?(s1 ? ( s0 ? In8: In7 ) : (s0? In6: In5 )) :(s1 ?(s0?  In4: In3 ): (s0? In2: In1));  // 8 to 1 MuX



endmodule
