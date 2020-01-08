// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan  8 16:10:07 2020
// Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_BayerToRGB3_0_0_stub.v
// Design      : system_BayerToRGB3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "BayerToRGB3_v1_0,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s01_axi_master_tdata, s01_axi_master_tstrb, 
  s01_axi_master_tlast, s01_axi_master_tvalid, s01_axi_master_tready, 
  s01_axi_master_aclk, s01_axi_master_aresetn, s00_axi_slave_tdata, s00_axi_slave_tstrb, 
  s00_axi_slave_tlast, s00_axi_slave_tvalid, s00_axi_slave_tready, s00_axi_slave_aclk, 
  s00_axi_slave_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s01_axi_master_tdata[31:0],s01_axi_master_tstrb[3:0],s01_axi_master_tlast,s01_axi_master_tvalid,s01_axi_master_tready,s01_axi_master_aclk,s01_axi_master_aresetn,s00_axi_slave_tdata[31:0],s00_axi_slave_tstrb[3:0],s00_axi_slave_tlast,s00_axi_slave_tvalid,s00_axi_slave_tready,s00_axi_slave_aclk,s00_axi_slave_aresetn" */;
  output [31:0]s01_axi_master_tdata;
  output [3:0]s01_axi_master_tstrb;
  output s01_axi_master_tlast;
  output s01_axi_master_tvalid;
  input s01_axi_master_tready;
  input s01_axi_master_aclk;
  input s01_axi_master_aresetn;
  input [31:0]s00_axi_slave_tdata;
  input [3:0]s00_axi_slave_tstrb;
  input s00_axi_slave_tlast;
  input s00_axi_slave_tvalid;
  output s00_axi_slave_tready;
  input s00_axi_slave_aclk;
  input s00_axi_slave_aresetn;
endmodule
