`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IBA Unive
// Engineer: Malak MAjeedullah khan
// 
// Create Date: 09/28/2020 12:33:44 PM
// Design Name: 
// Module Name: FA_using_HA
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
module FA_using_HAs(Sum, Carry, A, B, Cin);
input A, B, Cin;
output Sum, Carry;

// wires are initialised by default; else  
wire s1, c1, c2;

// logic
// HA instatiation by order
Half_Adder HA1(c1, s1, A, B);

// HA instatiation by name
Half_Adder HA2(.Carry(c2), .Sum(Sum), .A(s1), .B(Cin));

or or1(Carry, c1, c2);


endmodule


