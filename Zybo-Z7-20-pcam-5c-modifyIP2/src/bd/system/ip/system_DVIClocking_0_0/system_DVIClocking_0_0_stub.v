// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Jan 20 16:20:07 2020
// Host        : DESKTOP-5VC2SBS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/fpga/Documents/Github/Zybo_Pcam/Zybo-Z7-20-pcam-5c-modifyIP2/src/bd/system/ip/system_DVIClocking_0_0/system_DVIClocking_0_0_stub.v
// Design      : system_DVIClocking_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DVIClocking,Vivado 2017.4" *)
module system_DVIClocking_0_0(PixelClk5X, PixelClk, SerialClk, aLockedIn, 
  aLockedOut)
/* synthesis syn_black_box black_box_pad_pin="PixelClk5X,PixelClk,SerialClk,aLockedIn,aLockedOut" */;
  input PixelClk5X;
  output PixelClk;
  output SerialClk;
  input aLockedIn;
  output aLockedOut;
endmodule
