// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun 20 15:55:37 2018
// Host        : elodlt-ro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/git/Zybo-Z7-20-pcam-5c/repo/vivado-library/ip/MIPI_CSI_2_RX/hdl/ila_rxclk_lane/ila_rxclk_lane_stub.v
// Design      : ila_rxclk_lane
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2017.4" *)
module ila_rxclk_lane(clk, trig_out, trig_out_ack, probe0, probe1, 
  probe2, probe3, probe4, probe5, probe6)
/* synthesis syn_black_box black_box_pad_pin="clk,trig_out,trig_out_ack,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[7:0]" */;
  input clk;
  output trig_out;
  input trig_out_ack;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [7:0]probe6;
endmodule
