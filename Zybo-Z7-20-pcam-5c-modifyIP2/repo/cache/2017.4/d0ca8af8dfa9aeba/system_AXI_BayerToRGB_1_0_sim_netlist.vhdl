-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Jan 19 16:45:37 2020
-- Host        : DESKTOP-5VC2SBS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_AXI_BayerToRGB_1_0_sim_netlist.vhdl
-- Design      : system_AXI_BayerToRGB_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_BayerToRGB is
  port (
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_tready : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    StreamClk : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_BayerToRGB;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_BayerToRGB is
  signal \^m_axis_video_tvalid\ : STD_LOGIC;
  signal m_axis_video_tvalid_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sAXIMasterBlue1 : STD_LOGIC;
  signal \sAXIMasterBlue[9]_i_1_n_0\ : STD_LOGIC;
  signal sAXI_SlaveLastAsserted_i_1_n_0 : STD_LOGIC;
  signal sAXI_SlaveLastAsserted_reg_n_0 : STD_LOGIC;
  signal \sCntColumns[10]_i_1_n_0\ : STD_LOGIC;
  signal \sCntColumns[10]_i_3_n_0\ : STD_LOGIC;
  signal \sCntColumns_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sCntRemPixels[0]_i_1_n_0\ : STD_LOGIC;
  signal \sCntRemPixels[1]_i_1_n_0\ : STD_LOGIC;
  signal \sCntRemPixels_reg_n_0_[0]\ : STD_LOGIC;
  signal \sCntRemPixels_reg_n_0_[1]\ : STD_LOGIC;
  signal sCoverInitialLatency : STD_LOGIC;
  signal sCoverInitialLatency_i_1_n_0 : STD_LOGIC;
  signal sLineBufferWriteData : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_2_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_3_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_4_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstLine]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][Last]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][Last]_i_2_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][Last]_i_3_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][User]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][FirstColumn]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][FirstLine]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][Last]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][User]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][FirstColumn]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][FirstLine]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][Last]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][User]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][FirstColumn]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][FirstLine]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][Last]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][User]__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sCntColumns[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sCntColumns[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sCntColumns[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sCntColumns[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sCntColumns[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sCntColumns[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sCntColumns[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sCntColumns[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sCntRemPixels[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sCntRemPixels[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sStrobesShiftReg[0][FirstColumn]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sStrobesShiftReg[0][Last]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sStrobesShiftReg[0][Last]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axis_video_tready_INST_0 : label is "soft_lutpair2";
begin
  m_axis_video_tvalid <= \^m_axis_video_tvalid\;
m_axis_video_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FFFFFE000000"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => \sCntRemPixels_reg_n_0_[0]\,
      I3 => sCoverInitialLatency,
      I4 => m_axis_video_tready,
      I5 => \^m_axis_video_tvalid\,
      O => m_axis_video_tvalid_i_1_n_0
    );
m_axis_video_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => m_axis_video_tvalid_i_1_n_0,
      Q => \^m_axis_video_tvalid\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sAXIMasterBlue[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sStreamReset_n,
      O => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sAXIMasterBlue[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sCntRemPixels_reg_n_0_[0]\,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => s_axis_video_tvalid,
      I3 => m_axis_video_tready,
      O => sLineBufferWriteData
    );
\sAXIMasterBlue[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      I1 => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      O => sAXIMasterBlue1
    );
\sAXIMasterBlue_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => sAXIMasterBlue1,
      Q => m_axis_video_tdata(0),
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
sAXI_SlaveLastAsserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAAEAAA0AAAAA"
    )
        port map (
      I0 => sAXI_SlaveLastAsserted_reg_n_0,
      I1 => s_axis_video_tvalid,
      I2 => m_axis_video_tready,
      I3 => \sCntRemPixels_reg_n_0_[1]\,
      I4 => \sCntRemPixels_reg_n_0_[0]\,
      I5 => s_axis_video_tlast,
      O => sAXI_SlaveLastAsserted_i_1_n_0
    );
sAXI_SlaveLastAsserted_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => sAXI_SlaveLastAsserted_i_1_n_0,
      Q => sAXI_SlaveLastAsserted_reg_n_0,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sCntColumns[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sCntColumns_reg__0\(0),
      O => plusOp(0)
    );
\sCntColumns[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2000FFFF"
    )
        port map (
      I0 => \sCntRemPixels_reg_n_0_[0]\,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => sAXI_SlaveLastAsserted_reg_n_0,
      I3 => m_axis_video_tready,
      I4 => sStreamReset_n,
      O => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(9),
      I1 => \sCntColumns_reg__0\(7),
      I2 => \sCntColumns[10]_i_3_n_0\,
      I3 => \sCntColumns_reg__0\(6),
      I4 => \sCntColumns_reg__0\(8),
      I5 => \sCntColumns_reg__0\(10),
      O => plusOp(10)
    );
\sCntColumns[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \sCntColumns_reg__0\(4),
      I1 => \sCntColumns_reg__0\(2),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(1),
      I4 => \sCntColumns_reg__0\(3),
      I5 => \sCntColumns_reg__0\(5),
      O => \sCntColumns[10]_i_3_n_0\
    );
\sCntColumns[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sCntColumns_reg__0\(0),
      I1 => \sCntColumns_reg__0\(1),
      O => plusOp(1)
    );
\sCntColumns[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sCntColumns_reg__0\(1),
      I1 => \sCntColumns_reg__0\(0),
      I2 => \sCntColumns_reg__0\(2),
      O => plusOp(2)
    );
\sCntColumns[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sCntColumns_reg__0\(2),
      I1 => \sCntColumns_reg__0\(0),
      I2 => \sCntColumns_reg__0\(1),
      I3 => \sCntColumns_reg__0\(3),
      O => plusOp(3)
    );
\sCntColumns[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(3),
      I1 => \sCntColumns_reg__0\(1),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(2),
      I4 => \sCntColumns_reg__0\(4),
      O => plusOp(4)
    );
\sCntColumns[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(4),
      I1 => \sCntColumns_reg__0\(2),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(1),
      I4 => \sCntColumns_reg__0\(3),
      I5 => \sCntColumns_reg__0\(5),
      O => plusOp(5)
    );
\sCntColumns[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sCntColumns[10]_i_3_n_0\,
      I1 => \sCntColumns_reg__0\(6),
      O => plusOp(6)
    );
\sCntColumns[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \sCntColumns_reg__0\(6),
      I1 => \sCntColumns[10]_i_3_n_0\,
      I2 => \sCntColumns_reg__0\(7),
      O => plusOp(7)
    );
\sCntColumns[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \sCntColumns_reg__0\(7),
      I1 => \sCntColumns[10]_i_3_n_0\,
      I2 => \sCntColumns_reg__0\(6),
      I3 => \sCntColumns_reg__0\(8),
      O => plusOp(8)
    );
\sCntColumns[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \sCntColumns_reg__0\(8),
      I1 => \sCntColumns_reg__0\(6),
      I2 => \sCntColumns[10]_i_3_n_0\,
      I3 => \sCntColumns_reg__0\(7),
      I4 => \sCntColumns_reg__0\(9),
      O => plusOp(9)
    );
\sCntColumns_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(0),
      Q => \sCntColumns_reg__0\(0),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(10),
      Q => \sCntColumns_reg__0\(10),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(1),
      Q => \sCntColumns_reg__0\(1),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(2),
      Q => \sCntColumns_reg__0\(2),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(3),
      Q => \sCntColumns_reg__0\(3),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(4),
      Q => \sCntColumns_reg__0\(4),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(5),
      Q => \sCntColumns_reg__0\(5),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(6),
      Q => \sCntColumns_reg__0\(6),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(7),
      Q => \sCntColumns_reg__0\(7),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(8),
      Q => \sCntColumns_reg__0\(8),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => plusOp(9),
      Q => \sCntColumns_reg__0\(9),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntRemPixels[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \sCntRemPixels_reg_n_0_[0]\,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => s_axis_video_tvalid,
      O => \sCntRemPixels[0]_i_1_n_0\
    );
\sCntRemPixels[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => \sCntRemPixels_reg_n_0_[0]\,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => s_axis_video_tvalid,
      O => \sCntRemPixels[1]_i_1_n_0\
    );
\sCntRemPixels_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sCntRemPixels[0]_i_1_n_0\,
      Q => \sCntRemPixels_reg_n_0_[0]\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sCntRemPixels_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sCntRemPixels[1]_i_1_n_0\,
      Q => \sCntRemPixels_reg_n_0_[1]\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
sCoverInitialLatency_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sStrobesShiftReg_reg[1][User]__0\,
      I1 => sCoverInitialLatency,
      O => sCoverInitialLatency_i_1_n_0
    );
sCoverInitialLatency_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => sCoverInitialLatency_i_1_n_0,
      Q => sCoverInitialLatency,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF808080008080"
    )
        port map (
      I0 => \sStrobesShiftReg[0][FirstColumn]_i_2_n_0\,
      I1 => \sStrobesShiftReg[0][FirstColumn]_i_3_n_0\,
      I2 => \sStrobesShiftReg[0][FirstColumn]_i_4_n_0\,
      I3 => sLineBufferWriteData,
      I4 => sStreamReset_n,
      I5 => \sStrobesShiftReg_reg[0][FirstColumn]__0\,
      O => \sStrobesShiftReg[0][FirstColumn]_i_1_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \sCntRemPixels_reg_n_0_[0]\,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => sAXI_SlaveLastAsserted_reg_n_0,
      O => \sStrobesShiftReg[0][FirstColumn]_i_2_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(8),
      I1 => \sCntColumns_reg__0\(9),
      I2 => \sCntColumns_reg__0\(6),
      I3 => \sCntColumns_reg__0\(7),
      I4 => \sCntColumns_reg__0\(10),
      I5 => sStreamReset_n,
      O => \sStrobesShiftReg[0][FirstColumn]_i_3_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sCntColumns_reg__0\(2),
      I1 => \sCntColumns_reg__0\(3),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(1),
      I4 => \sCntColumns_reg__0\(5),
      I5 => \sCntColumns_reg__0\(4),
      O => \sStrobesShiftReg[0][FirstColumn]_i_4_n_0\
    );
\sStrobesShiftReg[0][FirstLine]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00C00000"
    )
        port map (
      I0 => \sStrobesShiftReg_reg[0][Last]__0\,
      I1 => s_axis_video_tvalid,
      I2 => m_axis_video_tready,
      I3 => \sStrobesShiftReg[0][Last]_i_3_n_0\,
      I4 => s_axis_video_tuser,
      I5 => \sStrobesShiftReg_reg[0][FirstLine]__0\,
      O => \sStrobesShiftReg[0][FirstLine]_i_1_n_0\
    );
\sStrobesShiftReg[0][Last]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A8A8A8A8A8A8"
    )
        port map (
      I0 => sStreamReset_n,
      I1 => \sStrobesShiftReg[0][Last]_i_2_n_0\,
      I2 => \sStrobesShiftReg_reg[0][Last]__0\,
      I3 => \sStrobesShiftReg[0][Last]_i_3_n_0\,
      I4 => m_axis_video_tready,
      I5 => s_axis_video_tvalid,
      O => \sStrobesShiftReg[0][Last]_i_1_n_0\
    );
\sStrobesShiftReg[0][Last]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => sAXI_SlaveLastAsserted_reg_n_0,
      I2 => \sCntRemPixels_reg_n_0_[1]\,
      I3 => \sCntRemPixels_reg_n_0_[0]\,
      O => \sStrobesShiftReg[0][Last]_i_2_n_0\
    );
\sStrobesShiftReg[0][Last]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sCntRemPixels_reg_n_0_[0]\,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      O => \sStrobesShiftReg[0][Last]_i_3_n_0\
    );
\sStrobesShiftReg[0][User]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => s_axis_video_tuser,
      I2 => \sCntRemPixels_reg_n_0_[1]\,
      I3 => \sCntRemPixels_reg_n_0_[0]\,
      I4 => m_axis_video_tready,
      I5 => \sStrobesShiftReg_reg[0][User]__0\,
      O => \sStrobesShiftReg[0][User]_i_1_n_0\
    );
\sStrobesShiftReg_reg[0][FirstColumn]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][FirstColumn]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][FirstColumn]__0\,
      R => '0'
    );
\sStrobesShiftReg_reg[0][FirstLine]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][FirstLine]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][FirstLine]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[0][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][Last]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][Last]__0\,
      R => '0'
    );
\sStrobesShiftReg_reg[0][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][User]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][User]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][FirstColumn]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[0][FirstColumn]__0\,
      Q => \sStrobesShiftReg_reg[1][FirstColumn]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][FirstLine]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[0][FirstLine]__0\,
      Q => \sStrobesShiftReg_reg[1][FirstLine]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[0][Last]__0\,
      Q => \sStrobesShiftReg_reg[1][Last]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[0][User]__0\,
      Q => \sStrobesShiftReg_reg[1][User]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][FirstColumn]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[1][FirstColumn]__0\,
      Q => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][FirstLine]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[1][FirstLine]__0\,
      Q => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[1][Last]__0\,
      Q => \sStrobesShiftReg_reg[2][Last]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[1][User]__0\,
      Q => \sStrobesShiftReg_reg[2][User]__0\,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[3][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[2][Last]__0\,
      Q => m_axis_video_tlast,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[3][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferWriteData,
      D => \sStrobesShiftReg_reg[2][User]__0\,
      Q => m_axis_video_tuser,
      R => \sAXIMasterBlue[9]_i_1_n_0\
    );
s_axis_video_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => \sCntRemPixels_reg_n_0_[1]\,
      I2 => \sCntRemPixels_reg_n_0_[0]\,
      O => s_axis_video_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    StreamClk : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_AXI_BayerToRGB_1_0,AXI_BayerToRGB,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI_BayerToRGB,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 19 to 19 );
  attribute x_interface_info : string;
  attribute x_interface_info of StreamClk : signal is "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of StreamClk : signal is "XIL_INTERFACENAME AXI_Stream_Clk, ASSOCIATED_BUSIF AXI_Stream_Master:AXI_Slave_Interface, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY";
  attribute x_interface_parameter of m_axis_video_tready : signal is "XIL_INTERFACENAME AXI_Stream_Master, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef";
  attribute x_interface_info of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID";
  attribute x_interface_info of sStreamReset_n : signal is "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST";
  attribute x_interface_parameter of sStreamReset_n : signal is "XIL_INTERFACENAME AXI_Stream_Reset_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST";
  attribute x_interface_info of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY";
  attribute x_interface_parameter of s_axis_video_tready : signal is "XIL_INTERFACENAME AXI_Slave_Interface, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef";
  attribute x_interface_info of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER";
  attribute x_interface_info of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA";
  attribute x_interface_info of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA";
begin
  m_axis_video_tdata(31) <= \<const0>\;
  m_axis_video_tdata(30) <= \<const0>\;
  m_axis_video_tdata(29) <= \^m_axis_video_tdata\(19);
  m_axis_video_tdata(28) <= \<const0>\;
  m_axis_video_tdata(27) <= \<const0>\;
  m_axis_video_tdata(26) <= \<const0>\;
  m_axis_video_tdata(25) <= \<const0>\;
  m_axis_video_tdata(24) <= \<const0>\;
  m_axis_video_tdata(23) <= \<const0>\;
  m_axis_video_tdata(22) <= \<const0>\;
  m_axis_video_tdata(21) <= \<const0>\;
  m_axis_video_tdata(20) <= \<const0>\;
  m_axis_video_tdata(19) <= \^m_axis_video_tdata\(19);
  m_axis_video_tdata(18) <= \<const0>\;
  m_axis_video_tdata(17) <= \<const0>\;
  m_axis_video_tdata(16) <= \<const0>\;
  m_axis_video_tdata(15) <= \<const0>\;
  m_axis_video_tdata(14) <= \<const0>\;
  m_axis_video_tdata(13) <= \<const0>\;
  m_axis_video_tdata(12) <= \<const0>\;
  m_axis_video_tdata(11) <= \<const0>\;
  m_axis_video_tdata(10) <= \<const0>\;
  m_axis_video_tdata(9) <= \^m_axis_video_tdata\(19);
  m_axis_video_tdata(8) <= \<const0>\;
  m_axis_video_tdata(7) <= \<const0>\;
  m_axis_video_tdata(6) <= \<const0>\;
  m_axis_video_tdata(5) <= \<const0>\;
  m_axis_video_tdata(4) <= \<const0>\;
  m_axis_video_tdata(3) <= \<const0>\;
  m_axis_video_tdata(2) <= \<const0>\;
  m_axis_video_tdata(1) <= \<const0>\;
  m_axis_video_tdata(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_BayerToRGB
     port map (
      StreamClk => StreamClk,
      m_axis_video_tdata(0) => \^m_axis_video_tdata\(19),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid => m_axis_video_tvalid,
      sStreamReset_n => sStreamReset_n,
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
