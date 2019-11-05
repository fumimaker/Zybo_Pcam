// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Nov  5 18:22:19 2019
// Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_in5, probe_in6, probe_in7, probe_out0, probe_out1, probe_out2, probe_out3, 
  probe_out4, probe_out5, probe_out6, probe_out7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_in1[1:0],probe_in2[1:0],probe_in3[1:0],probe_in4[0:0],probe_in5[0:0],probe_in6[0:0],probe_in7[0:0],probe_out0[31:0],probe_out1[1:0],probe_out2[1:0],probe_out3[0:0],probe_out4[0:0],probe_out5[0:0],probe_out6[0:0],probe_out7[0:0]" */;
  input clk;
  input [31:0]probe_in0;
  input [1:0]probe_in1;
  input [1:0]probe_in2;
  input [1:0]probe_in3;
  input [0:0]probe_in4;
  input [0:0]probe_in5;
  input [0:0]probe_in6;
  input [0:0]probe_in7;
  output [31:0]probe_out0;
  output [1:0]probe_out1;
  output [1:0]probe_out2;
  output [0:0]probe_out3;
  output [0:0]probe_out4;
  output [0:0]probe_out5;
  output [0:0]probe_out6;
  output [0:0]probe_out7;
endmodule
