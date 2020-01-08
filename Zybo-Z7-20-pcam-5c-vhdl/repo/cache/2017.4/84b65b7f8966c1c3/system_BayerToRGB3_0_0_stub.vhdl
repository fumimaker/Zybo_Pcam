-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan  8 16:10:07 2020
-- Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_BayerToRGB3_0_0_stub.vhdl
-- Design      : system_BayerToRGB3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s01_axi_master_tdata[31:0],s01_axi_master_tstrb[3:0],s01_axi_master_tlast,s01_axi_master_tvalid,s01_axi_master_tready,s01_axi_master_aclk,s01_axi_master_aresetn,s00_axi_slave_tdata[31:0],s00_axi_slave_tstrb[3:0],s00_axi_slave_tlast,s00_axi_slave_tvalid,s00_axi_slave_tready,s00_axi_slave_aclk,s00_axi_slave_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "BayerToRGB3_v1_0,Vivado 2017.4";
begin
end;
