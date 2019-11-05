-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Nov  1 17:33:08 2019
-- Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_system_ila_0_0_stub.vhdl
-- Design      : system_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_cl_enable : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_cl_stopstate : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_cl_rxclkactivehs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_cl_ulpsactivenot : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_cl_rxulpsclknot : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_stopstate : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_enable : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxactivehs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxsynchs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidhs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_RX_MIPI_PPI_IF_dl0_forcerxmode : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxclkesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxlpdtesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxulpsesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxdataesc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxtriggeresc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_ulpsactivenot : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_errsoths : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_errsotsynchs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_erresc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl0_errcontrol : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_stopstate : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_enable : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxactivehs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxsynchs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidhs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_RX_MIPI_PPI_IF_dl1_forcerxmode : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxclkesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxlpdtesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxulpsesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxdataesc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxtriggeresc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidesc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_ulpsactivenot : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_errsoths : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_errsotsynchs : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_erresc : in STD_LOGIC;
    SLOT_0_RX_MIPI_PPI_IF_dl1_errcontrol : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_RX_MIPI_PPI_IF_cl_enable,SLOT_0_RX_MIPI_PPI_IF_cl_stopstate,SLOT_0_RX_MIPI_PPI_IF_cl_rxclkactivehs,SLOT_0_RX_MIPI_PPI_IF_cl_ulpsactivenot,SLOT_0_RX_MIPI_PPI_IF_cl_rxulpsclknot,SLOT_0_RX_MIPI_PPI_IF_dl0_stopstate,SLOT_0_RX_MIPI_PPI_IF_dl0_enable,SLOT_0_RX_MIPI_PPI_IF_dl0_rxactivehs,SLOT_0_RX_MIPI_PPI_IF_dl0_rxsynchs,SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidhs,SLOT_0_RX_MIPI_PPI_IF_dl0_rxdatahs[7:0],SLOT_0_RX_MIPI_PPI_IF_dl0_forcerxmode,SLOT_0_RX_MIPI_PPI_IF_dl0_rxclkesc,SLOT_0_RX_MIPI_PPI_IF_dl0_rxlpdtesc,SLOT_0_RX_MIPI_PPI_IF_dl0_rxulpsesc,SLOT_0_RX_MIPI_PPI_IF_dl0_rxdataesc[7:0],SLOT_0_RX_MIPI_PPI_IF_dl0_rxtriggeresc[3:0],SLOT_0_RX_MIPI_PPI_IF_dl0_rxvalidesc,SLOT_0_RX_MIPI_PPI_IF_dl0_ulpsactivenot,SLOT_0_RX_MIPI_PPI_IF_dl0_errsoths,SLOT_0_RX_MIPI_PPI_IF_dl0_errsotsynchs,SLOT_0_RX_MIPI_PPI_IF_dl0_erresc,SLOT_0_RX_MIPI_PPI_IF_dl0_errcontrol,SLOT_0_RX_MIPI_PPI_IF_dl1_stopstate,SLOT_0_RX_MIPI_PPI_IF_dl1_enable,SLOT_0_RX_MIPI_PPI_IF_dl1_rxactivehs,SLOT_0_RX_MIPI_PPI_IF_dl1_rxsynchs,SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidhs,SLOT_0_RX_MIPI_PPI_IF_dl1_rxdatahs[7:0],SLOT_0_RX_MIPI_PPI_IF_dl1_forcerxmode,SLOT_0_RX_MIPI_PPI_IF_dl1_rxclkesc,SLOT_0_RX_MIPI_PPI_IF_dl1_rxlpdtesc,SLOT_0_RX_MIPI_PPI_IF_dl1_rxulpsesc,SLOT_0_RX_MIPI_PPI_IF_dl1_rxdataesc[7:0],SLOT_0_RX_MIPI_PPI_IF_dl1_rxtriggeresc[3:0],SLOT_0_RX_MIPI_PPI_IF_dl1_rxvalidesc,SLOT_0_RX_MIPI_PPI_IF_dl1_ulpsactivenot,SLOT_0_RX_MIPI_PPI_IF_dl1_errsoths,SLOT_0_RX_MIPI_PPI_IF_dl1_errsotsynchs,SLOT_0_RX_MIPI_PPI_IF_dl1_erresc,SLOT_0_RX_MIPI_PPI_IF_dl1_errcontrol";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_d5b8,Vivado 2017.4";
begin
end;
