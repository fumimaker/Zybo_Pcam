// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Nov  1 17:33:08 2019
// Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_system_ila_0_0_stub.v
// Design      : system_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_d5b8,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, SLOT_0_RX_MIPI_PPI_IF_cl_enable, 
  SLOT_0_RX_MIPI_PPI_IF_cl_stopstate, SLOT_0_RX_MIPI_PPI_IF_cl_rxclkactivehs, 
  SLOT_0_RX_MIPI_PPI_IF_cl_ulpsactivenot, SLOT_0_RX_MIPI_PPI_IF_cl_rxulpsclknot, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_stopstate, SLOT_0_RX_MIPI_PPI_IF_dl0_enable, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_rxactivehs, SLOT_0_RX_MIPI_PPI_IF_dl0_rxsynchs, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidhs, SLOT_0_RX_MIPI_PPI_IF_dl0_rxdatahs, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_forcerxmode, SLOT_0_RX_MIPI_PPI_IF_dl0_rxclkesc, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_rxlpdtesc, SLOT_0_RX_MIPI_PPI_IF_dl0_rxulpsesc, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_rxdataesc, SLOT_0_RX_MIPI_PPI_IF_dl0_rxtriggeresc, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidesc, SLOT_0_RX_MIPI_PPI_IF_dl0_ulpsactivenot, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_errsoths, SLOT_0_RX_MIPI_PPI_IF_dl0_errsotsynchs, 
  SLOT_0_RX_MIPI_PPI_IF_dl0_erresc, SLOT_0_RX_MIPI_PPI_IF_dl0_errcontrol, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_stopstate, SLOT_0_RX_MIPI_PPI_IF_dl1_enable, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_rxactivehs, SLOT_0_RX_MIPI_PPI_IF_dl1_rxsynchs, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidhs, SLOT_0_RX_MIPI_PPI_IF_dl1_rxdatahs, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_forcerxmode, SLOT_0_RX_MIPI_PPI_IF_dl1_rxclkesc, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_rxlpdtesc, SLOT_0_RX_MIPI_PPI_IF_dl1_rxulpsesc, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_rxdataesc, SLOT_0_RX_MIPI_PPI_IF_dl1_rxtriggeresc, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidesc, SLOT_0_RX_MIPI_PPI_IF_dl1_ulpsactivenot, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_errsoths, SLOT_0_RX_MIPI_PPI_IF_dl1_errsotsynchs, 
  SLOT_0_RX_MIPI_PPI_IF_dl1_erresc, SLOT_0_RX_MIPI_PPI_IF_dl1_errcontrol)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_RX_MIPI_PPI_IF_cl_enable,SLOT_0_RX_MIPI_PPI_IF_cl_stopstate,SLOT_0_RX_MIPI_PPI_IF_cl_rxclkactivehs,SLOT_0_RX_MIPI_PPI_IF_cl_ulpsactivenot,SLOT_0_RX_MIPI_PPI_IF_cl_rxulpsclknot,SLOT_0_RX_MIPI_PPI_IF_dl0_stopstate,SLOT_0_RX_MIPI_PPI_IF_dl0_enable,SLOT_0_RX_MIPI_PPI_IF_dl0_rxactivehs,SLOT_0_RX_MIPI_PPI_IF_dl0_rxsynchs,SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidhs,SLOT_0_RX_MIPI_PPI_IF_dl0_rxdatahs[7:0],SLOT_0_RX_MIPI_PPI_IF_dl0_forcerxmode,SLOT_0_RX_MIPI_PPI_IF_dl0_rxclkesc,SLOT_0_RX_MIPI_PPI_IF_dl0_rxlpdtesc,SLOT_0_RX_MIPI_PPI_IF_dl0_rxulpsesc,SLOT_0_RX_MIPI_PPI_IF_dl0_rxdataesc[7:0],SLOT_0_RX_MIPI_PPI_IF_dl0_rxtriggeresc[3:0],SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidesc,SLOT_0_RX_MIPI_PPI_IF_dl0_ulpsactivenot,SLOT_0_RX_MIPI_PPI_IF_dl0_errsoths,SLOT_0_RX_MIPI_PPI_IF_dl0_errsotsynchs,SLOT_0_RX_MIPI_PPI_IF_dl0_erresc,SLOT_0_RX_MIPI_PPI_IF_dl0_errcontrol,SLOT_0_RX_MIPI_PPI_IF_dl1_stopstate,SLOT_0_RX_MIPI_PPI_IF_dl1_enable,SLOT_0_RX_MIPI_PPI_IF_dl1_rxactivehs,SLOT_0_RX_MIPI_PPI_IF_dl1_rxsynchs,SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidhs,SLOT_0_RX_MIPI_PPI_IF_dl1_rxdatahs[7:0],SLOT_0_RX_MIPI_PPI_IF_dl1_forcerxmode,SLOT_0_RX_MIPI_PPI_IF_dl1_rxclkesc,SLOT_0_RX_MIPI_PPI_IF_dl1_rxlpdtesc,SLOT_0_RX_MIPI_PPI_IF_dl1_rxulpsesc,SLOT_0_RX_MIPI_PPI_IF_dl1_rxdataesc[7:0],SLOT_0_RX_MIPI_PPI_IF_dl1_rxtriggeresc[3:0],SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidesc,SLOT_0_RX_MIPI_PPI_IF_dl1_ulpsactivenot,SLOT_0_RX_MIPI_PPI_IF_dl1_errsoths,SLOT_0_RX_MIPI_PPI_IF_dl1_errsotsynchs,SLOT_0_RX_MIPI_PPI_IF_dl1_erresc,SLOT_0_RX_MIPI_PPI_IF_dl1_errcontrol" */;
  input clk;
  input SLOT_0_RX_MIPI_PPI_IF_cl_enable;
  input SLOT_0_RX_MIPI_PPI_IF_cl_stopstate;
  input SLOT_0_RX_MIPI_PPI_IF_cl_rxclkactivehs;
  input SLOT_0_RX_MIPI_PPI_IF_cl_ulpsactivenot;
  input SLOT_0_RX_MIPI_PPI_IF_cl_rxulpsclknot;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_stopstate;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_enable;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxactivehs;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxsynchs;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidhs;
  input [7:0]SLOT_0_RX_MIPI_PPI_IF_dl0_rxdatahs;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_forcerxmode;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxclkesc;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxlpdtesc;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxulpsesc;
  input [7:0]SLOT_0_RX_MIPI_PPI_IF_dl0_rxdataesc;
  input [3:0]SLOT_0_RX_MIPI_PPI_IF_dl0_rxtriggeresc;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidesc;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_ulpsactivenot;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_errsoths;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_errsotsynchs;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_erresc;
  input SLOT_0_RX_MIPI_PPI_IF_dl0_errcontrol;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_stopstate;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_enable;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxactivehs;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxsynchs;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidhs;
  input [7:0]SLOT_0_RX_MIPI_PPI_IF_dl1_rxdatahs;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_forcerxmode;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxclkesc;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxlpdtesc;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxulpsesc;
  input [7:0]SLOT_0_RX_MIPI_PPI_IF_dl1_rxdataesc;
  input [3:0]SLOT_0_RX_MIPI_PPI_IF_dl1_rxtriggeresc;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidesc;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_ulpsactivenot;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_errsoths;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_errsotsynchs;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_erresc;
  input SLOT_0_RX_MIPI_PPI_IF_dl1_errcontrol;
endmodule
