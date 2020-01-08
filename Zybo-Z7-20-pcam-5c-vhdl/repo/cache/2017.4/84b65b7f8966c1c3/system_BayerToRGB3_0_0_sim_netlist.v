// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan  8 16:10:07 2020
// Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_BayerToRGB3_0_0_sim_netlist.v
// Design      : system_BayerToRGB3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0
   (s00_axi_slave_tready,
    s01_axi_master_tvalid,
    s01_axi_master_tdata,
    s01_axi_master_tstrb,
    s01_axi_master_tlast,
    s00_axi_slave_aclk,
    s00_axi_slave_aresetn,
    s00_axi_slave_tdata,
    s00_axi_slave_tstrb,
    s00_axi_slave_tlast,
    s00_axi_slave_tvalid,
    s01_axi_master_aclk,
    s01_axi_master_aresetn,
    s01_axi_master_tready);
  output s00_axi_slave_tready;
  output s01_axi_master_tvalid;
  output [31:0]s01_axi_master_tdata;
  output [3:0]s01_axi_master_tstrb;
  output s01_axi_master_tlast;
  input s00_axi_slave_aclk;
  input s00_axi_slave_aresetn;
  input [31:0]s00_axi_slave_tdata;
  input [3:0]s00_axi_slave_tstrb;
  input s00_axi_slave_tlast;
  input s00_axi_slave_tvalid;
  input s01_axi_master_aclk;
  input s01_axi_master_aresetn;
  input s01_axi_master_tready;

  wire s00_axi_slave_aclk;
  wire s00_axi_slave_aresetn;
  wire [31:0]s00_axi_slave_tdata;
  wire s00_axi_slave_tlast;
  wire s00_axi_slave_tready;
  wire [3:0]s00_axi_slave_tstrb;
  wire s00_axi_slave_tvalid;
  wire s01_axi_master_aclk;
  wire s01_axi_master_aresetn;
  wire [31:0]s01_axi_master_tdata;
  wire s01_axi_master_tlast;
  wire s01_axi_master_tready;
  wire [3:0]s01_axi_master_tstrb;
  wire s01_axi_master_tvalid;

  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S00_AXI_Slave BayerToRGB3_v1_0_S00_AXI_Slave_inst
       (.S_AXIS_ACLK(s00_axi_slave_aclk),
        .S_AXIS_ARESETN(s00_axi_slave_aresetn),
        .S_AXIS_TDATA(s00_axi_slave_tdata),
        .S_AXIS_TLAST(s00_axi_slave_tlast),
        .S_AXIS_TREADY(s00_axi_slave_tready),
        .S_AXIS_TSTRB(s00_axi_slave_tstrb),
        .S_AXIS_TVALID(s00_axi_slave_tvalid));
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_START_COUNT = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S01_AXI_Master BayerToRGB3_v1_0_S01_AXI_Master_inst
       (.M_AXIS_ACLK(s01_axi_master_aclk),
        .M_AXIS_ARESETN(s01_axi_master_aresetn),
        .M_AXIS_TDATA(s01_axi_master_tdata),
        .M_AXIS_TLAST(s01_axi_master_tlast),
        .M_AXIS_TREADY(s01_axi_master_tready),
        .M_AXIS_TSTRB(s01_axi_master_tstrb),
        .M_AXIS_TVALID(s01_axi_master_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S00_AXI_Slave
   (S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TSTRB,
    S_AXIS_TLAST,
    S_AXIS_TVALID);
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  output S_AXIS_TREADY;
  input [31:0]S_AXIS_TDATA;
  input [3:0]S_AXIS_TSTRB;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S01_AXI_Master
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TSTRB,
    M_AXIS_TLAST,
    M_AXIS_TREADY);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output M_AXIS_TVALID;
  output [31:0]M_AXIS_TDATA;
  output [3:0]M_AXIS_TSTRB;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;


endmodule

(* CHECK_LICENSE_TYPE = "system_BayerToRGB3_0_0,BayerToRGB3_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "BayerToRGB3_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s01_axi_master_tdata,
    s01_axi_master_tstrb,
    s01_axi_master_tlast,
    s01_axi_master_tvalid,
    s01_axi_master_tready,
    s01_axi_master_aclk,
    s01_axi_master_aresetn,
    s00_axi_slave_tdata,
    s00_axi_slave_tstrb,
    s00_axi_slave_tlast,
    s00_axi_slave_tvalid,
    s00_axi_slave_tready,
    s00_axi_slave_aclk,
    s00_axi_slave_aresetn);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXI_Master TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S01_AXI_Master, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef" *) output [31:0]s01_axi_master_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXI_Master TSTRB" *) output [3:0]s01_axi_master_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXI_Master TLAST" *) output s01_axi_master_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXI_Master TVALID" *) output s01_axi_master_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXI_Master TREADY" *) input s01_axi_master_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S01_AXI_Master_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S01_AXI_Master_CLK, ASSOCIATED_BUSIF S01_AXI_Master, ASSOCIATED_RESET s01_axi_master_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1" *) input s01_axi_master_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S01_AXI_Master_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S01_AXI_Master_RST, POLARITY ACTIVE_LOW" *) input s01_axi_master_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXI_Slave TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_Slave, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef" *) input [31:0]s00_axi_slave_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXI_Slave TSTRB" *) input [3:0]s00_axi_slave_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXI_Slave TLAST" *) input s00_axi_slave_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXI_Slave TVALID" *) input s00_axi_slave_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXI_Slave TREADY" *) output s00_axi_slave_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_Slave_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_Slave_CLK, ASSOCIATED_BUSIF S00_AXI_Slave, ASSOCIATED_RESET s00_axi_slave_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1" *) input s00_axi_slave_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_Slave_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_Slave_RST, POLARITY ACTIVE_LOW" *) input s00_axi_slave_aresetn;

  wire s00_axi_slave_aclk;
  wire s00_axi_slave_aresetn;
  wire [31:0]s00_axi_slave_tdata;
  wire s00_axi_slave_tlast;
  wire s00_axi_slave_tready;
  wire [3:0]s00_axi_slave_tstrb;
  wire s00_axi_slave_tvalid;
  wire s01_axi_master_aclk;
  wire s01_axi_master_aresetn;
  wire [31:0]s01_axi_master_tdata;
  wire s01_axi_master_tlast;
  wire s01_axi_master_tready;
  wire [3:0]s01_axi_master_tstrb;
  wire s01_axi_master_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0 U0
       (.s00_axi_slave_aclk(s00_axi_slave_aclk),
        .s00_axi_slave_aresetn(s00_axi_slave_aresetn),
        .s00_axi_slave_tdata(s00_axi_slave_tdata),
        .s00_axi_slave_tlast(s00_axi_slave_tlast),
        .s00_axi_slave_tready(s00_axi_slave_tready),
        .s00_axi_slave_tstrb(s00_axi_slave_tstrb),
        .s00_axi_slave_tvalid(s00_axi_slave_tvalid),
        .s01_axi_master_aclk(s01_axi_master_aclk),
        .s01_axi_master_aresetn(s01_axi_master_aresetn),
        .s01_axi_master_tdata(s01_axi_master_tdata),
        .s01_axi_master_tlast(s01_axi_master_tlast),
        .s01_axi_master_tready(s01_axi_master_tready),
        .s01_axi_master_tstrb(s01_axi_master_tstrb),
        .s01_axi_master_tvalid(s01_axi_master_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
