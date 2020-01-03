-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:rgb_change:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_rgb_change_0_0 IS
  PORT (
    s01_axi_slave_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s01_axi_slave_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_slave_tlast : IN STD_LOGIC;
    s01_axi_slave_tvalid : IN STD_LOGIC;
    s01_axi_slave_tready : OUT STD_LOGIC;
    s01_axi_slave_aclk : IN STD_LOGIC;
    s01_axi_slave_aresetn : IN STD_LOGIC;
    s00_axi_master_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_master_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_master_tlast : OUT STD_LOGIC;
    s00_axi_master_tvalid : OUT STD_LOGIC;
    s00_axi_master_tready : IN STD_LOGIC;
    s00_axi_master_aclk : IN STD_LOGIC;
    s00_axi_master_aresetn : IN STD_LOGIC
  );
END system_rgb_change_0_0;

ARCHITECTURE system_rgb_change_0_0_arch OF system_rgb_change_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_rgb_change_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT rgb_change_v1_0 IS
    GENERIC (
      C_S01_AXI_Slave_TDATA_WIDTH : INTEGER; -- AXI4Stream sink: Data Width
      C_S00_AXI_Master_TDATA_WIDTH : INTEGER; -- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
      C_S00_AXI_Master_START_COUNT : INTEGER -- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
    );
    PORT (
      s01_axi_slave_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s01_axi_slave_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_slave_tlast : IN STD_LOGIC;
      s01_axi_slave_tvalid : IN STD_LOGIC;
      s01_axi_slave_tready : OUT STD_LOGIC;
      s01_axi_slave_aclk : IN STD_LOGIC;
      s01_axi_slave_aresetn : IN STD_LOGIC;
      s00_axi_master_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_master_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_master_tlast : OUT STD_LOGIC;
      s00_axi_master_tvalid : OUT STD_LOGIC;
      s00_axi_master_tready : IN STD_LOGIC;
      s00_axi_master_aclk : IN STD_LOGIC;
      s00_axi_master_aresetn : IN STD_LOGIC
    );
  END COMPONENT rgb_change_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_rgb_change_0_0_arch: ARCHITECTURE IS "rgb_change_v1_0,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_rgb_change_0_0_arch : ARCHITECTURE IS "system_rgb_change_0_0,rgb_change_v1_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_rgb_change_0_0_arch: ARCHITECTURE IS "system_rgb_change_0_0,rgb_change_v1_0,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=rgb_change,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S01_AXI_Slave_TDATA_WIDTH=32,C_S00_AXI_Master_TDATA_WIDTH=32,C_S00_AXI_Master_START_COUNT=32}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_master_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_Master_RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_Master_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_master_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_Master_CLK, ASSOCIATED_BUSIF S00_AXI_Master, ASSOCIATED_RESET s00_axi_master_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_Master_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXI_Master TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXI_Master TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXI_Master TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXI_Master TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_master_tdata: SIGNAL IS "XIL_INTERFACENAME S00_AXI_Master, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_master_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXI_Master TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axi_slave_aresetn: SIGNAL IS "XIL_INTERFACENAME S01_AXI_Slave_RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S01_AXI_Slave_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axi_slave_aclk: SIGNAL IS "XIL_INTERFACENAME S01_AXI_Slave_CLK, ASSOCIATED_BUSIF S01_AXI_Slave, ASSOCIATED_RESET s01_axi_slave_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S01_AXI_Slave_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXI_Slave TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXI_Slave TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXI_Slave TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXI_Slave TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axi_slave_tdata: SIGNAL IS "XIL_INTERFACENAME S01_AXI_Slave, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_slave_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXI_Slave TDATA";
BEGIN
  U0 : rgb_change_v1_0
    GENERIC MAP (
      C_S01_AXI_Slave_TDATA_WIDTH => 32,
      C_S00_AXI_Master_TDATA_WIDTH => 32,
      C_S00_AXI_Master_START_COUNT => 32
    )
    PORT MAP (
      s01_axi_slave_tdata => s01_axi_slave_tdata,
      s01_axi_slave_tstrb => s01_axi_slave_tstrb,
      s01_axi_slave_tlast => s01_axi_slave_tlast,
      s01_axi_slave_tvalid => s01_axi_slave_tvalid,
      s01_axi_slave_tready => s01_axi_slave_tready,
      s01_axi_slave_aclk => s01_axi_slave_aclk,
      s01_axi_slave_aresetn => s01_axi_slave_aresetn,
      s00_axi_master_tdata => s00_axi_master_tdata,
      s00_axi_master_tstrb => s00_axi_master_tstrb,
      s00_axi_master_tlast => s00_axi_master_tlast,
      s00_axi_master_tvalid => s00_axi_master_tvalid,
      s00_axi_master_tready => s00_axi_master_tready,
      s00_axi_master_aclk => s00_axi_master_aclk,
      s00_axi_master_aresetn => s00_axi_master_aresetn
    );
END system_rgb_change_0_0_arch;
