// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Jan 20 16:20:06 2020
// Host        : DESKTOP-5VC2SBS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_AXI_BayerToRGB_1_0_sim_netlist.v
// Design      : system_AXI_BayerToRGB_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_BayerToRGB
   (m_axis_video_tuser,
    m_axis_video_tlast,
    m_axis_video_tdata,
    s_axis_video_tready,
    m_axis_video_tvalid,
    StreamClk,
    s_axis_video_tvalid,
    m_axis_video_tready,
    sStreamReset_n,
    s_axis_video_tlast,
    s_axis_video_tuser);
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tdata;
  output s_axis_video_tready;
  output m_axis_video_tvalid;
  input StreamClk;
  input s_axis_video_tvalid;
  input m_axis_video_tready;
  input sStreamReset_n;
  input s_axis_video_tlast;
  input s_axis_video_tuser;

  wire StreamClk;
  wire [0:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire m_axis_video_tvalid_i_1_n_0;
  wire [10:0]plusOp;
  wire sAXIMasterBlue1;
  wire \sAXIMasterGreen[10]_i_1_n_0 ;
  wire sAXI_SlaveLastAsserted_i_1_n_0;
  wire sAXI_SlaveLastAsserted_reg_n_0;
  wire \sCntColumns[10]_i_1_n_0 ;
  wire \sCntColumns[10]_i_3_n_0 ;
  wire [10:0]sCntColumns_reg__0;
  wire \sCntRemPixels[0]_i_1_n_0 ;
  wire \sCntRemPixels[1]_i_1_n_0 ;
  wire \sCntRemPixels_reg_n_0_[0] ;
  wire \sCntRemPixels_reg_n_0_[1] ;
  wire sCoverInitialLatency;
  wire sCoverInitialLatency_i_1_n_0;
  wire sLineBufferWriteData;
  wire sStreamReset_n;
  wire \sStrobesShiftReg[0][FirstColumn]_i_1_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_2_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_3_n_0 ;
  wire \sStrobesShiftReg[0][FirstColumn]_i_4_n_0 ;
  wire \sStrobesShiftReg[0][FirstLine]_i_1_n_0 ;
  wire \sStrobesShiftReg[0][Last]_i_1_n_0 ;
  wire \sStrobesShiftReg[0][Last]_i_2_n_0 ;
  wire \sStrobesShiftReg[0][Last]_i_3_n_0 ;
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
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    m_axis_video_tvalid_i_1
       (.I0(s_axis_video_tvalid),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(\sCntRemPixels_reg_n_0_[0] ),
        .I3(sCoverInitialLatency),
        .I4(m_axis_video_tready),
        .I5(m_axis_video_tvalid),
        .O(m_axis_video_tvalid_i_1_n_0));
  FDRE m_axis_video_tvalid_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(m_axis_video_tvalid_i_1_n_0),
        .Q(m_axis_video_tvalid),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sAXIMasterGreen[10]_i_1 
       (.I0(sStreamReset_n),
        .O(\sAXIMasterGreen[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \sAXIMasterGreen[10]_i_2 
       (.I0(\sCntRemPixels_reg_n_0_[0] ),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(s_axis_video_tvalid),
        .I3(m_axis_video_tready),
        .O(sLineBufferWriteData));
  LUT2 #(
    .INIT(4'hE)) 
    \sAXIMasterGreen[10]_i_3 
       (.I0(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .I1(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .O(sAXIMasterBlue1));
  FDRE \sAXIMasterGreen_reg[10] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(sAXIMasterBlue1),
        .Q(m_axis_video_tdata),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AAAEAAA0AAAAA)) 
    sAXI_SlaveLastAsserted_i_1
       (.I0(sAXI_SlaveLastAsserted_reg_n_0),
        .I1(s_axis_video_tvalid),
        .I2(m_axis_video_tready),
        .I3(\sCntRemPixels_reg_n_0_[1] ),
        .I4(\sCntRemPixels_reg_n_0_[0] ),
        .I5(s_axis_video_tlast),
        .O(sAXI_SlaveLastAsserted_i_1_n_0));
  FDRE sAXI_SlaveLastAsserted_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(sAXI_SlaveLastAsserted_i_1_n_0),
        .Q(sAXI_SlaveLastAsserted_reg_n_0),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sCntColumns[0]_i_1 
       (.I0(sCntColumns_reg__0[0]),
        .O(plusOp[0]));
  LUT5 #(
    .INIT(32'h2000FFFF)) 
    \sCntColumns[10]_i_1 
       (.I0(\sCntRemPixels_reg_n_0_[0] ),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(sAXI_SlaveLastAsserted_reg_n_0),
        .I3(m_axis_video_tready),
        .I4(sStreamReset_n),
        .O(\sCntColumns[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \sCntColumns[10]_i_2 
       (.I0(sCntColumns_reg__0[9]),
        .I1(sCntColumns_reg__0[7]),
        .I2(\sCntColumns[10]_i_3_n_0 ),
        .I3(sCntColumns_reg__0[6]),
        .I4(sCntColumns_reg__0[8]),
        .I5(sCntColumns_reg__0[10]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sCntColumns[10]_i_3 
       (.I0(sCntColumns_reg__0[4]),
        .I1(sCntColumns_reg__0[2]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[1]),
        .I4(sCntColumns_reg__0[3]),
        .I5(sCntColumns_reg__0[5]),
        .O(\sCntColumns[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sCntColumns[1]_i_1 
       (.I0(sCntColumns_reg__0[0]),
        .I1(sCntColumns_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sCntColumns[2]_i_1 
       (.I0(sCntColumns_reg__0[1]),
        .I1(sCntColumns_reg__0[0]),
        .I2(sCntColumns_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sCntColumns[3]_i_1 
       (.I0(sCntColumns_reg__0[2]),
        .I1(sCntColumns_reg__0[0]),
        .I2(sCntColumns_reg__0[1]),
        .I3(sCntColumns_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sCntColumns[4]_i_1 
       (.I0(sCntColumns_reg__0[3]),
        .I1(sCntColumns_reg__0[1]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[2]),
        .I4(sCntColumns_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sCntColumns[5]_i_1 
       (.I0(sCntColumns_reg__0[4]),
        .I1(sCntColumns_reg__0[2]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[1]),
        .I4(sCntColumns_reg__0[3]),
        .I5(sCntColumns_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sCntColumns[6]_i_1 
       (.I0(\sCntColumns[10]_i_3_n_0 ),
        .I1(sCntColumns_reg__0[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \sCntColumns[7]_i_1 
       (.I0(sCntColumns_reg__0[6]),
        .I1(\sCntColumns[10]_i_3_n_0 ),
        .I2(sCntColumns_reg__0[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \sCntColumns[8]_i_1 
       (.I0(sCntColumns_reg__0[7]),
        .I1(\sCntColumns[10]_i_3_n_0 ),
        .I2(sCntColumns_reg__0[6]),
        .I3(sCntColumns_reg__0[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \sCntColumns[9]_i_1 
       (.I0(sCntColumns_reg__0[8]),
        .I1(sCntColumns_reg__0[6]),
        .I2(\sCntColumns[10]_i_3_n_0 ),
        .I3(sCntColumns_reg__0[7]),
        .I4(sCntColumns_reg__0[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[0] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[0]),
        .Q(sCntColumns_reg__0[0]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[10] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[10]),
        .Q(sCntColumns_reg__0[10]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[1] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[1]),
        .Q(sCntColumns_reg__0[1]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[2] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[2]),
        .Q(sCntColumns_reg__0[2]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[3] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[3]),
        .Q(sCntColumns_reg__0[3]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[4] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[4]),
        .Q(sCntColumns_reg__0[4]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[5] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[5]),
        .Q(sCntColumns_reg__0[5]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[6] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[6]),
        .Q(sCntColumns_reg__0[6]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[7] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[7]),
        .Q(sCntColumns_reg__0[7]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[8] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[8]),
        .Q(sCntColumns_reg__0[8]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sCntColumns_reg[9] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(plusOp[9]),
        .Q(sCntColumns_reg__0[9]),
        .R(\sCntColumns[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \sCntRemPixels[0]_i_1 
       (.I0(\sCntRemPixels_reg_n_0_[0] ),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(s_axis_video_tvalid),
        .O(\sCntRemPixels[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \sCntRemPixels[1]_i_1 
       (.I0(\sCntRemPixels_reg_n_0_[0] ),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(s_axis_video_tvalid),
        .O(\sCntRemPixels[1]_i_1_n_0 ));
  FDRE \sCntRemPixels_reg[0] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sCntRemPixels[0]_i_1_n_0 ),
        .Q(\sCntRemPixels_reg_n_0_[0] ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sCntRemPixels_reg[1] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sCntRemPixels[1]_i_1_n_0 ),
        .Q(\sCntRemPixels_reg_n_0_[1] ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
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
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF808080008080)) 
    \sStrobesShiftReg[0][FirstColumn]_i_1 
       (.I0(\sStrobesShiftReg[0][FirstColumn]_i_2_n_0 ),
        .I1(\sStrobesShiftReg[0][FirstColumn]_i_3_n_0 ),
        .I2(\sStrobesShiftReg[0][FirstColumn]_i_4_n_0 ),
        .I3(sLineBufferWriteData),
        .I4(sStreamReset_n),
        .I5(\sStrobesShiftReg_reg[0][FirstColumn]__0 ),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \sStrobesShiftReg[0][FirstColumn]_i_2 
       (.I0(\sCntRemPixels_reg_n_0_[0] ),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(sAXI_SlaveLastAsserted_reg_n_0),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \sStrobesShiftReg[0][FirstColumn]_i_3 
       (.I0(sCntColumns_reg__0[8]),
        .I1(sCntColumns_reg__0[9]),
        .I2(sCntColumns_reg__0[6]),
        .I3(sCntColumns_reg__0[7]),
        .I4(sCntColumns_reg__0[10]),
        .I5(sStreamReset_n),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sStrobesShiftReg[0][FirstColumn]_i_4 
       (.I0(sCntColumns_reg__0[2]),
        .I1(sCntColumns_reg__0[3]),
        .I2(sCntColumns_reg__0[0]),
        .I3(sCntColumns_reg__0[1]),
        .I4(sCntColumns_reg__0[5]),
        .I5(sCntColumns_reg__0[4]),
        .O(\sStrobesShiftReg[0][FirstColumn]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00C00000)) 
    \sStrobesShiftReg[0][FirstLine]_i_1 
       (.I0(\sStrobesShiftReg_reg[0][Last]__0 ),
        .I1(s_axis_video_tvalid),
        .I2(m_axis_video_tready),
        .I3(\sStrobesShiftReg[0][Last]_i_3_n_0 ),
        .I4(s_axis_video_tuser),
        .I5(\sStrobesShiftReg_reg[0][FirstLine]__0 ),
        .O(\sStrobesShiftReg[0][FirstLine]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA800A8A8A8A8A8A8)) 
    \sStrobesShiftReg[0][Last]_i_1 
       (.I0(sStreamReset_n),
        .I1(\sStrobesShiftReg[0][Last]_i_2_n_0 ),
        .I2(\sStrobesShiftReg_reg[0][Last]__0 ),
        .I3(\sStrobesShiftReg[0][Last]_i_3_n_0 ),
        .I4(m_axis_video_tready),
        .I5(s_axis_video_tvalid),
        .O(\sStrobesShiftReg[0][Last]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sStrobesShiftReg[0][Last]_i_2 
       (.I0(m_axis_video_tready),
        .I1(sAXI_SlaveLastAsserted_reg_n_0),
        .I2(\sCntRemPixels_reg_n_0_[1] ),
        .I3(\sCntRemPixels_reg_n_0_[0] ),
        .O(\sStrobesShiftReg[0][Last]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sStrobesShiftReg[0][Last]_i_3 
       (.I0(\sCntRemPixels_reg_n_0_[0] ),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .O(\sStrobesShiftReg[0][Last]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \sStrobesShiftReg[0][User]_i_1 
       (.I0(s_axis_video_tvalid),
        .I1(s_axis_video_tuser),
        .I2(\sCntRemPixels_reg_n_0_[1] ),
        .I3(\sCntRemPixels_reg_n_0_[0] ),
        .I4(m_axis_video_tready),
        .I5(\sStrobesShiftReg_reg[0][User]__0 ),
        .O(\sStrobesShiftReg[0][User]_i_1_n_0 ));
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
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
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
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[1][FirstColumn] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[0][FirstColumn]__0 ),
        .Q(\sStrobesShiftReg_reg[1][FirstColumn]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[1][FirstLine] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[0][FirstLine]__0 ),
        .Q(\sStrobesShiftReg_reg[1][FirstLine]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[1][Last] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[0][Last]__0 ),
        .Q(\sStrobesShiftReg_reg[1][Last]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[1][User] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[0][User]__0 ),
        .Q(\sStrobesShiftReg_reg[1][User]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[2][FirstColumn] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[1][FirstColumn]__0 ),
        .Q(\sStrobesShiftReg_reg[2][FirstColumn]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[2][FirstLine] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[1][FirstLine]__0 ),
        .Q(\sStrobesShiftReg_reg[2][FirstLine]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[2][Last] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[1][Last]__0 ),
        .Q(\sStrobesShiftReg_reg[2][Last]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[2][User] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[1][User]__0 ),
        .Q(\sStrobesShiftReg_reg[2][User]__0 ),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[3][Last] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[2][Last]__0 ),
        .Q(m_axis_video_tlast),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  FDRE \sStrobesShiftReg_reg[3][User] 
       (.C(StreamClk),
        .CE(sLineBufferWriteData),
        .D(\sStrobesShiftReg_reg[2][User]__0 ),
        .Q(m_axis_video_tuser),
        .R(\sAXIMasterGreen[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    s_axis_video_tready_INST_0
       (.I0(m_axis_video_tready),
        .I1(\sCntRemPixels_reg_n_0_[1] ),
        .I2(\sCntRemPixels_reg_n_0_[0] ),
        .O(s_axis_video_tready));
endmodule

(* CHECK_LICENSE_TYPE = "system_AXI_BayerToRGB_1_0,AXI_BayerToRGB,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXI_BayerToRGB,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    m_axis_video_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_Stream_Clk, ASSOCIATED_BUSIF AXI_Stream_Master:AXI_Slave_Interface, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1" *) input StreamClk;
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

  wire \<const0> ;
  wire StreamClk;
  wire [19:19]\^m_axis_video_tdata ;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire sStreamReset_n;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  assign m_axis_video_tdata[31] = \<const0> ;
  assign m_axis_video_tdata[30] = \<const0> ;
  assign m_axis_video_tdata[29] = \^m_axis_video_tdata [19];
  assign m_axis_video_tdata[28] = \<const0> ;
  assign m_axis_video_tdata[27] = \<const0> ;
  assign m_axis_video_tdata[26] = \<const0> ;
  assign m_axis_video_tdata[25] = \<const0> ;
  assign m_axis_video_tdata[24] = \<const0> ;
  assign m_axis_video_tdata[23] = \<const0> ;
  assign m_axis_video_tdata[22] = \<const0> ;
  assign m_axis_video_tdata[21] = \<const0> ;
  assign m_axis_video_tdata[20] = \<const0> ;
  assign m_axis_video_tdata[19] = \^m_axis_video_tdata [19];
  assign m_axis_video_tdata[18] = \<const0> ;
  assign m_axis_video_tdata[17] = \<const0> ;
  assign m_axis_video_tdata[16] = \<const0> ;
  assign m_axis_video_tdata[15] = \<const0> ;
  assign m_axis_video_tdata[14] = \<const0> ;
  assign m_axis_video_tdata[13] = \<const0> ;
  assign m_axis_video_tdata[12] = \<const0> ;
  assign m_axis_video_tdata[11] = \<const0> ;
  assign m_axis_video_tdata[10] = \<const0> ;
  assign m_axis_video_tdata[9] = \^m_axis_video_tdata [19];
  assign m_axis_video_tdata[8] = \<const0> ;
  assign m_axis_video_tdata[7] = \<const0> ;
  assign m_axis_video_tdata[6] = \<const0> ;
  assign m_axis_video_tdata[5] = \<const0> ;
  assign m_axis_video_tdata[4] = \<const0> ;
  assign m_axis_video_tdata[3] = \<const0> ;
  assign m_axis_video_tdata[2] = \<const0> ;
  assign m_axis_video_tdata[1] = \<const0> ;
  assign m_axis_video_tdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_BayerToRGB U0
       (.StreamClk(StreamClk),
        .m_axis_video_tdata(\^m_axis_video_tdata ),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .sStreamReset_n(sStreamReset_n),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid));
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
