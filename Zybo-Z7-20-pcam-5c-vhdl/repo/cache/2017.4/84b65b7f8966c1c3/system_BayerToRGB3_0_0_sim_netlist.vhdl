-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan  8 16:10:07 2020
-- Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_BayerToRGB3_0_0_sim_netlist.vhdl
-- Design      : system_BayerToRGB3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0 is
  port (
    s00_axi_slave_tready : out STD_LOGIC;
    s01_axi_master_tvalid : out STD_LOGIC;
    s01_axi_master_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_master_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_master_tlast : out STD_LOGIC;
    s00_axi_slave_aclk : in STD_LOGIC;
    s00_axi_slave_aresetn : in STD_LOGIC;
    s00_axi_slave_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_slave_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_slave_tlast : in STD_LOGIC;
    s00_axi_slave_tvalid : in STD_LOGIC;
    s01_axi_master_aclk : in STD_LOGIC;
    s01_axi_master_aresetn : in STD_LOGIC;
    s01_axi_master_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S00_AXI_Slave is
  port (
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S00_AXI_Slave;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S01_AXI_Master is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S01_AXI_Master;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of BayerToRGB3_v1_0_S00_AXI_Slave_inst : label is 32;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of BayerToRGB3_v1_0_S01_AXI_Master_inst : label is 32;
  attribute C_M_START_COUNT : integer;
  attribute C_M_START_COUNT of BayerToRGB3_v1_0_S01_AXI_Master_inst : label is 32;
begin
BayerToRGB3_v1_0_S00_AXI_Slave_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S00_AXI_Slave
     port map (
      S_AXIS_ACLK => s00_axi_slave_aclk,
      S_AXIS_ARESETN => s00_axi_slave_aresetn,
      S_AXIS_TDATA(31 downto 0) => s00_axi_slave_tdata(31 downto 0),
      S_AXIS_TLAST => s00_axi_slave_tlast,
      S_AXIS_TREADY => s00_axi_slave_tready,
      S_AXIS_TSTRB(3 downto 0) => s00_axi_slave_tstrb(3 downto 0),
      S_AXIS_TVALID => s00_axi_slave_tvalid
    );
BayerToRGB3_v1_0_S01_AXI_Master_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0_S01_AXI_Master
     port map (
      M_AXIS_ACLK => s01_axi_master_aclk,
      M_AXIS_ARESETN => s01_axi_master_aresetn,
      M_AXIS_TDATA(31 downto 0) => s01_axi_master_tdata(31 downto 0),
      M_AXIS_TLAST => s01_axi_master_tlast,
      M_AXIS_TREADY => s01_axi_master_tready,
      M_AXIS_TSTRB(3 downto 0) => s01_axi_master_tstrb(3 downto 0),
      M_AXIS_TVALID => s01_axi_master_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s01_axi_master_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_master_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_master_tlast : out STD_LOGIC;
    s01_axi_master_tvalid : out STD_LOGIC;
    s01_axi_master_tready : in STD_LOGIC;
    s01_axi_master_aclk : in STD_LOGIC;
    s01_axi_master_aresetn : in STD_LOGIC;
    s00_axi_slave_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_slave_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_slave_tlast : in STD_LOGIC;
    s00_axi_slave_tvalid : in STD_LOGIC;
    s00_axi_slave_tready : out STD_LOGIC;
    s00_axi_slave_aclk : in STD_LOGIC;
    s00_axi_slave_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_BayerToRGB3_0_0,BayerToRGB3_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BayerToRGB3_v1_0,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_slave_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_Slave_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_slave_aclk : signal is "XIL_INTERFACENAME S00_AXI_Slave_CLK, ASSOCIATED_BUSIF S00_AXI_Slave, ASSOCIATED_RESET s00_axi_slave_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1";
  attribute x_interface_info of s00_axi_slave_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_Slave_RST RST";
  attribute x_interface_parameter of s00_axi_slave_aresetn : signal is "XIL_INTERFACENAME S00_AXI_Slave_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_slave_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXI_Slave TLAST";
  attribute x_interface_info of s00_axi_slave_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXI_Slave TREADY";
  attribute x_interface_info of s00_axi_slave_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXI_Slave TVALID";
  attribute x_interface_info of s01_axi_master_aclk : signal is "xilinx.com:signal:clock:1.0 S01_AXI_Master_CLK CLK";
  attribute x_interface_parameter of s01_axi_master_aclk : signal is "XIL_INTERFACENAME S01_AXI_Master_CLK, ASSOCIATED_BUSIF S01_AXI_Master, ASSOCIATED_RESET s01_axi_master_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1";
  attribute x_interface_info of s01_axi_master_aresetn : signal is "xilinx.com:signal:reset:1.0 S01_AXI_Master_RST RST";
  attribute x_interface_parameter of s01_axi_master_aresetn : signal is "XIL_INTERFACENAME S01_AXI_Master_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s01_axi_master_tlast : signal is "xilinx.com:interface:axis:1.0 S01_AXI_Master TLAST";
  attribute x_interface_info of s01_axi_master_tready : signal is "xilinx.com:interface:axis:1.0 S01_AXI_Master TREADY";
  attribute x_interface_info of s01_axi_master_tvalid : signal is "xilinx.com:interface:axis:1.0 S01_AXI_Master TVALID";
  attribute x_interface_info of s00_axi_slave_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXI_Slave TDATA";
  attribute x_interface_parameter of s00_axi_slave_tdata : signal is "XIL_INTERFACENAME S00_AXI_Slave, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef";
  attribute x_interface_info of s00_axi_slave_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXI_Slave TSTRB";
  attribute x_interface_info of s01_axi_master_tdata : signal is "xilinx.com:interface:axis:1.0 S01_AXI_Master TDATA";
  attribute x_interface_parameter of s01_axi_master_tdata : signal is "XIL_INTERFACENAME S01_AXI_Master, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef";
  attribute x_interface_info of s01_axi_master_tstrb : signal is "xilinx.com:interface:axis:1.0 S01_AXI_Master TSTRB";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BayerToRGB3_v1_0
     port map (
      s00_axi_slave_aclk => s00_axi_slave_aclk,
      s00_axi_slave_aresetn => s00_axi_slave_aresetn,
      s00_axi_slave_tdata(31 downto 0) => s00_axi_slave_tdata(31 downto 0),
      s00_axi_slave_tlast => s00_axi_slave_tlast,
      s00_axi_slave_tready => s00_axi_slave_tready,
      s00_axi_slave_tstrb(3 downto 0) => s00_axi_slave_tstrb(3 downto 0),
      s00_axi_slave_tvalid => s00_axi_slave_tvalid,
      s01_axi_master_aclk => s01_axi_master_aclk,
      s01_axi_master_aresetn => s01_axi_master_aresetn,
      s01_axi_master_tdata(31 downto 0) => s01_axi_master_tdata(31 downto 0),
      s01_axi_master_tlast => s01_axi_master_tlast,
      s01_axi_master_tready => s01_axi_master_tready,
      s01_axi_master_tstrb(3 downto 0) => s01_axi_master_tstrb(3 downto 0),
      s01_axi_master_tvalid => s01_axi_master_tvalid
    );
end STRUCTURE;
