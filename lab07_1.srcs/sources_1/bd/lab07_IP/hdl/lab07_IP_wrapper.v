//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Sun Nov 22 13:38:37 2020
//Host        : B3-LAB307-PC08 running 64-bit major release  (build 9200)
//Command     : generate_target lab07_IP_wrapper.bd
//Design      : lab07_IP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module lab07_IP_wrapper
   (LD0,
    LD1,
    LD2,
    LD3,
    LD4,
    LD5,
    LD6,
    LD7,
    Sw1,
    sw0,
    sw2,
    sw3,
    sw4,
    sw5,
    sw6,
    sw7);
  output LD0;
  output LD1;
  output LD2;
  output LD3;
  output LD4;
  output LD5;
  output LD6;
  output LD7;
  input Sw1;
  input sw0;
  input sw2;
  input sw3;
  input sw4;
  input sw5;
  input sw6;
  input sw7;

  wire LD0;
  wire LD1;
  wire LD2;
  wire LD3;
  wire LD4;
  wire LD5;
  wire LD6;
  wire LD7;
  wire Sw1;
  wire sw0;
  wire sw2;
  wire sw3;
  wire sw4;
  wire sw5;
  wire sw6;
  wire sw7;

  lab07_IP lab07_IP_i
       (.LD0(LD0),
        .LD1(LD1),
        .LD2(LD2),
        .LD3(LD3),
        .LD4(LD4),
        .LD5(LD5),
        .LD6(LD6),
        .LD7(LD7),
        .Sw1(Sw1),
        .sw0(sw0),
        .sw2(sw2),
        .sw3(sw3),
        .sw4(sw4),
        .sw5(sw5),
        .sw6(sw6),
        .sw7(sw7));
endmodule
