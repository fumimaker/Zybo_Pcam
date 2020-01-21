// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jan 21 15:34:23 2020
// Host        : LAB-WIN10P-SS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top system_AXI_BayerToRGB_1_0 -prefix
//               system_AXI_BayerToRGB_1_0_ system_AXI_BayerToRGB_1_0_sim_netlist.v
// Design      : system_AXI_BayerToRGB_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_AXI_BayerToRGB_1_0_AXI_BayerToRGB
   (m_axis_video_tuser,
    m_axis_video_tlast,
    s_axis_video_tready,
    led,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    s_axis_video_tvalid,
    sStreamReset_n,
    m_axis_video_tready,
    StreamClk,
    s_axis_video_tuser,
    s_axis_video_tdata,
    sw,
    s_axis_video_tlast);
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output s_axis_video_tready;
  output [0:0]led;
  output [29:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input s_axis_video_tvalid;
  input sStreamReset_n;
  input m_axis_video_tready;
  input StreamClk;
  input s_axis_video_tuser;
  input [39:0]s_axis_video_tdata;
  input [2:0]sw;
  input s_axis_video_tlast;

  wire LineBufferInst_n_10;
  wire LineBufferInst_n_11;
  wire LineBufferInst_n_12;
  wire LineBufferInst_n_13;
  wire LineBufferInst_n_14;
  wire LineBufferInst_n_15;
  wire LineBufferInst_n_16;
  wire LineBufferInst_n_17;
  wire LineBufferInst_n_18;
  wire LineBufferInst_n_19;
  wire StreamClk;
  wire [0:0]led;
  wire \led[3]_INST_0_i_1_n_0 ;
  wire \led[3]_INST_0_i_2_n_0 ;
  wire \led[3]_INST_0_i_3_n_0 ;
  wire \led[3]_INST_0_i_4_n_0 ;
  wire \led[3]_INST_0_i_5_n_0 ;
  wire \led[3]_INST_0_i_6_n_0 ;
  wire [29:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire m_axis_video_tvalid_i_1_n_0;
  wire m_axis_video_tvalid_i_2_n_0;
  wire [9:0]p_0_in;
  wire [29:0]p_1_in;
  wire [9:0]p_2_in;
  wire [10:0]plusOp;
  wire \sAXIMasterBlue[0]_i_1_n_0 ;
  wire \sAXIMasterBlue[1]_i_1_n_0 ;
  wire \sAXIMasterBlue[2]_i_1_n_0 ;
  wire \sAXIMasterBlue[3]_i_1_n_0 ;
  wire \sAXIMasterBlue[4]_i_1_n_0 ;
  wire \sAXIMasterBlue[5]_i_1_n_0 ;
  wire \sAXIMasterBlue[6]_i_1_n_0 ;
  wire \sAXIMasterBlue[7]_i_1_n_0 ;
  wire \sAXIMasterBlue[8]_i_1_n_0 ;
  wire \sAXIMasterBlue[9]_i_1_n_0 ;
  wire \sAXIMasterBlue[9]_i_2_n_0 ;
  wire \sAXIMasterBlue_reg_n_0_[0] ;
  wire \sAXIMasterBlue_reg_n_0_[1] ;
  wire \sAXIMasterBlue_reg_n_0_[2] ;
  wire \sAXIMasterBlue_reg_n_0_[3] ;
  wire \sAXIMasterBlue_reg_n_0_[4] ;
  wire \sAXIMasterBlue_reg_n_0_[5] ;
  wire \sAXIMasterBlue_reg_n_0_[6] ;
  wire \sAXIMasterBlue_reg_n_0_[7] ;
  wire \sAXIMasterBlue_reg_n_0_[8] ;
  wire \sAXIMasterBlue_reg_n_0_[9] ;
  wire \sAXIMasterGreen[10]_i_1_n_0 ;
  wire \sAXIMasterGreen[3]_i_2_n_0 ;
  wire \sAXIMasterGreen[3]_i_3_n_0 ;
  wire \sAXIMasterGreen[3]_i_4_n_0 ;
  wire \sAXIMasterGreen[3]_i_5_n_0 ;
  wire \sAXIMasterGreen[3]_i_6_n_0 ;
  wire \sAXIMasterGreen[3]_i_7_n_0 ;
  wire \sAXIMasterGreen[3]_i_8_n_0 ;
  wire \sAXIMasterGreen[3]_i_9_n_0 ;
  wire \sAXIMasterGreen[7]_i_2_n_0 ;
  wire \sAXIMasterGreen[7]_i_3_n_0 ;
  wire \sAXIMasterGreen[7]_i_4_n_0 ;
  wire \sAXIMasterGreen[7]_i_5_n_0 ;
  wire \sAXIMasterGreen[7]_i_6_n_0 ;
  wire \sAXIMasterGreen[7]_i_7_n_0 ;
  wire \sAXIMasterGreen[7]_i_8_n_0 ;
  wire \sAXIMasterGreen[7]_i_9_n_0 ;
  wire \sAXIMasterGreen[9]_i_1_n_0 ;
  wire \sAXIMasterGreen[9]_i_3_n_0 ;
  wire \sAXIMasterGreen[9]_i_4_n_0 ;
  wire \sAXIMasterGreen[9]_i_5_n_0 ;
  wire \sAXIMasterGreen[9]_i_6_n_0 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_0 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_1 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_2 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_3 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_4 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_5 ;
  wire \sAXIMasterGreen_reg[3]_i_1_n_6 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_0 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_1 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_2 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_3 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_4 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_5 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_6 ;
  wire \sAXIMasterGreen_reg[7]_i_1_n_7 ;
  wire \sAXIMasterGreen_reg[9]_i_2_n_1 ;
  wire \sAXIMasterGreen_reg[9]_i_2_n_3 ;
  wire \sAXIMasterGreen_reg[9]_i_2_n_6 ;
  wire \sAXIMasterGreen_reg[9]_i_2_n_7 ;
  wire \sAXIMasterRed[0]_i_1_n_0 ;
  wire \sAXIMasterRed[1]_i_1_n_0 ;
  wire \sAXIMasterRed[2]_i_1_n_0 ;
  wire \sAXIMasterRed[3]_i_1_n_0 ;
  wire \sAXIMasterRed[4]_i_1_n_0 ;
  wire \sAXIMasterRed[5]_i_1_n_0 ;
  wire \sAXIMasterRed[6]_i_1_n_0 ;
  wire \sAXIMasterRed[7]_i_1_n_0 ;
  wire \sAXIMasterRed[8]_i_1_n_0 ;
  wire \sAXIMasterRed[8]_i_2_n_0 ;
  wire \sAXIMasterRed[8]_i_4_n_0 ;
  wire \sAXIMasterRed[8]_i_5_n_0 ;
  wire \sAXIMasterRed[9]_i_1_n_0 ;
  wire \sAXIMasterRed[9]_i_3_n_0 ;
  wire \sAXIMasterRed_reg_n_0_[0] ;
  wire \sAXIMasterRed_reg_n_0_[1] ;
  wire \sAXIMasterRed_reg_n_0_[2] ;
  wire \sAXIMasterRed_reg_n_0_[3] ;
  wire \sAXIMasterRed_reg_n_0_[4] ;
  wire \sAXIMasterRed_reg_n_0_[5] ;
  wire \sAXIMasterRed_reg_n_0_[6] ;
  wire \sAXIMasterRed_reg_n_0_[7] ;
  wire \sAXIMasterRed_reg_n_0_[8] ;
  wire \sAXIMasterRed_reg_n_0_[9] ;
  wire sAXI_SlaveLastAsserted_i_1_n_0;
  wire sAXI_SlaveLastAsserted_reg_n_0;
  wire \sCntColumns[10]_i_1_n_0 ;
  wire \sCntColumns[10]_i_3_n_0 ;
  wire [10:0]sCntColumns_reg__0;
  wire \sCntLines[0]_i_1_n_0 ;
  wire \sCntLines[0]_i_2_n_0 ;
  wire \sCntLines[0]_i_3_n_0 ;
  wire [0:0]sCntLines_reg;
  wire [1:0]sCntRemPixels;
  wire \sCntRemPixels[0]_i_1_n_0 ;
  wire \sCntRemPixels[1]_i_1_n_0 ;
  wire sCoverInitialLatency;
  wire sCoverInitialLatency_i_1_n_0;
  wire [1:0]sCrntPositionIndicatorDly1;
  wire [1:0]sCrntPositionIndicatorDly2;
  wire [1:0]sCrntPositionIndicatorDly3;
  wire [10:1]sLineBufferCrntAddr;
  wire [9:0]sLineBufferReadData;
  wire [9:0]sLineBufferReadDataBuf;
  wire sLineBufferReadDataBuf_0;
  wire [9:0]sLineBufferWriteData;
  wire [9:0]sLineBufferWriteDataDly;
  wire \sLineBufferWriteData[0]_i_1_n_0 ;
  wire \sLineBufferWriteData[1]_i_1_n_0 ;
  wire \sLineBufferWriteData[2]_i_1_n_0 ;
  wire \sLineBufferWriteData[3]_i_1_n_0 ;
  wire \sLineBufferWriteData[4]_i_1_n_0 ;
  wire \sLineBufferWriteData[5]_i_1_n_0 ;
  wire \sLineBufferWriteData[6]_i_1_n_0 ;
  wire \sLineBufferWriteData[7]_i_1_n_0 ;
  wire \sLineBufferWriteData[8]_i_1_n_0 ;
  wire \sLineBufferWriteData[9]_i_1_n_0 ;
  wire sLineBufferWrite_reg_n_0;
  wire sOtherPixelsData;
  wire \sOtherPixelsData_reg_n_0_[0] ;
  wire \sOtherPixelsData_reg_n_0_[10] ;
  wire \sOtherPixelsData_reg_n_0_[11] ;
  wire \sOtherPixelsData_reg_n_0_[12] ;
  wire \sOtherPixelsData_reg_n_0_[13] ;
  wire \sOtherPixelsData_reg_n_0_[14] ;
  wire \sOtherPixelsData_reg_n_0_[15] ;
  wire \sOtherPixelsData_reg_n_0_[16] ;
  wire \sOtherPixelsData_reg_n_0_[17] ;
  wire \sOtherPixelsData_reg_n_0_[18] ;
  wire \sOtherPixelsData_reg_n_0_[19] ;
  wire \sOtherPixelsData_reg_n_0_[1] ;
  wire \sOtherPixelsData_reg_n_0_[20] ;
  wire \sOtherPixelsData_reg_n_0_[21] ;
  wire \sOtherPixelsData_reg_n_0_[22] ;
  wire \sOtherPixelsData_reg_n_0_[23] ;
  wire \sOtherPixelsData_reg_n_0_[24] ;
  wire \sOtherPixelsData_reg_n_0_[25] ;
  wire \sOtherPixelsData_reg_n_0_[26] ;
  wire \sOtherPixelsData_reg_n_0_[27] ;
  wire \sOtherPixelsData_reg_n_0_[28] ;
  wire \sOtherPixelsData_reg_n_0_[29] ;
  wire \sOtherPixelsData_reg_n_0_[2] ;
  wire \sOtherPixelsData_reg_n_0_[3] ;
  wire \sOtherPixelsData_reg_n_0_[4] ;
  wire \sOtherPixelsData_reg_n_0_[5] ;
  wire \sOtherPixelsData_reg_n_0_[6] ;
  wire \sOtherPixelsData_reg_n_0_[7] ;
  wire \sOtherPixelsData_reg_n_0_[8] ;
  wire \sOtherPixelsData_reg_n_0_[9] ;
  wire \sPixel_reg_n_0_[0][0] ;
  wire \sPixel_reg_n_0_[0][1] ;
  wire \sPixel_reg_n_0_[0][2] ;
  wire \sPixel_reg_n_0_[0][3] ;
  wire \sPixel_reg_n_0_[0][4] ;
  wire \sPixel_reg_n_0_[0][5] ;
  wire \sPixel_reg_n_0_[0][6] ;
  wire \sPixel_reg_n_0_[0][7] ;
  wire \sPixel_reg_n_0_[0][8] ;
  wire \sPixel_reg_n_0_[0][9] ;
  wire \sPixel_reg_n_0_[1][0] ;
  wire \sPixel_reg_n_0_[1][1] ;
  wire \sPixel_reg_n_0_[1][2] ;
  wire \sPixel_reg_n_0_[1][3] ;
  wire \sPixel_reg_n_0_[1][4] ;
  wire \sPixel_reg_n_0_[1][5] ;
  wire \sPixel_reg_n_0_[1][6] ;
  wire \sPixel_reg_n_0_[1][7] ;
  wire \sPixel_reg_n_0_[1][8] ;
  wire \sPixel_reg_n_0_[1][9] ;
  wire \sPixel_reg_n_0_[2][0] ;
  wire \sPixel_reg_n_0_[2][1] ;
  wire \sPixel_reg_n_0_[2][2] ;
  wire \sPixel_reg_n_0_[2][3] ;
  wire \sPixel_reg_n_0_[2][4] ;
  wire \sPixel_reg_n_0_[2][5] ;
  wire \sPixel_reg_n_0_[2][6] ;
  wire \sPixel_reg_n_0_[2][7] ;
  wire \sPixel_reg_n_0_[2][8] ;
  wire \sPixel_reg_n_0_[2][9] ;
  wire \sPixel_reg_n_0_[3][0] ;
  wire \sPixel_reg_n_0_[3][1] ;
  wire \sPixel_reg_n_0_[3][2] ;
  wire \sPixel_reg_n_0_[3][3] ;
  wire \sPixel_reg_n_0_[3][4] ;
  wire \sPixel_reg_n_0_[3][5] ;
  wire \sPixel_reg_n_0_[3][6] ;
  wire \sPixel_reg_n_0_[3][7] ;
  wire \sPixel_reg_n_0_[3][8] ;
  wire \sPixel_reg_n_0_[3][9] ;
  wire sStreamReset_n;
  wire \sStrobesShiftReg[0][FirstColumn]_i_1_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_2_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_3_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_4_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_5_n_0 ;
  wire \sStrobesShiftReg[0][FirstLine]_i_1_n_0 ;
  wire \sStrobesShiftReg[0][Last]_i_1_n_0 ;
  wire \sStrobesShiftReg[0][Last]_i_2_n_0 ;
  wire \sStrobesShiftReg[0][User]_i_1_n_0 ;
  wire \sStrobesShiftReg_reg[0][FirstColumn]__0 ;
  wire \sStrobesShiftReg_reg[0][FirstLine]__0 ;
  wire \sStrobesShiftReg_reg[0][Last]__0 ;
  wire \sStrobesShiftReg_reg[0][User]__0 ;
  wire \sStrobesShiftReg_reg[1][FirstColumn]__0 ;
  wire \sStrobesShiftReg_reg[1][FirstLine]__0 ;
  wire \sStrobesShiftReg_reg[1][Last]__0 ;
  wire \sStrobesShiftReg_reg[1][User]__0 ;
  wire \sStrobesShiftReg_reg[2][FirstColumn]__0 ;
  wire \sStrobesShiftReg_reg[2][FirstLine]__0 ;
  wire \sStrobesShiftReg_reg[2][Last]__0 ;
  wire \sStrobesShiftReg_reg[2][User]__0 ;
  wire [39:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [2:0]sw;
  wire [0:0]\NLW_sAXIMasterGreen_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_sAXIMasterGreen_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_sAXIMasterGreen_reg[9]_i_2_O_UNCONNECTED ;

  system_AXI_BayerToRGB_1_0_LineBuffer LineBufferInst
       (.ADDRARDADDR({sLineBufferCrntAddr,sCrntPositionIndicatorDly1[0]}),
        .D(sLineBufferReadData),
        .Q(sLineBufferWriteData),
        .StreamClk(StreamClk),
        .\sLineBufferReadDataBuf_reg[9] (sLineBufferReadDataBuf),
        .sLineBufferWrite_reg(sLineBufferWrite_reg_n_0),
        .\sPixel_reg[2][9] ({LineBufferInst_n_10,LineBufferInst_n_11,LineBufferInst_n_12,LineBufferInst_n_13,LineBufferInst_n_14,LineBufferInst_n_15,LineBufferInst_n_16,LineBufferInst_n_17,LineBufferInst_n_18,LineBufferInst_n_19}));
  LUT4 #(
    .INIT(16'h0002)) 
    \led[3]_INST_0 
       (.I0(\led[3]_INST_0_i_1_n_0 ),
        .I1(\led[3]_INST_0_i_2_n_0 ),
        .I2(\led[3]_INST_0_i_3_n_0 ),
        .I3(\led[3]_INST_0_i_4_n_0 ),
        .O(led));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \led[3]_INST_0_i_1 
       (.I0(\sAXIMasterBlue_reg_n_0_[8] ),
        .I1(\led[3]_INST_0_i_5_n_0 ),
        .I2(\sAXIMasterBlue_reg_n_0_[6] ),
        .I3(\sAXIMasterBlue_reg_n_0_[7] ),
        .O(\led[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \led[3]_INST_0_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .I3(p_0_in[8]),
        .I4(p_0_in[5]),
        .I5(p_0_in[9]),
        .O(\led[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5557555755575757)) 
    \led[3]_INST_0_i_3 
       (.I0(\sAXIMasterBlue_reg_n_0_[9] ),
        .I1(p_0_in[9]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\led[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555777F)) 
    \led[3]_INST_0_i_4 
       (.I0(\led[3]_INST_0_i_6_n_0 ),
        .I1(\sAXIMasterRed_reg_n_0_[2] ),
        .I2(\sAXIMasterRed_reg_n_0_[1] ),
        .I3(\sAXIMasterRed_reg_n_0_[0] ),
        .I4(\sAXIMasterRed_reg_n_0_[3] ),
        .I5(\sAXIMasterRed_reg_n_0_[9] ),
        .O(\led[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \led[3]_INST_0_i_5 
       (.I0(\sAXIMasterBlue_reg_n_0_[2] ),
        .I1(\sAXIMasterBlue_reg_n_0_[3] ),
        .I2(\sAXIMasterBlue_reg_n_0_[5] ),
        .I3(\sAXIMasterBlue_reg_n_0_[4] ),
        .I4(\sAXIMasterBlue_reg_n_0_[1] ),
        .I5(\sAXIMasterBlue_reg_n_0_[0] ),
        .O(\led[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \led[3]_INST_0_i_6 
       (.I0(\sAXIMasterRed_reg_n_0_[8] ),
        .I1(\sAXIMasterRed_reg_n_0_[4] ),
        .I2(\sAXIMasterRed_reg_n_0_[5] ),
        .I3(\sAXIMasterRed_reg_n_0_[6] ),
        .I4(\sAXIMasterRed_reg_n_0_[7] ),
        .O(\led[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[0]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[0] ),
        .I1(sw[1]),
        .I2(p_0_in[0]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[0] ),
        .O(m_axis_video_tdata[0]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[10]_INST_0 
       (.I0(p_0_in[0]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[0] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[0] ),
        .O(m_axis_video_tdata[10]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[11]_INST_0 
       (.I0(p_0_in[1]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[1] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[1] ),
        .O(m_axis_video_tdata[11]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[12]_INST_0 
       (.I0(p_0_in[2]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[2] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[2] ),
        .O(m_axis_video_tdata[12]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[13]_INST_0 
       (.I0(p_0_in[3]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[3] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[3] ),
        .O(m_axis_video_tdata[13]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[14]_INST_0 
       (.I0(p_0_in[4]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[4] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[4] ),
        .O(m_axis_video_tdata[14]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[15]_INST_0 
       (.I0(p_0_in[5]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[5] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[5] ),
        .O(m_axis_video_tdata[15]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[16]_INST_0 
       (.I0(p_0_in[6]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[6] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[6] ),
        .O(m_axis_video_tdata[16]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[17]_INST_0 
       (.I0(p_0_in[7]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[7] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[7] ),
        .O(m_axis_video_tdata[17]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[18]_INST_0 
       (.I0(p_0_in[8]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[8] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[8] ),
        .O(m_axis_video_tdata[18]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[19]_INST_0 
       (.I0(p_0_in[9]),
        .I1(sw[1]),
        .I2(\sAXIMasterBlue_reg_n_0_[9] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterRed_reg_n_0_[9] ),
        .O(m_axis_video_tdata[19]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[1]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[1] ),
        .I1(sw[1]),
        .I2(p_0_in[1]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[1] ),
        .O(m_axis_video_tdata[1]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[20]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[0] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[0] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[0]),
        .O(m_axis_video_tdata[20]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[21]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[1] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[1] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[1]),
        .O(m_axis_video_tdata[21]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[22]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[2] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[2] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[2]),
        .O(m_axis_video_tdata[22]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[23]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[3] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[3] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[3]),
        .O(m_axis_video_tdata[23]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[24]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[4] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[4] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[4]),
        .O(m_axis_video_tdata[24]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[25]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[5] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[5] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[5]),
        .O(m_axis_video_tdata[25]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[26]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[6] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[6] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[6]),
        .O(m_axis_video_tdata[26]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[27]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[7] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[7] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[7]),
        .O(m_axis_video_tdata[27]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[28]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[8] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[8] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[8]),
        .O(m_axis_video_tdata[28]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[29]_INST_0 
       (.I0(\sAXIMasterBlue_reg_n_0_[9] ),
        .I1(sw[1]),
        .I2(\sAXIMasterRed_reg_n_0_[9] ),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(p_0_in[9]),
        .O(m_axis_video_tdata[29]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[2]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[2] ),
        .I1(sw[1]),
        .I2(p_0_in[2]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[2] ),
        .O(m_axis_video_tdata[2]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[3]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[3] ),
        .I1(sw[1]),
        .I2(p_0_in[3]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[3] ),
        .O(m_axis_video_tdata[3]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[4]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[4] ),
        .I1(sw[1]),
        .I2(p_0_in[4]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[4] ),
        .O(m_axis_video_tdata[4]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[5]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[5] ),
        .I1(sw[1]),
        .I2(p_0_in[5]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[5] ),
        .O(m_axis_video_tdata[5]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[6]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[6] ),
        .I1(sw[1]),
        .I2(p_0_in[6]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[6] ),
        .O(m_axis_video_tdata[6]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[7]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[7] ),
        .I1(sw[1]),
        .I2(p_0_in[7]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[7] ),
        .O(m_axis_video_tdata[7]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[8]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[8] ),
        .I1(sw[1]),
        .I2(p_0_in[8]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[8] ),
        .O(m_axis_video_tdata[8]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \m_axis_video_tdata[9]_INST_0 
       (.I0(\sAXIMasterRed_reg_n_0_[9] ),
        .I1(sw[1]),
        .I2(p_0_in[9]),
        .I3(sw[2]),
        .I4(sw[0]),
        .I5(\sAXIMasterBlue_reg_n_0_[9] ),
        .O(m_axis_video_tdata[9]));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_video_tvalid_i_1
       (.I0(sStreamReset_n),
        .O(m_axis_video_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    m_axis_video_tvalid_i_2
       (.I0(sCoverInitialLatency),
        .I1(sOtherPixelsData),
        .I2(m_axis_video_tready),
        .I3(m_axis_video_tvalid),
        .O(m_axis_video_tvalid_i_2_n_0));
  FDRE m_axis_video_tvalid_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(m_axis_video_tvalid_i_2_n_0),
        .Q(m_axis_video_tvalid),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \sAXIMasterBlue[0]_i_1 
       (.I0(\sPixel_reg_n_0_[0][0] ),
        .I1(\sPixel_reg_n_0_[3][0] ),
        .I2(\sPixel_reg_n_0_[1][0] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][0] ),
        .O(\sAXIMasterBlue[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \sAXIMasterBlue[1]_i_1 
       (.I0(\sPixel_reg_n_0_[0][1] ),
        .I1(\sPixel_reg_n_0_[3][1] ),
        .I2(\sPixel_reg_n_0_[1][1] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][1] ),
        .O(\sAXIMasterBlue[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterBlue[2]_i_1 
       (.I0(\sPixel_reg_n_0_[1][2] ),
        .I1(\sPixel_reg_n_0_[0][2] ),
        .I2(\sPixel_reg_n_0_[3][2] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][2] ),
        .O(\sAXIMasterBlue[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterBlue[3]_i_1 
       (.I0(\sPixel_reg_n_0_[1][3] ),
        .I1(\sPixel_reg_n_0_[0][3] ),
        .I2(\sPixel_reg_n_0_[3][3] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][3] ),
        .O(\sAXIMasterBlue[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \sAXIMasterBlue[4]_i_1 
       (.I0(\sPixel_reg_n_0_[1][4] ),
        .I1(\sPixel_reg_n_0_[0][4] ),
        .I2(\sPixel_reg_n_0_[2][4] ),
        .I3(sCrntPositionIndicatorDly3[1]),
        .I4(sCrntPositionIndicatorDly3[0]),
        .I5(\sPixel_reg_n_0_[3][4] ),
        .O(\sAXIMasterBlue[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \sAXIMasterBlue[5]_i_1 
       (.I0(\sPixel_reg_n_0_[1][5] ),
        .I1(\sPixel_reg_n_0_[0][5] ),
        .I2(\sPixel_reg_n_0_[2][5] ),
        .I3(sCrntPositionIndicatorDly3[1]),
        .I4(sCrntPositionIndicatorDly3[0]),
        .I5(\sPixel_reg_n_0_[3][5] ),
        .O(\sAXIMasterBlue[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterBlue[6]_i_1 
       (.I0(\sPixel_reg_n_0_[1][6] ),
        .I1(\sPixel_reg_n_0_[0][6] ),
        .I2(\sPixel_reg_n_0_[3][6] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][6] ),
        .O(\sAXIMasterBlue[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterBlue[7]_i_1 
       (.I0(\sPixel_reg_n_0_[1][7] ),
        .I1(\sPixel_reg_n_0_[0][7] ),
        .I2(\sPixel_reg_n_0_[3][7] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][7] ),
        .O(\sAXIMasterBlue[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \sAXIMasterBlue[8]_i_1 
       (.I0(\sPixel_reg_n_0_[0][8] ),
        .I1(\sPixel_reg_n_0_[3][8] ),
        .I2(\sPixel_reg_n_0_[1][8] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][8] ),
        .O(\sAXIMasterBlue[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555551FFFFFFFF)) 
    \sAXIMasterBlue[9]_i_1 
       (.I0(\sAXIMasterBlue[9]_i_2_n_0 ),
        .I1(\led[3]_INST_0_i_1_n_0 ),
        .I2(\led[3]_INST_0_i_2_n_0 ),
        .I3(\led[3]_INST_0_i_3_n_0 ),
        .I4(\led[3]_INST_0_i_4_n_0 ),
        .I5(\sAXIMasterRed[9]_i_3_n_0 ),
        .O(\sAXIMasterBlue[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33000F5533FF0F55)) 
    \sAXIMasterBlue[9]_i_2 
       (.I0(\sPixel_reg_n_0_[0][9] ),
        .I1(\sPixel_reg_n_0_[3][9] ),
        .I2(\sPixel_reg_n_0_[1][9] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[2][9] ),
        .O(\sAXIMasterBlue[9]_i_2_n_0 ));
  FDRE \sAXIMasterBlue_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[0]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[0] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[1]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[1] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[2]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[2] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[3]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[3] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[4]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[4] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[5]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[5] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[6]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[6] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[7]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[7] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[8]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[8] ),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterBlue_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterBlue[9]_i_1_n_0 ),
        .Q(\sAXIMasterBlue_reg_n_0_[9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFD0000FFFFFFFF)) 
    \sAXIMasterGreen[10]_i_1 
       (.I0(\led[3]_INST_0_i_1_n_0 ),
        .I1(\led[3]_INST_0_i_2_n_0 ),
        .I2(\led[3]_INST_0_i_3_n_0 ),
        .I3(\led[3]_INST_0_i_4_n_0 ),
        .I4(\sAXIMasterGreen_reg[9]_i_2_n_1 ),
        .I5(\sAXIMasterRed[9]_i_3_n_0 ),
        .O(\sAXIMasterGreen[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[3]_i_2 
       (.I0(\sPixel_reg_n_0_[3][3] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][3] ),
        .O(\sAXIMasterGreen[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[3]_i_3 
       (.I0(\sPixel_reg_n_0_[3][2] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][2] ),
        .O(\sAXIMasterGreen[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[3]_i_4 
       (.I0(\sPixel_reg_n_0_[3][1] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][1] ),
        .O(\sAXIMasterGreen[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[3]_i_5 
       (.I0(\sPixel_reg_n_0_[3][0] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][0] ),
        .O(\sAXIMasterGreen[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[3]_i_6 
       (.I0(\sPixel_reg_n_0_[2][3] ),
        .I1(\sPixel_reg_n_0_[3][3] ),
        .I2(\sPixel_reg_n_0_[1][3] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][3] ),
        .O(\sAXIMasterGreen[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[3]_i_7 
       (.I0(\sPixel_reg_n_0_[2][2] ),
        .I1(\sPixel_reg_n_0_[3][2] ),
        .I2(\sPixel_reg_n_0_[1][2] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][2] ),
        .O(\sAXIMasterGreen[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[3]_i_8 
       (.I0(\sPixel_reg_n_0_[2][1] ),
        .I1(\sPixel_reg_n_0_[3][1] ),
        .I2(\sPixel_reg_n_0_[1][1] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][1] ),
        .O(\sAXIMasterGreen[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[3]_i_9 
       (.I0(\sPixel_reg_n_0_[2][0] ),
        .I1(\sPixel_reg_n_0_[3][0] ),
        .I2(\sPixel_reg_n_0_[1][0] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][0] ),
        .O(\sAXIMasterGreen[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[7]_i_2 
       (.I0(\sPixel_reg_n_0_[3][7] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][7] ),
        .O(\sAXIMasterGreen[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[7]_i_3 
       (.I0(\sPixel_reg_n_0_[3][6] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][6] ),
        .O(\sAXIMasterGreen[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[7]_i_4 
       (.I0(\sPixel_reg_n_0_[3][5] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][5] ),
        .O(\sAXIMasterGreen[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[7]_i_5 
       (.I0(\sPixel_reg_n_0_[3][4] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][4] ),
        .O(\sAXIMasterGreen[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[7]_i_6 
       (.I0(\sPixel_reg_n_0_[2][7] ),
        .I1(\sPixel_reg_n_0_[3][7] ),
        .I2(\sPixel_reg_n_0_[1][7] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][7] ),
        .O(\sAXIMasterGreen[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[7]_i_7 
       (.I0(\sPixel_reg_n_0_[2][6] ),
        .I1(\sPixel_reg_n_0_[3][6] ),
        .I2(\sPixel_reg_n_0_[1][6] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][6] ),
        .O(\sAXIMasterGreen[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[7]_i_8 
       (.I0(\sPixel_reg_n_0_[2][5] ),
        .I1(\sPixel_reg_n_0_[3][5] ),
        .I2(\sPixel_reg_n_0_[1][5] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][5] ),
        .O(\sAXIMasterGreen[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[7]_i_9 
       (.I0(\sPixel_reg_n_0_[2][4] ),
        .I1(\sPixel_reg_n_0_[3][4] ),
        .I2(\sPixel_reg_n_0_[1][4] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][4] ),
        .O(\sAXIMasterGreen[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \sAXIMasterGreen[9]_i_1 
       (.I0(\led[3]_INST_0_i_1_n_0 ),
        .I1(\led[3]_INST_0_i_2_n_0 ),
        .I2(\led[3]_INST_0_i_3_n_0 ),
        .I3(\led[3]_INST_0_i_4_n_0 ),
        .I4(sOtherPixelsData),
        .I5(\sAXIMasterRed[8]_i_1_n_0 ),
        .O(\sAXIMasterGreen[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[9]_i_3 
       (.I0(\sPixel_reg_n_0_[3][9] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][9] ),
        .O(\sAXIMasterGreen[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \sAXIMasterGreen[9]_i_4 
       (.I0(\sPixel_reg_n_0_[3][8] ),
        .I1(sCrntPositionIndicatorDly3[1]),
        .I2(sCrntPositionIndicatorDly3[0]),
        .I3(\sPixel_reg_n_0_[2][8] ),
        .O(\sAXIMasterGreen[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[9]_i_5 
       (.I0(\sPixel_reg_n_0_[2][9] ),
        .I1(\sPixel_reg_n_0_[3][9] ),
        .I2(\sPixel_reg_n_0_[1][9] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][9] ),
        .O(\sAXIMasterGreen[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5A33335A5ACCCC5A)) 
    \sAXIMasterGreen[9]_i_6 
       (.I0(\sPixel_reg_n_0_[2][8] ),
        .I1(\sPixel_reg_n_0_[3][8] ),
        .I2(\sPixel_reg_n_0_[1][8] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][8] ),
        .O(\sAXIMasterGreen[9]_i_6_n_0 ));
  FDRE \sAXIMasterGreen_reg[10] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen[10]_i_1_n_0 ),
        .Q(p_0_in[9]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sAXIMasterGreen_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[3]_i_1_n_6 ),
        .Q(p_0_in[0]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterGreen_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[3]_i_1_n_5 ),
        .Q(p_0_in[1]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterGreen_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[3]_i_1_n_4 ),
        .Q(p_0_in[2]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sAXIMasterGreen_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sAXIMasterGreen_reg[3]_i_1_n_0 ,\sAXIMasterGreen_reg[3]_i_1_n_1 ,\sAXIMasterGreen_reg[3]_i_1_n_2 ,\sAXIMasterGreen_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sAXIMasterGreen[3]_i_2_n_0 ,\sAXIMasterGreen[3]_i_3_n_0 ,\sAXIMasterGreen[3]_i_4_n_0 ,\sAXIMasterGreen[3]_i_5_n_0 }),
        .O({\sAXIMasterGreen_reg[3]_i_1_n_4 ,\sAXIMasterGreen_reg[3]_i_1_n_5 ,\sAXIMasterGreen_reg[3]_i_1_n_6 ,\NLW_sAXIMasterGreen_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\sAXIMasterGreen[3]_i_6_n_0 ,\sAXIMasterGreen[3]_i_7_n_0 ,\sAXIMasterGreen[3]_i_8_n_0 ,\sAXIMasterGreen[3]_i_9_n_0 }));
  FDRE \sAXIMasterGreen_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[7]_i_1_n_7 ),
        .Q(p_0_in[3]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterGreen_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[7]_i_1_n_6 ),
        .Q(p_0_in[4]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterGreen_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[7]_i_1_n_5 ),
        .Q(p_0_in[5]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterGreen_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[7]_i_1_n_4 ),
        .Q(p_0_in[6]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sAXIMasterGreen_reg[7]_i_1 
       (.CI(\sAXIMasterGreen_reg[3]_i_1_n_0 ),
        .CO({\sAXIMasterGreen_reg[7]_i_1_n_0 ,\sAXIMasterGreen_reg[7]_i_1_n_1 ,\sAXIMasterGreen_reg[7]_i_1_n_2 ,\sAXIMasterGreen_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sAXIMasterGreen[7]_i_2_n_0 ,\sAXIMasterGreen[7]_i_3_n_0 ,\sAXIMasterGreen[7]_i_4_n_0 ,\sAXIMasterGreen[7]_i_5_n_0 }),
        .O({\sAXIMasterGreen_reg[7]_i_1_n_4 ,\sAXIMasterGreen_reg[7]_i_1_n_5 ,\sAXIMasterGreen_reg[7]_i_1_n_6 ,\sAXIMasterGreen_reg[7]_i_1_n_7 }),
        .S({\sAXIMasterGreen[7]_i_6_n_0 ,\sAXIMasterGreen[7]_i_7_n_0 ,\sAXIMasterGreen[7]_i_8_n_0 ,\sAXIMasterGreen[7]_i_9_n_0 }));
  FDRE \sAXIMasterGreen_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[9]_i_2_n_7 ),
        .Q(p_0_in[7]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  FDRE \sAXIMasterGreen_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterGreen_reg[9]_i_2_n_6 ),
        .Q(p_0_in[8]),
        .R(\sAXIMasterGreen[9]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sAXIMasterGreen_reg[9]_i_2 
       (.CI(\sAXIMasterGreen_reg[7]_i_1_n_0 ),
        .CO({\NLW_sAXIMasterGreen_reg[9]_i_2_CO_UNCONNECTED [3],\sAXIMasterGreen_reg[9]_i_2_n_1 ,\NLW_sAXIMasterGreen_reg[9]_i_2_CO_UNCONNECTED [1],\sAXIMasterGreen_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\sAXIMasterGreen[9]_i_3_n_0 ,\sAXIMasterGreen[9]_i_4_n_0 }),
        .O({\NLW_sAXIMasterGreen_reg[9]_i_2_O_UNCONNECTED [3:2],\sAXIMasterGreen_reg[9]_i_2_n_6 ,\sAXIMasterGreen_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b1,\sAXIMasterGreen[9]_i_5_n_0 ,\sAXIMasterGreen[9]_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[0]_i_1 
       (.I0(p_2_in[0]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \sAXIMasterRed[0]_i_2 
       (.I0(\sPixel_reg_n_0_[2][0] ),
        .I1(\sPixel_reg_n_0_[3][0] ),
        .I2(\sPixel_reg_n_0_[1][0] ),
        .I3(sCrntPositionIndicatorDly3[1]),
        .I4(sCrntPositionIndicatorDly3[0]),
        .I5(\sPixel_reg_n_0_[0][0] ),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \sAXIMasterRed[1]_i_2 
       (.I0(\sPixel_reg_n_0_[3][1] ),
        .I1(\sPixel_reg_n_0_[0][1] ),
        .I2(\sPixel_reg_n_0_[2][1] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[1][1] ),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[2]_i_1 
       (.I0(p_2_in[2]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \sAXIMasterRed[2]_i_2 
       (.I0(\sPixel_reg_n_0_[3][2] ),
        .I1(\sPixel_reg_n_0_[1][2] ),
        .I2(\sPixel_reg_n_0_[2][2] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[0][2] ),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[3]_i_1 
       (.I0(p_2_in[3]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterRed[3]_i_2 
       (.I0(\sPixel_reg_n_0_[2][3] ),
        .I1(\sPixel_reg_n_0_[3][3] ),
        .I2(\sPixel_reg_n_0_[0][3] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[1][3] ),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[4]_i_1 
       (.I0(p_2_in[4]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterRed[4]_i_2 
       (.I0(\sPixel_reg_n_0_[2][4] ),
        .I1(\sPixel_reg_n_0_[3][4] ),
        .I2(\sPixel_reg_n_0_[0][4] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[1][4] ),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[5]_i_1 
       (.I0(p_2_in[5]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \sAXIMasterRed[5]_i_2 
       (.I0(\sPixel_reg_n_0_[2][5] ),
        .I1(\sPixel_reg_n_0_[3][5] ),
        .I2(\sPixel_reg_n_0_[1][5] ),
        .I3(sCrntPositionIndicatorDly3[1]),
        .I4(sCrntPositionIndicatorDly3[0]),
        .I5(\sPixel_reg_n_0_[0][5] ),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[6]_i_1 
       (.I0(p_2_in[6]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \sAXIMasterRed[6]_i_2 
       (.I0(\sPixel_reg_n_0_[2][6] ),
        .I1(\sPixel_reg_n_0_[3][6] ),
        .I2(\sPixel_reg_n_0_[1][6] ),
        .I3(sCrntPositionIndicatorDly3[1]),
        .I4(sCrntPositionIndicatorDly3[0]),
        .I5(\sPixel_reg_n_0_[0][6] ),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[7]_i_1 
       (.I0(p_2_in[7]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sAXIMasterRed[7]_i_2 
       (.I0(\sPixel_reg_n_0_[2][7] ),
        .I1(\sPixel_reg_n_0_[3][7] ),
        .I2(\sPixel_reg_n_0_[0][7] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[1][7] ),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'hE0FF)) 
    \sAXIMasterRed[8]_i_1 
       (.I0(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I1(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I2(sOtherPixelsData),
        .I3(sStreamReset_n),
        .O(\sAXIMasterRed[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sAXIMasterRed[8]_i_2 
       (.I0(p_2_in[8]),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I2(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I3(\sAXIMasterRed[8]_i_4_n_0 ),
        .I4(\led[3]_INST_0_i_1_n_0 ),
        .O(\sAXIMasterRed[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \sAXIMasterRed[8]_i_3 
       (.I0(\sPixel_reg_n_0_[2][8] ),
        .I1(\sPixel_reg_n_0_[3][8] ),
        .I2(\sPixel_reg_n_0_[1][8] ),
        .I3(sCrntPositionIndicatorDly3[1]),
        .I4(sCrntPositionIndicatorDly3[0]),
        .I5(\sPixel_reg_n_0_[0][8] ),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hFFFFFF45)) 
    \sAXIMasterRed[8]_i_4 
       (.I0(\sAXIMasterRed_reg_n_0_[9] ),
        .I1(\sAXIMasterRed[8]_i_5_n_0 ),
        .I2(\led[3]_INST_0_i_6_n_0 ),
        .I3(\led[3]_INST_0_i_3_n_0 ),
        .I4(\led[3]_INST_0_i_2_n_0 ),
        .O(\sAXIMasterRed[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0057)) 
    \sAXIMasterRed[8]_i_5 
       (.I0(\sAXIMasterRed_reg_n_0_[2] ),
        .I1(\sAXIMasterRed_reg_n_0_[1] ),
        .I2(\sAXIMasterRed_reg_n_0_[0] ),
        .I3(\sAXIMasterRed_reg_n_0_[3] ),
        .O(\sAXIMasterRed[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBFFFF8C88CCCC)) 
    \sAXIMasterRed[9]_i_1 
       (.I0(p_2_in[9]),
        .I1(sOtherPixelsData),
        .I2(\sAXIMasterRed[8]_i_4_n_0 ),
        .I3(\led[3]_INST_0_i_1_n_0 ),
        .I4(\sAXIMasterRed[9]_i_3_n_0 ),
        .I5(\sAXIMasterRed_reg_n_0_[9] ),
        .O(\sAXIMasterRed[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \sAXIMasterRed[9]_i_2 
       (.I0(\sPixel_reg_n_0_[3][9] ),
        .I1(\sPixel_reg_n_0_[0][9] ),
        .I2(\sPixel_reg_n_0_[2][9] ),
        .I3(sCrntPositionIndicatorDly3[0]),
        .I4(sCrntPositionIndicatorDly3[1]),
        .I5(\sPixel_reg_n_0_[1][9] ),
        .O(p_2_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sAXIMasterRed[9]_i_3 
       (.I0(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .I1(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .O(\sAXIMasterRed[9]_i_3_n_0 ));
  FDRE \sAXIMasterRed_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[0]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[0] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[1]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[1] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[2]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[2] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[3]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[3] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[4]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[4] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[5]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[5] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[6]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[6] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[7]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[7] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sAXIMasterRed[8]_i_2_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[8] ),
        .R(\sAXIMasterRed[8]_i_1_n_0 ));
  FDRE \sAXIMasterRed_reg[9] 
       (.C(StreamClk),
        .CE(1'b1),
        .D(\sAXIMasterRed[9]_i_1_n_0 ),
        .Q(\sAXIMasterRed_reg_n_0_[9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA0EAAAAAA0AAAAA)) 
    sAXI_SlaveLastAsserted_i_1
       (.I0(sAXI_SlaveLastAsserted_reg_n_0),
        .I1(s_axis_video_tvalid),
        .I2(sCntRemPixels[0]),
        .I3(sCntRemPixels[1]),
        .I4(m_axis_video_tready),
        .I5(s_axis_video_tlast),
        .O(sAXI_SlaveLastAsserted_i_1_n_0));
  FDRE sAXI_SlaveLastAsserted_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(sAXI_SlaveLastAsserted_i_1_n_0),
        .Q(sAXI_SlaveLastAsserted_reg_n_0),
        .R(m_axis_video_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sCntColumns[0]_i_1 
       (.I0(sCntColumns_reg__0[0]),
        .O(plusOp[0]));
  LUT5 #(
    .INIT(32'h0800FFFF)) 
    \sCntColumns[10]_i_1 
       (.I0(sAXI_SlaveLastAsserted_reg_n_0),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(m_axis_video_tready),
        .I4(sStreamReset_n),
        .O(\sCntColumns[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sCntColumns[10]_i_2 
       (.I0(sCntColumns_reg__0[10]),
        .I1(sCntColumns_reg__0[8]),
        .I2(sCntColumns_reg__0[6]),
        .I3(\sCntColumns[10]_i_3_n_0 ),
        .I4(sCntColumns_reg__0[7]),
        .I5(sCntColumns_reg__0[9]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sCntColumns[10]_i_3 
       (.I0(sCntColumns_reg__0[5]),
        .I1(sCntColumns_reg__0[4]),
        .I2(sCntColumns_reg__0[2]),
        .I3(sCntColumns_reg__0[0]),
        .I4(sCntColumns_reg__0[1]),
        .I5(sCntColumns_reg__0[3]),
        .O(\sCntColumns[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sCntColumns[1]_i_1 
       (.I0(sCntColumns_reg__0[0]),
        .I1(sCntColumns_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sCntColumns[2]_i_1 
       (.I0(sCntColumns_reg__0[2]),
        .I1(sCntColumns_reg__0[0]),
        .I2(sCntColumns_reg__0[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sCntColumns[3]_i_1 
       (.I0(sCntColumns_reg__0[3]),
        .I1(sCntColumns_reg__0[1]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sCntColumns[4]_i_1 
       (.I0(sCntColumns_reg__0[4]),
        .I1(sCntColumns_reg__0[2]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[1]),
        .I4(sCntColumns_reg__0[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sCntColumns[5]_i_1 
       (.I0(sCntColumns_reg__0[3]),
        .I1(sCntColumns_reg__0[1]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[2]),
        .I4(sCntColumns_reg__0[4]),
        .I5(sCntColumns_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sCntColumns[6]_i_1 
       (.I0(sCntColumns_reg__0[6]),
        .I1(\sCntColumns[10]_i_3_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sCntColumns[7]_i_1 
       (.I0(sCntColumns_reg__0[7]),
        .I1(\sCntColumns[10]_i_3_n_0 ),
        .I2(sCntColumns_reg__0[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sCntColumns[8]_i_1 
       (.I0(sCntColumns_reg__0[8]),
        .I1(sCntColumns_reg__0[6]),
        .I2(\sCntColumns[10]_i_3_n_0 ),
        .I3(sCntColumns_reg__0[7]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sCntColumns[9]_i_1 
       (.I0(sCntColumns_reg__0[9]),
        .I1(sCntColumns_reg__0[7]),
        .I2(\sCntColumns[10]_i_3_n_0 ),
        .I3(sCntColumns_reg__0[6]),
        .I4(sCntColumns_reg__0[8]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[0]),
        .Q(sCntColumns_reg__0[0]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[10] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[10]),
        .Q(sCntColumns_reg__0[10]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[1]),
        .Q(sCntColumns_reg__0[1]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[2]),
        .Q(sCntColumns_reg__0[2]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[3]),
        .Q(sCntColumns_reg__0[3]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[4]),
        .Q(sCntColumns_reg__0[4]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[5]),
        .Q(sCntColumns_reg__0[5]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[6]),
        .Q(sCntColumns_reg__0[6]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[7]),
        .Q(sCntColumns_reg__0[7]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[8]),
        .Q(sCntColumns_reg__0[8]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(plusOp[9]),
        .Q(sCntColumns_reg__0[9]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6060606000606060)) 
    \sCntLines[0]_i_1 
       (.I0(\sCntLines[0]_i_2_n_0 ),
        .I1(sCntLines_reg),
        .I2(sStreamReset_n),
        .I3(m_axis_video_tready),
        .I4(s_axis_video_tuser),
        .I5(\sCntLines[0]_i_3_n_0 ),
        .O(\sCntLines[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \sCntLines[0]_i_2 
       (.I0(m_axis_video_tready),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .I3(sAXI_SlaveLastAsserted_reg_n_0),
        .O(\sCntLines[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \sCntLines[0]_i_3 
       (.I0(sCntRemPixels[1]),
        .I1(sCntRemPixels[0]),
        .I2(s_axis_video_tvalid),
        .O(\sCntLines[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntLines_reg[0] 
       (.C(StreamClk),
        .CE(1'b1),
        .D(\sCntLines[0]_i_1_n_0 ),
        .Q(sCntLines_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sCntRemPixels[0]_i_1 
       (.I0(sCntRemPixels[1]),
        .I1(s_axis_video_tvalid),
        .I2(sCntRemPixels[0]),
        .O(\sCntRemPixels[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \sCntRemPixels[1]_i_1 
       (.I0(s_axis_video_tvalid),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(\sCntRemPixels[1]_i_1_n_0 ));
  FDRE \sCntRemPixels_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sCntRemPixels[0]_i_1_n_0 ),
        .Q(sCntRemPixels[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCntRemPixels_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sCntRemPixels[1]_i_1_n_0 ),
        .Q(sCntRemPixels[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sCoverInitialLatency_i_1
       (.I0(\sStrobesShiftReg_reg[1][User]__0 ),
        .I1(sCoverInitialLatency),
        .O(sCoverInitialLatency_i_1_n_0));
  FDRE sCoverInitialLatency_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(sCoverInitialLatency_i_1_n_0),
        .Q(sCoverInitialLatency),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCrntPositionIndicatorDly1_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[0]),
        .Q(sCrntPositionIndicatorDly1[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCrntPositionIndicatorDly1_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntLines_reg),
        .Q(sCrntPositionIndicatorDly1[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCrntPositionIndicatorDly2_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCrntPositionIndicatorDly1[0]),
        .Q(sCrntPositionIndicatorDly2[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCrntPositionIndicatorDly2_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCrntPositionIndicatorDly1[1]),
        .Q(sCrntPositionIndicatorDly2[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCrntPositionIndicatorDly3_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCrntPositionIndicatorDly2[0]),
        .Q(sCrntPositionIndicatorDly3[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sCrntPositionIndicatorDly3_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCrntPositionIndicatorDly2[1]),
        .Q(sCrntPositionIndicatorDly3[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[10] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[10]),
        .Q(sLineBufferCrntAddr[10]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[1]),
        .Q(sLineBufferCrntAddr[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[2]),
        .Q(sLineBufferCrntAddr[2]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[3]),
        .Q(sLineBufferCrntAddr[3]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[4]),
        .Q(sLineBufferCrntAddr[4]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[5]),
        .Q(sLineBufferCrntAddr[5]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[6]),
        .Q(sLineBufferCrntAddr[6]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[7]),
        .Q(sLineBufferCrntAddr[7]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[8]),
        .Q(sLineBufferCrntAddr[8]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferCrntAddr_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sCntColumns_reg__0[9]),
        .Q(sLineBufferCrntAddr[9]),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \sLineBufferReadDataBuf[9]_i_1 
       (.I0(sLineBufferWrite_reg_n_0),
        .I1(sOtherPixelsData),
        .O(sLineBufferReadDataBuf_0));
  FDRE \sLineBufferReadDataBuf_reg[0] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[0]),
        .Q(sLineBufferReadDataBuf[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[1] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[1]),
        .Q(sLineBufferReadDataBuf[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[2] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[2]),
        .Q(sLineBufferReadDataBuf[2]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[3] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[3]),
        .Q(sLineBufferReadDataBuf[3]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[4] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[4]),
        .Q(sLineBufferReadDataBuf[4]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[5] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[5]),
        .Q(sLineBufferReadDataBuf[5]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[6] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[6]),
        .Q(sLineBufferReadDataBuf[6]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[7] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[7]),
        .Q(sLineBufferReadDataBuf[7]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[8] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[8]),
        .Q(sLineBufferReadDataBuf[8]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferReadDataBuf_reg[9] 
       (.C(StreamClk),
        .CE(sLineBufferReadDataBuf_0),
        .D(sLineBufferReadData[9]),
        .Q(sLineBufferReadDataBuf[9]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[0]),
        .Q(sLineBufferWriteDataDly[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[1]),
        .Q(sLineBufferWriteDataDly[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[2]),
        .Q(sLineBufferWriteDataDly[2]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[3]),
        .Q(sLineBufferWriteDataDly[3]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[4]),
        .Q(sLineBufferWriteDataDly[4]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[5]),
        .Q(sLineBufferWriteDataDly[5]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[6]),
        .Q(sLineBufferWriteDataDly[6]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[7]),
        .Q(sLineBufferWriteDataDly[7]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[8]),
        .Q(sLineBufferWriteDataDly[8]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteDataDly_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteData[9]),
        .Q(sLineBufferWriteDataDly[9]),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[0]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[0] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[0]),
        .O(\sLineBufferWriteData[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[1]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[1] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[1]),
        .O(\sLineBufferWriteData[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[2]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[2] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[2]),
        .O(\sLineBufferWriteData[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[3]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[3] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\sLineBufferWriteData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[4]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[4] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[4]),
        .O(\sLineBufferWriteData[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[5]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[5] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[5]),
        .O(\sLineBufferWriteData[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[6]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[6] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[6]),
        .O(\sLineBufferWriteData[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[7]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[7] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[7]),
        .O(\sLineBufferWriteData[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[8]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[8] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[8]),
        .O(\sLineBufferWriteData[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sLineBufferWriteData[9]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[9] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[9]),
        .O(\sLineBufferWriteData[9]_i_1_n_0 ));
  FDRE \sLineBufferWriteData_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[0]_i_1_n_0 ),
        .Q(sLineBufferWriteData[0]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[1]_i_1_n_0 ),
        .Q(sLineBufferWriteData[1]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[2]_i_1_n_0 ),
        .Q(sLineBufferWriteData[2]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[3]_i_1_n_0 ),
        .Q(sLineBufferWriteData[3]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[4]_i_1_n_0 ),
        .Q(sLineBufferWriteData[4]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[5]_i_1_n_0 ),
        .Q(sLineBufferWriteData[5]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[6]_i_1_n_0 ),
        .Q(sLineBufferWriteData[6]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[7]_i_1_n_0 ),
        .Q(sLineBufferWriteData[7]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[8]_i_1_n_0 ),
        .Q(sLineBufferWriteData[8]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sLineBufferWriteData_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sLineBufferWriteData[9]_i_1_n_0 ),
        .Q(sLineBufferWriteData[9]),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE sLineBufferWrite_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(sOtherPixelsData),
        .Q(sLineBufferWrite_reg_n_0),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[0]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[10] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[10]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[10]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[20] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[20]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[11]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[21] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[21]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[12]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[22] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[22]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[13]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[23] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[23]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[14]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[24] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[24]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[15]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[25] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[25]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[16]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[26] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[26]),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[17]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[27] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[27]),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[18]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[28] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[28]),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[19]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[29] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[29]),
        .O(p_1_in[19]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[1]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[11] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[11]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[20]_i_1 
       (.I0(s_axis_video_tdata[30]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[21]_i_1 
       (.I0(s_axis_video_tdata[31]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[22]_i_1 
       (.I0(s_axis_video_tdata[32]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[23]_i_1 
       (.I0(s_axis_video_tdata[33]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[24]_i_1 
       (.I0(s_axis_video_tdata[34]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[25]_i_1 
       (.I0(s_axis_video_tdata[35]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[26]_i_1 
       (.I0(s_axis_video_tdata[36]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[27]_i_1 
       (.I0(s_axis_video_tdata[37]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[28]_i_1 
       (.I0(s_axis_video_tdata[38]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sOtherPixelsData[29]_i_1 
       (.I0(s_axis_video_tdata[39]),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[2]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[12] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[12]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[3]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[13] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[13]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[4]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[14] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[14]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[5]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[15] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[15]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[6]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[16] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[16]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[7]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[17] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[17]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[8]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[18] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[18]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \sOtherPixelsData[9]_i_1 
       (.I0(\sOtherPixelsData_reg_n_0_[19] ),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tdata[19]),
        .O(p_1_in[9]));
  FDRE \sOtherPixelsData_reg[0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[0]),
        .Q(\sOtherPixelsData_reg_n_0_[0] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[10] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[10]),
        .Q(\sOtherPixelsData_reg_n_0_[10] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[11] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[11]),
        .Q(\sOtherPixelsData_reg_n_0_[11] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[12] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[12]),
        .Q(\sOtherPixelsData_reg_n_0_[12] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[13] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[13]),
        .Q(\sOtherPixelsData_reg_n_0_[13] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[14] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[14]),
        .Q(\sOtherPixelsData_reg_n_0_[14] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[15] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[15]),
        .Q(\sOtherPixelsData_reg_n_0_[15] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[16] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[16]),
        .Q(\sOtherPixelsData_reg_n_0_[16] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[17] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[17]),
        .Q(\sOtherPixelsData_reg_n_0_[17] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[18] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[18]),
        .Q(\sOtherPixelsData_reg_n_0_[18] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[19] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[19]),
        .Q(\sOtherPixelsData_reg_n_0_[19] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[1]),
        .Q(\sOtherPixelsData_reg_n_0_[1] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[20] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[20]),
        .Q(\sOtherPixelsData_reg_n_0_[20] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[21] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[21]),
        .Q(\sOtherPixelsData_reg_n_0_[21] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[22] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[22]),
        .Q(\sOtherPixelsData_reg_n_0_[22] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[23] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[23]),
        .Q(\sOtherPixelsData_reg_n_0_[23] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[24] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[24]),
        .Q(\sOtherPixelsData_reg_n_0_[24] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[25] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[25]),
        .Q(\sOtherPixelsData_reg_n_0_[25] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[26] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[26]),
        .Q(\sOtherPixelsData_reg_n_0_[26] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[27] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[27]),
        .Q(\sOtherPixelsData_reg_n_0_[27] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[28] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[28]),
        .Q(\sOtherPixelsData_reg_n_0_[28] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[29] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[29]),
        .Q(\sOtherPixelsData_reg_n_0_[29] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[2]),
        .Q(\sOtherPixelsData_reg_n_0_[2] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[3]),
        .Q(\sOtherPixelsData_reg_n_0_[3] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[4]),
        .Q(\sOtherPixelsData_reg_n_0_[4] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[5]),
        .Q(\sOtherPixelsData_reg_n_0_[5] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[6]),
        .Q(\sOtherPixelsData_reg_n_0_[6] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[7]),
        .Q(\sOtherPixelsData_reg_n_0_[7] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[8]),
        .Q(\sOtherPixelsData_reg_n_0_[8] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sOtherPixelsData_reg[9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(p_1_in[9]),
        .Q(\sOtherPixelsData_reg_n_0_[9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[0]),
        .Q(\sPixel_reg_n_0_[0][0] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[1]),
        .Q(\sPixel_reg_n_0_[0][1] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[2]),
        .Q(\sPixel_reg_n_0_[0][2] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[3]),
        .Q(\sPixel_reg_n_0_[0][3] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[4]),
        .Q(\sPixel_reg_n_0_[0][4] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[5]),
        .Q(\sPixel_reg_n_0_[0][5] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[6]),
        .Q(\sPixel_reg_n_0_[0][6] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[7]),
        .Q(\sPixel_reg_n_0_[0][7] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[8]),
        .Q(\sPixel_reg_n_0_[0][8] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[0][9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(sLineBufferWriteDataDly[9]),
        .Q(\sPixel_reg_n_0_[0][9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][0] ),
        .Q(\sPixel_reg_n_0_[1][0] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][1] ),
        .Q(\sPixel_reg_n_0_[1][1] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][2] ),
        .Q(\sPixel_reg_n_0_[1][2] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][3] ),
        .Q(\sPixel_reg_n_0_[1][3] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][4] ),
        .Q(\sPixel_reg_n_0_[1][4] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][5] ),
        .Q(\sPixel_reg_n_0_[1][5] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][6] ),
        .Q(\sPixel_reg_n_0_[1][6] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][7] ),
        .Q(\sPixel_reg_n_0_[1][7] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][8] ),
        .Q(\sPixel_reg_n_0_[1][8] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[1][9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[0][9] ),
        .Q(\sPixel_reg_n_0_[1][9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_19),
        .Q(\sPixel_reg_n_0_[2][0] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_18),
        .Q(\sPixel_reg_n_0_[2][1] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_17),
        .Q(\sPixel_reg_n_0_[2][2] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_16),
        .Q(\sPixel_reg_n_0_[2][3] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_15),
        .Q(\sPixel_reg_n_0_[2][4] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_14),
        .Q(\sPixel_reg_n_0_[2][5] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_13),
        .Q(\sPixel_reg_n_0_[2][6] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_12),
        .Q(\sPixel_reg_n_0_[2][7] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_11),
        .Q(\sPixel_reg_n_0_[2][8] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[2][9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(LineBufferInst_n_10),
        .Q(\sPixel_reg_n_0_[2][9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][0] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][0] ),
        .Q(\sPixel_reg_n_0_[3][0] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][1] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][1] ),
        .Q(\sPixel_reg_n_0_[3][1] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][2] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][2] ),
        .Q(\sPixel_reg_n_0_[3][2] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][3] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][3] ),
        .Q(\sPixel_reg_n_0_[3][3] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][4] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][4] ),
        .Q(\sPixel_reg_n_0_[3][4] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][5] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][5] ),
        .Q(\sPixel_reg_n_0_[3][5] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][6] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][6] ),
        .Q(\sPixel_reg_n_0_[3][6] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][7] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][7] ),
        .Q(\sPixel_reg_n_0_[3][7] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][8] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][8] ),
        .Q(\sPixel_reg_n_0_[3][8] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sPixel_reg[3][9] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sPixel_reg_n_0_[2][9] ),
        .Q(\sPixel_reg_n_0_[3][9] ),
        .R(m_axis_video_tvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h2F222022)) 
    \sStrobesShiftReg[0][FirstColumn]_i_1 
       (.I0(\sStrobesShiftReg[0][FirstColumn]_i_2_n_0 ),
        .I1(\sStrobesShiftReg[0][FirstColumn]_i_3_n_0 ),
        .I2(sOtherPixelsData),
        .I3(sStreamReset_n),
        .I4(\sStrobesShiftReg_reg[0][FirstColumn]__0 ),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sStrobesShiftReg[0][FirstColumn]_i_2 
       (.I0(sCntColumns_reg__0[3]),
        .I1(sCntColumns_reg__0[9]),
        .I2(sCntColumns_reg__0[4]),
        .I3(sCntColumns_reg__0[8]),
        .I4(\sStrobesShiftReg[0][FirstColumn]_i_4_n_0 ),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sStrobesShiftReg[0][FirstColumn]_i_3 
       (.I0(\sStrobesShiftReg[0][FirstColumn]_i_5_n_0 ),
        .I1(sCntColumns_reg__0[2]),
        .I2(sCntColumns_reg__0[5]),
        .I3(sCntColumns_reg__0[7]),
        .I4(sCntColumns_reg__0[10]),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sStrobesShiftReg[0][FirstColumn]_i_4 
       (.I0(sCntColumns_reg__0[1]),
        .I1(sCntColumns_reg__0[0]),
        .I2(sStreamReset_n),
        .I3(sCntColumns_reg__0[6]),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sStrobesShiftReg[0][FirstColumn]_i_5 
       (.I0(sAXI_SlaveLastAsserted_reg_n_0),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000800)) 
    \sStrobesShiftReg[0][FirstLine]_i_1 
       (.I0(s_axis_video_tuser),
        .I1(s_axis_video_tvalid),
        .I2(\sStrobesShiftReg[0][Last]_i_2_n_0 ),
        .I3(m_axis_video_tready),
        .I4(\sStrobesShiftReg_reg[0][Last]__0 ),
        .I5(\sStrobesShiftReg_reg[0][FirstLine]__0 ),
        .O(\sStrobesShiftReg[0][FirstLine]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDF0000000000)) 
    \sStrobesShiftReg[0][Last]_i_1 
       (.I0(m_axis_video_tready),
        .I1(\sStrobesShiftReg[0][Last]_i_2_n_0 ),
        .I2(s_axis_video_tvalid),
        .I3(\sCntLines[0]_i_2_n_0 ),
        .I4(\sStrobesShiftReg_reg[0][Last]__0 ),
        .I5(sStreamReset_n),
        .O(\sStrobesShiftReg[0][Last]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sStrobesShiftReg[0][Last]_i_2 
       (.I0(sCntRemPixels[0]),
        .I1(sCntRemPixels[1]),
        .O(\sStrobesShiftReg[0][Last]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    \sStrobesShiftReg[0][User]_i_1 
       (.I0(s_axis_video_tuser),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .I3(s_axis_video_tvalid),
        .I4(m_axis_video_tready),
        .I5(\sStrobesShiftReg_reg[0][User]__0 ),
        .O(\sStrobesShiftReg[0][User]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \sStrobesShiftReg[3][User]_i_1 
       (.I0(m_axis_video_tready),
        .I1(sCntRemPixels[0]),
        .I2(sCntRemPixels[1]),
        .I3(s_axis_video_tvalid),
        .O(sOtherPixelsData));
  FDRE \sStrobesShiftReg_reg[0][FirstColumn] 
       (.C(StreamClk),
        .CE(1'b1),
        .D(\sStrobesShiftReg[0][FirstColumn]_i_1_n_0 ),
        .Q(\sStrobesShiftReg_reg[0][FirstColumn]__0 ),
        .R(1'b0));
  FDRE \sStrobesShiftReg_reg[0][FirstLine] 
       (.C(StreamClk),
        .CE(1'b1),
        .D(\sStrobesShiftReg[0][FirstLine]_i_1_n_0 ),
        .Q(\sStrobesShiftReg_reg[0][FirstLine]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[0][Last] 
       (.C(StreamClk),
        .CE(1'b1),
        .D(\sStrobesShiftReg[0][Last]_i_1_n_0 ),
        .Q(\sStrobesShiftReg_reg[0][Last]__0 ),
        .R(1'b0));
  FDRE \sStrobesShiftReg_reg[0][User] 
       (.C(StreamClk),
        .CE(1'b1),
        .D(\sStrobesShiftReg[0][User]_i_1_n_0 ),
        .Q(\sStrobesShiftReg_reg[0][User]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[1][FirstColumn] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[0][FirstColumn]__0 ),
        .Q(\sStrobesShiftReg_reg[1][FirstColumn]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[1][FirstLine] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[0][FirstLine]__0 ),
        .Q(\sStrobesShiftReg_reg[1][FirstLine]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[1][Last] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[0][Last]__0 ),
        .Q(\sStrobesShiftReg_reg[1][Last]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[1][User] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[0][User]__0 ),
        .Q(\sStrobesShiftReg_reg[1][User]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[2][FirstColumn] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[1][FirstColumn]__0 ),
        .Q(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[2][FirstLine] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[1][FirstLine]__0 ),
        .Q(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[2][Last] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[1][Last]__0 ),
        .Q(\sStrobesShiftReg_reg[2][Last]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[2][User] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[1][User]__0 ),
        .Q(\sStrobesShiftReg_reg[2][User]__0 ),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[3][Last] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[2][Last]__0 ),
        .Q(m_axis_video_tlast),
        .R(m_axis_video_tvalid_i_1_n_0));
  FDRE \sStrobesShiftReg_reg[3][User] 
       (.C(StreamClk),
        .CE(sOtherPixelsData),
        .D(\sStrobesShiftReg_reg[2][User]__0 ),
        .Q(m_axis_video_tuser),
        .R(m_axis_video_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    s_axis_video_tready_INST_0
       (.I0(m_axis_video_tready),
        .I1(sCntRemPixels[1]),
        .I2(sCntRemPixels[0]),
        .O(s_axis_video_tready));
endmodule

module system_AXI_BayerToRGB_1_0_LineBuffer
   (D,
    \sPixel_reg[2][9] ,
    StreamClk,
    sLineBufferWrite_reg,
    ADDRARDADDR,
    Q,
    \sLineBufferReadDataBuf_reg[9] );
  output [9:0]D;
  output [9:0]\sPixel_reg[2][9] ;
  input StreamClk;
  input sLineBufferWrite_reg;
  input [10:0]ADDRARDADDR;
  input [9:0]Q;
  input [9:0]\sLineBufferReadDataBuf_reg[9] ;

  wire [10:0]ADDRARDADDR;
  wire [9:0]D;
  wire [9:0]Q;
  wire StreamClk;
  wire [9:0]\sLineBufferReadDataBuf_reg[9] ;
  wire sLineBufferWrite_reg;
  wire [9:0]\sPixel_reg[2][9] ;
  wire NLW_pLineBuffer_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_pLineBuffer_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_pLineBuffer_reg_DBITERR_UNCONNECTED;
  wire NLW_pLineBuffer_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_pLineBuffer_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_pLineBuffer_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_pLineBuffer_reg_DOADO_UNCONNECTED;
  wire [31:10]NLW_pLineBuffer_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_pLineBuffer_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_pLineBuffer_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_pLineBuffer_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_pLineBuffer_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20480" *) 
  (* RTL_RAM_NAME = "pLineBuffer" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    pLineBuffer_reg
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_pLineBuffer_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_pLineBuffer_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(StreamClk),
        .CLKBWRCLK(StreamClk),
        .DBITERR(NLW_pLineBuffer_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_pLineBuffer_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_pLineBuffer_reg_DOBDO_UNCONNECTED[31:10],D}),
        .DOPADOP(NLW_pLineBuffer_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_pLineBuffer_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_pLineBuffer_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(sLineBufferWrite_reg),
        .ENBWREN(sLineBufferWrite_reg),
        .INJECTDBITERR(NLW_pLineBuffer_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_pLineBuffer_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_pLineBuffer_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_pLineBuffer_reg_SBITERR_UNCONNECTED),
        .WEA({sLineBufferWrite_reg,sLineBufferWrite_reg,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][0]_i_1 
       (.I0(D[0]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [0]),
        .O(\sPixel_reg[2][9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][1]_i_1 
       (.I0(D[1]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [1]),
        .O(\sPixel_reg[2][9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][2]_i_1 
       (.I0(D[2]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [2]),
        .O(\sPixel_reg[2][9] [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][3]_i_1 
       (.I0(D[3]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [3]),
        .O(\sPixel_reg[2][9] [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][4]_i_1 
       (.I0(D[4]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [4]),
        .O(\sPixel_reg[2][9] [4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][5]_i_1 
       (.I0(D[5]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [5]),
        .O(\sPixel_reg[2][9] [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][6]_i_1 
       (.I0(D[6]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [6]),
        .O(\sPixel_reg[2][9] [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][7]_i_1 
       (.I0(D[7]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [7]),
        .O(\sPixel_reg[2][9] [7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][8]_i_1 
       (.I0(D[8]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [8]),
        .O(\sPixel_reg[2][9] [8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sPixel[2][9]_i_1 
       (.I0(D[9]),
        .I1(sLineBufferWrite_reg),
        .I2(\sLineBufferReadDataBuf_reg[9] [9]),
        .O(\sPixel_reg[2][9] [9]));
endmodule

(* CHECK_LICENSE_TYPE = "system_AXI_BayerToRGB_1_0,AXI_BayerToRGB,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXI_BayerToRGB,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_AXI_BayerToRGB_1_0
   (StreamClk,
    sStreamReset_n,
    s_axis_video_tready,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tuser,
    s_axis_video_tlast,
    m_axis_video_tready,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tuser,
    m_axis_video_tlast,
    led,
    button,
    sw);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_Stream_Clk, ASSOCIATED_BUSIF AXI_Stream_Master:AXI_Slave_Interface, ASSOCIATED_RESET sStreamReset_n, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1" *) input StreamClk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_Stream_Reset_n, POLARITY ACTIVE_LOW" *) input sStreamReset_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_Slave_Interface, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef" *) output s_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA" *) input [39:0]s_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID" *) input s_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER" *) input s_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST" *) input s_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_Stream_Master, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef" *) input m_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA" *) output [31:0]m_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID" *) output m_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER" *) output m_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST" *) output m_axis_video_tlast;
  output [3:0]led;
  input [3:0]button;
  input [3:0]sw;

  wire \<const0> ;
  wire StreamClk;
  wire [3:3]\^led ;
  wire [29:0]\^m_axis_video_tdata ;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire sStreamReset_n;
  wire [39:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [3:0]sw;

  assign led[3] = \^led [3];
  assign led[2:0] = sw[2:0];
  assign m_axis_video_tdata[31] = \<const0> ;
  assign m_axis_video_tdata[30] = \<const0> ;
  assign m_axis_video_tdata[29:0] = \^m_axis_video_tdata [29:0];
  GND GND
       (.G(\<const0> ));
  system_AXI_BayerToRGB_1_0_AXI_BayerToRGB U0
       (.StreamClk(StreamClk),
        .led(\^led ),
        .m_axis_video_tdata(\^m_axis_video_tdata ),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .sStreamReset_n(sStreamReset_n),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .sw(sw[2:0]));
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
