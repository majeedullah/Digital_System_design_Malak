`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 04:44:43 PM
// Design Name: 
// Module Name: Carry_lookAhead_Adder
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


module Carry_lookAhead_Adder(cout, cin, A, B, sum, p, g, c  );
input [3:0] A, B;
input  cin;
output [3:0]sum;
output cout;
 

output [3:0] p, g, c;

assign p[3:0] = A[3:0] ^ B[3:0] ;

assign g [3:0] = A[3:0] & B[3:0] ;

  assign c[0] = g[0] | ( cin & p[0]);
  assign c[1] = g[1] | ( p[1] & g[0] ) | (p[0] & p[1] & cin);
  assign c[2] = g[2] | ( p[2] & g[1] )  | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
  assign c[3] = g[3] | ( p[3] & g[3] )  | (p[3] & p[2] & p[1] & g[0] ) |  (p[3] & p[2] & p[1] & cin );
  
  
  assign sum[0] = p[0] + cin;
  assign sum[1] = p[1] + c[0];
  assign sum[2] = p[2] + c[1];
  assign sum[3] = p[3] + c[2];
  
 assign cout = c[3];
 
endmodule


module TB;

reg [3:0] A, B;
reg  cin;
wire [3:0]sum;
wire cout;
wire [3:0] p, g, c;

Carry_lookAhead_Adder CLAA(cout, cin, A, B, sum, p, g, c  );

initial 
begin
  #00 A= 0; B= 0; cin = 0;
  #10 A= 0; B= 1; cin = 0;
  #10 A= 1; B= 0; cin = 0;
  #10 A= 1; B= 1; cin = 0;
  
  
  
 #10 $stop;
 


end

endmodule 
