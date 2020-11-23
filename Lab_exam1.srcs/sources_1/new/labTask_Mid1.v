`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 04:45:39 PM
// Design Name: 
// Module Name: labTask_Mid1
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


module labTask_Mid1(x1, x2, s, y1, y2 );

input x1, x2, s;
output y1, y2;


Mux1  Muxc( A, B, x, y);


Mux1 Muxc1( .A(x1), .B(x2), .x(s), .y(y1));
Mux1 Muxc2( .A(x2), .B(x1), .x(s), .y(y2));



endmodule
