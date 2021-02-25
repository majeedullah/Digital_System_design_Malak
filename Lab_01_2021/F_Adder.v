`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 03:29:14 PM
// Design Name: 
// Module Name: F_Adder
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


module F_Adder(sum, cout, a, b, cin  );
output sum, cout;
input a, b, cin;

wire s1, c1, s2;

xor xor1 (s1, a, b);
xor xor2 ( sum, s1, cin);

and and1( c1, a, b);
and and2(s2, s1, cin);

xor xor3(cout, c1, s2);


endmodule
