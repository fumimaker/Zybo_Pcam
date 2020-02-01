-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jun 20 15:55:37 2018
-- Host        : elodlt-ro running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/git/Zybo-Z7-20-pcam-5c/repo/vivado-library/ip/MIPI_CSI_2_RX/hdl/ila_rxclk_lane/ila_rxclk_lane_stub.vhdl
-- Design      : ila_rxclk_lane
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_rxclk_lane is
  Port ( 
    clk : in STD_LOGIC;
    trig_out : out STD_LOGIC;
    trig_out_ack : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end ila_rxclk_lane;

architecture stub of ila_rxclk_lane is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,trig_out,trig_out_ack,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2017.4";
begin
end;
