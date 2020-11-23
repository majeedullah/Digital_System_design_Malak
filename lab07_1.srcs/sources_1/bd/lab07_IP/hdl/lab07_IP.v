//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Sun Nov 22 13:38:37 2020
//Host        : B3-LAB307-PC08 running 64-bit major release  (build 9200)
//Command     : generate_target lab07_IP.bd
//Design      : lab07_IP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "lab07_IP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=lab07_IP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "lab07_IP.hwdef" *) 
module lab07_IP
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

  wire Sw1_1;
  wire sw0_1;
  wire sw2_1;
  wire sw3_1;
  wire sw4_1;
  wire sw5_1;
  wire sw6_1;
  wire sw7_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_nor2_0_y;

  assign LD0 = xup_inv_0_y;
  assign LD1 = xup_and2_0_y;
  assign LD2 = xup_nor2_0_y;
  assign LD3 = xup_and2_1_y;
  assign LD4 = sw4_1;
  assign LD5 = sw5_1;
  assign LD6 = sw6_1;
  assign LD7 = sw7_1;
  assign Sw1_1 = Sw1;
  assign sw0_1 = sw0;
  assign sw2_1 = sw2;
  assign sw3_1 = sw3;
  assign sw4_1 = sw4;
  assign sw5_1 = sw5;
  assign sw6_1 = sw6;
  assign sw7_1 = sw7;
  lab07_IP_xup_and2_0_0 xup_and2_0
       (.a(Sw1_1),
        .b(xup_inv_1_y),
        .y(xup_and2_0_y));
  lab07_IP_xup_and2_0_2 xup_and2_1
       (.a(sw2_1),
        .b(sw3_1),
        .y(xup_and2_1_y));
  lab07_IP_xup_inv_0_0 xup_inv_0
       (.a(sw0_1),
        .y(xup_inv_0_y));
  lab07_IP_xup_inv_0_1 xup_inv_1
       (.a(sw2_1),
        .y(xup_inv_1_y));
  lab07_IP_xup_nor2_0_0 xup_nor2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_nor2_0_y));
endmodule
