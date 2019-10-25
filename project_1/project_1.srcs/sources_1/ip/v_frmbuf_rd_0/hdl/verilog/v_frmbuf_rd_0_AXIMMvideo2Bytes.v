// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module v_frmbuf_rd_0_AXIMMvideo2Bytes (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_srcImg_V_AWVALID,
        m_axi_srcImg_V_AWREADY,
        m_axi_srcImg_V_AWADDR,
        m_axi_srcImg_V_AWID,
        m_axi_srcImg_V_AWLEN,
        m_axi_srcImg_V_AWSIZE,
        m_axi_srcImg_V_AWBURST,
        m_axi_srcImg_V_AWLOCK,
        m_axi_srcImg_V_AWCACHE,
        m_axi_srcImg_V_AWPROT,
        m_axi_srcImg_V_AWQOS,
        m_axi_srcImg_V_AWREGION,
        m_axi_srcImg_V_AWUSER,
        m_axi_srcImg_V_WVALID,
        m_axi_srcImg_V_WREADY,
        m_axi_srcImg_V_WDATA,
        m_axi_srcImg_V_WSTRB,
        m_axi_srcImg_V_WLAST,
        m_axi_srcImg_V_WID,
        m_axi_srcImg_V_WUSER,
        m_axi_srcImg_V_ARVALID,
        m_axi_srcImg_V_ARREADY,
        m_axi_srcImg_V_ARADDR,
        m_axi_srcImg_V_ARID,
        m_axi_srcImg_V_ARLEN,
        m_axi_srcImg_V_ARSIZE,
        m_axi_srcImg_V_ARBURST,
        m_axi_srcImg_V_ARLOCK,
        m_axi_srcImg_V_ARCACHE,
        m_axi_srcImg_V_ARPROT,
        m_axi_srcImg_V_ARQOS,
        m_axi_srcImg_V_ARREGION,
        m_axi_srcImg_V_ARUSER,
        m_axi_srcImg_V_RVALID,
        m_axi_srcImg_V_RREADY,
        m_axi_srcImg_V_RDATA,
        m_axi_srcImg_V_RLAST,
        m_axi_srcImg_V_RID,
        m_axi_srcImg_V_RUSER,
        m_axi_srcImg_V_RRESP,
        m_axi_srcImg_V_BVALID,
        m_axi_srcImg_V_BREADY,
        m_axi_srcImg_V_BRESP,
        m_axi_srcImg_V_BID,
        m_axi_srcImg_V_BUSER,
        srcImg_V_offset_dout,
        srcImg_V_offset_empty_n,
        srcImg_V_offset_read,
        img_plane0_V_V_din,
        img_plane0_V_V_full_n,
        img_plane0_V_V_write,
        Height,
        mul_ln131_loc_dout,
        mul_ln131_loc_empty_n,
        mul_ln131_loc_read,
        StrideInBytes,
        mul_ln131_loc_out_din,
        mul_ln131_loc_out_full_n,
        mul_ln131_loc_out_write
);

parameter    ap_ST_fsm_state1 = 110'd1;
parameter    ap_ST_fsm_state2 = 110'd2;
parameter    ap_ST_fsm_state3 = 110'd4;
parameter    ap_ST_fsm_state4 = 110'd8;
parameter    ap_ST_fsm_state5 = 110'd16;
parameter    ap_ST_fsm_state6 = 110'd32;
parameter    ap_ST_fsm_state7 = 110'd64;
parameter    ap_ST_fsm_state8 = 110'd128;
parameter    ap_ST_fsm_state9 = 110'd256;
parameter    ap_ST_fsm_state10 = 110'd512;
parameter    ap_ST_fsm_state11 = 110'd1024;
parameter    ap_ST_fsm_state12 = 110'd2048;
parameter    ap_ST_fsm_state13 = 110'd4096;
parameter    ap_ST_fsm_state14 = 110'd8192;
parameter    ap_ST_fsm_state15 = 110'd16384;
parameter    ap_ST_fsm_state16 = 110'd32768;
parameter    ap_ST_fsm_state17 = 110'd65536;
parameter    ap_ST_fsm_state18 = 110'd131072;
parameter    ap_ST_fsm_state19 = 110'd262144;
parameter    ap_ST_fsm_state20 = 110'd524288;
parameter    ap_ST_fsm_state21 = 110'd1048576;
parameter    ap_ST_fsm_state22 = 110'd2097152;
parameter    ap_ST_fsm_state23 = 110'd4194304;
parameter    ap_ST_fsm_state24 = 110'd8388608;
parameter    ap_ST_fsm_state25 = 110'd16777216;
parameter    ap_ST_fsm_state26 = 110'd33554432;
parameter    ap_ST_fsm_state27 = 110'd67108864;
parameter    ap_ST_fsm_state28 = 110'd134217728;
parameter    ap_ST_fsm_state29 = 110'd268435456;
parameter    ap_ST_fsm_state30 = 110'd536870912;
parameter    ap_ST_fsm_state31 = 110'd1073741824;
parameter    ap_ST_fsm_state32 = 110'd2147483648;
parameter    ap_ST_fsm_state33 = 110'd4294967296;
parameter    ap_ST_fsm_state34 = 110'd8589934592;
parameter    ap_ST_fsm_state35 = 110'd17179869184;
parameter    ap_ST_fsm_state36 = 110'd34359738368;
parameter    ap_ST_fsm_state37 = 110'd68719476736;
parameter    ap_ST_fsm_state38 = 110'd137438953472;
parameter    ap_ST_fsm_state39 = 110'd274877906944;
parameter    ap_ST_fsm_state40 = 110'd549755813888;
parameter    ap_ST_fsm_state41 = 110'd1099511627776;
parameter    ap_ST_fsm_state42 = 110'd2199023255552;
parameter    ap_ST_fsm_state43 = 110'd4398046511104;
parameter    ap_ST_fsm_state44 = 110'd8796093022208;
parameter    ap_ST_fsm_state45 = 110'd17592186044416;
parameter    ap_ST_fsm_state46 = 110'd35184372088832;
parameter    ap_ST_fsm_state47 = 110'd70368744177664;
parameter    ap_ST_fsm_state48 = 110'd140737488355328;
parameter    ap_ST_fsm_state49 = 110'd281474976710656;
parameter    ap_ST_fsm_state50 = 110'd562949953421312;
parameter    ap_ST_fsm_state51 = 110'd1125899906842624;
parameter    ap_ST_fsm_state52 = 110'd2251799813685248;
parameter    ap_ST_fsm_state53 = 110'd4503599627370496;
parameter    ap_ST_fsm_state54 = 110'd9007199254740992;
parameter    ap_ST_fsm_state55 = 110'd18014398509481984;
parameter    ap_ST_fsm_state56 = 110'd36028797018963968;
parameter    ap_ST_fsm_state57 = 110'd72057594037927936;
parameter    ap_ST_fsm_state58 = 110'd144115188075855872;
parameter    ap_ST_fsm_state59 = 110'd288230376151711744;
parameter    ap_ST_fsm_state60 = 110'd576460752303423488;
parameter    ap_ST_fsm_state61 = 110'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 110'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 110'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 110'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 110'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 110'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 110'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 110'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 110'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 110'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 110'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 110'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 110'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 110'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 110'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 110'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 110'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 110'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 110'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 110'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 110'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 110'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 110'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 110'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 110'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 110'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 110'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 110'd154742504910672534362390528;
parameter    ap_ST_fsm_state89 = 110'd309485009821345068724781056;
parameter    ap_ST_fsm_state90 = 110'd618970019642690137449562112;
parameter    ap_ST_fsm_state91 = 110'd1237940039285380274899124224;
parameter    ap_ST_fsm_state92 = 110'd2475880078570760549798248448;
parameter    ap_ST_fsm_state93 = 110'd4951760157141521099596496896;
parameter    ap_ST_fsm_state94 = 110'd9903520314283042199192993792;
parameter    ap_ST_fsm_state95 = 110'd19807040628566084398385987584;
parameter    ap_ST_fsm_state96 = 110'd39614081257132168796771975168;
parameter    ap_ST_fsm_state97 = 110'd79228162514264337593543950336;
parameter    ap_ST_fsm_state98 = 110'd158456325028528675187087900672;
parameter    ap_ST_fsm_state99 = 110'd316912650057057350374175801344;
parameter    ap_ST_fsm_state100 = 110'd633825300114114700748351602688;
parameter    ap_ST_fsm_state101 = 110'd1267650600228229401496703205376;
parameter    ap_ST_fsm_state102 = 110'd2535301200456458802993406410752;
parameter    ap_ST_fsm_state103 = 110'd5070602400912917605986812821504;
parameter    ap_ST_fsm_state104 = 110'd10141204801825835211973625643008;
parameter    ap_ST_fsm_state105 = 110'd20282409603651670423947251286016;
parameter    ap_ST_fsm_state106 = 110'd40564819207303340847894502572032;
parameter    ap_ST_fsm_state107 = 110'd81129638414606681695789005144064;
parameter    ap_ST_fsm_state108 = 110'd162259276829213363391578010288128;
parameter    ap_ST_fsm_pp0_stage0 = 110'd324518553658426726783156020576256;
parameter    ap_ST_fsm_state112 = 110'd649037107316853453566312041152512;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_srcImg_V_AWVALID;
input   m_axi_srcImg_V_AWREADY;
output  [31:0] m_axi_srcImg_V_AWADDR;
output  [0:0] m_axi_srcImg_V_AWID;
output  [31:0] m_axi_srcImg_V_AWLEN;
output  [2:0] m_axi_srcImg_V_AWSIZE;
output  [1:0] m_axi_srcImg_V_AWBURST;
output  [1:0] m_axi_srcImg_V_AWLOCK;
output  [3:0] m_axi_srcImg_V_AWCACHE;
output  [2:0] m_axi_srcImg_V_AWPROT;
output  [3:0] m_axi_srcImg_V_AWQOS;
output  [3:0] m_axi_srcImg_V_AWREGION;
output  [0:0] m_axi_srcImg_V_AWUSER;
output   m_axi_srcImg_V_WVALID;
input   m_axi_srcImg_V_WREADY;
output  [127:0] m_axi_srcImg_V_WDATA;
output  [15:0] m_axi_srcImg_V_WSTRB;
output   m_axi_srcImg_V_WLAST;
output  [0:0] m_axi_srcImg_V_WID;
output  [0:0] m_axi_srcImg_V_WUSER;
output   m_axi_srcImg_V_ARVALID;
input   m_axi_srcImg_V_ARREADY;
output  [31:0] m_axi_srcImg_V_ARADDR;
output  [0:0] m_axi_srcImg_V_ARID;
output  [31:0] m_axi_srcImg_V_ARLEN;
output  [2:0] m_axi_srcImg_V_ARSIZE;
output  [1:0] m_axi_srcImg_V_ARBURST;
output  [1:0] m_axi_srcImg_V_ARLOCK;
output  [3:0] m_axi_srcImg_V_ARCACHE;
output  [2:0] m_axi_srcImg_V_ARPROT;
output  [3:0] m_axi_srcImg_V_ARQOS;
output  [3:0] m_axi_srcImg_V_ARREGION;
output  [0:0] m_axi_srcImg_V_ARUSER;
input   m_axi_srcImg_V_RVALID;
output   m_axi_srcImg_V_RREADY;
input  [127:0] m_axi_srcImg_V_RDATA;
input   m_axi_srcImg_V_RLAST;
input  [0:0] m_axi_srcImg_V_RID;
input  [0:0] m_axi_srcImg_V_RUSER;
input  [1:0] m_axi_srcImg_V_RRESP;
input   m_axi_srcImg_V_BVALID;
output   m_axi_srcImg_V_BREADY;
input  [1:0] m_axi_srcImg_V_BRESP;
input  [0:0] m_axi_srcImg_V_BID;
input  [0:0] m_axi_srcImg_V_BUSER;
input  [31:0] srcImg_V_offset_dout;
input   srcImg_V_offset_empty_n;
output   srcImg_V_offset_read;
output  [127:0] img_plane0_V_V_din;
input   img_plane0_V_V_full_n;
output   img_plane0_V_V_write;
input  [15:0] Height;
input  [15:0] mul_ln131_loc_dout;
input   mul_ln131_loc_empty_n;
output   mul_ln131_loc_read;
input  [15:0] StrideInBytes;
output  [15:0] mul_ln131_loc_out_din;
input   mul_ln131_loc_out_full_n;
output   mul_ln131_loc_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_srcImg_V_ARVALID;
reg m_axi_srcImg_V_RREADY;
reg srcImg_V_offset_read;
reg img_plane0_V_V_write;
reg mul_ln131_loc_read;
reg mul_ln131_loc_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [109:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    srcImg_V_blk_n_AR;
wire    ap_CS_fsm_state3;
reg    srcImg_V_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln351_reg_374;
reg    srcImg_V_offset_blk_n;
reg    img_plane0_V_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln351_reg_374_pp0_iter1_reg;
reg    mul_ln131_loc_blk_n;
reg    mul_ln131_loc_out_blk_n;
reg   [12:0] x_0_i_i_i_reg_221;
reg    ap_block_state1;
wire   [12:0] trunc_ln_i_fu_242_p4;
reg   [12:0] trunc_ln_i_reg_335;
wire   [27:0] zext_ln359_fu_262_p1;
wire   [31:0] empty_fu_266_p1;
reg   [31:0] empty_reg_345;
wire   [28:0] zext_ln346_fu_280_p1;
reg   [28:0] zext_ln346_reg_350;
wire   [15:0] y_fu_289_p2;
reg   [15:0] y_reg_358;
wire    ap_CS_fsm_state2;
wire   [28:0] add_ln355_fu_299_p2;
reg   [28:0] add_ln355_reg_363;
wire   [0:0] icmp_ln346_fu_284_p2;
wire   [0:0] icmp_ln351_fu_314_p2;
wire    ap_block_state109_pp0_stage0_iter0;
reg    ap_block_state110_pp0_stage0_iter1;
reg    ap_block_state111_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [12:0] x_fu_319_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [127:0] fb_pix_V_reg_383;
wire   [27:0] offset_fu_325_p2;
wire    ap_CS_fsm_state112;
wire    ap_CS_fsm_state108;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state109;
reg   [27:0] offset_0_i_i_i_reg_198;
reg   [15:0] y_0_i_i_i_reg_210;
wire   [63:0] zext_ln355_1_fu_304_p1;
reg    ap_block_pp0_stage0_01001;
wire   [16:0] zext_ln351_fu_232_p1;
wire   [16:0] add_ln351_fu_236_p2;
wire   [11:0] lshr_ln_i_fu_252_p4;
wire   [27:0] tmp_fu_270_p4;
wire   [28:0] zext_ln355_fu_295_p1;
reg   [109:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 110'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln346_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state109) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state108)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state109)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state109);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state108)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state112)) begin
        offset_0_i_i_i_reg_198 <= offset_fu_325_p2;
    end else if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        offset_0_i_i_i_reg_198 <= 28'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln351_fu_314_p2 == 1'd0))) begin
        x_0_i_i_i_reg_221 <= x_fu_319_p2;
    end else if ((1'b1 == ap_CS_fsm_state108)) begin
        x_0_i_i_i_reg_221 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state112)) begin
        y_0_i_i_i_reg_210 <= y_reg_358;
    end else if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        y_0_i_i_i_reg_210 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln346_fu_284_p2 == 1'd0))) begin
        add_ln355_reg_363 <= add_ln355_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_345[12 : 0] <= empty_fu_266_p1[12 : 0];
        trunc_ln_i_reg_335 <= {{add_ln351_fu_236_p2[16:4]}};
        zext_ln346_reg_350[27 : 0] <= zext_ln346_fu_280_p1[27 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln351_reg_374 == 1'd0))) begin
        fb_pix_V_reg_383 <= m_axi_srcImg_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln351_reg_374 <= icmp_ln351_fu_314_p2;
        icmp_ln351_reg_374_pp0_iter1_reg <= icmp_ln351_reg_374;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_reg_358 <= y_fu_289_p2;
    end
end

always @ (*) begin
    if ((icmp_ln351_fu_314_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state109 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state109 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln346_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln351_reg_374_pp0_iter1_reg == 1'd0))) begin
        img_plane0_V_V_blk_n = img_plane0_V_V_full_n;
    end else begin
        img_plane0_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln351_reg_374_pp0_iter1_reg == 1'd0))) begin
        img_plane0_V_V_write = 1'b1;
    end else begin
        img_plane0_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln346_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (m_axi_srcImg_V_ARREADY == 1'b1))) begin
        m_axi_srcImg_V_ARVALID = 1'b1;
    end else begin
        m_axi_srcImg_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln351_reg_374 == 1'd0))) begin
        m_axi_srcImg_V_RREADY = 1'b1;
    end else begin
        m_axi_srcImg_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln131_loc_blk_n = mul_ln131_loc_empty_n;
    end else begin
        mul_ln131_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln131_loc_out_blk_n = mul_ln131_loc_out_full_n;
    end else begin
        mul_ln131_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln131_loc_out_write = 1'b1;
    end else begin
        mul_ln131_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln131_loc_read = 1'b1;
    end else begin
        mul_ln131_loc_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        srcImg_V_blk_n_AR = m_axi_srcImg_V_ARREADY;
    end else begin
        srcImg_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln351_reg_374 == 1'd0))) begin
        srcImg_V_blk_n_R = m_axi_srcImg_V_RVALID;
    end else begin
        srcImg_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        srcImg_V_offset_blk_n = srcImg_V_offset_empty_n;
    end else begin
        srcImg_V_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        srcImg_V_offset_read = 1'b1;
    end else begin
        srcImg_V_offset_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln346_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (m_axi_srcImg_V_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            ap_NS_fsm = ap_ST_fsm_state82;
        end
        ap_ST_fsm_state82 : begin
            ap_NS_fsm = ap_ST_fsm_state83;
        end
        ap_ST_fsm_state83 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state84 : begin
            ap_NS_fsm = ap_ST_fsm_state85;
        end
        ap_ST_fsm_state85 : begin
            ap_NS_fsm = ap_ST_fsm_state86;
        end
        ap_ST_fsm_state86 : begin
            ap_NS_fsm = ap_ST_fsm_state87;
        end
        ap_ST_fsm_state87 : begin
            ap_NS_fsm = ap_ST_fsm_state88;
        end
        ap_ST_fsm_state88 : begin
            ap_NS_fsm = ap_ST_fsm_state89;
        end
        ap_ST_fsm_state89 : begin
            ap_NS_fsm = ap_ST_fsm_state90;
        end
        ap_ST_fsm_state90 : begin
            ap_NS_fsm = ap_ST_fsm_state91;
        end
        ap_ST_fsm_state91 : begin
            ap_NS_fsm = ap_ST_fsm_state92;
        end
        ap_ST_fsm_state92 : begin
            ap_NS_fsm = ap_ST_fsm_state93;
        end
        ap_ST_fsm_state93 : begin
            ap_NS_fsm = ap_ST_fsm_state94;
        end
        ap_ST_fsm_state94 : begin
            ap_NS_fsm = ap_ST_fsm_state95;
        end
        ap_ST_fsm_state95 : begin
            ap_NS_fsm = ap_ST_fsm_state96;
        end
        ap_ST_fsm_state96 : begin
            ap_NS_fsm = ap_ST_fsm_state97;
        end
        ap_ST_fsm_state97 : begin
            ap_NS_fsm = ap_ST_fsm_state98;
        end
        ap_ST_fsm_state98 : begin
            ap_NS_fsm = ap_ST_fsm_state99;
        end
        ap_ST_fsm_state99 : begin
            ap_NS_fsm = ap_ST_fsm_state100;
        end
        ap_ST_fsm_state100 : begin
            ap_NS_fsm = ap_ST_fsm_state101;
        end
        ap_ST_fsm_state101 : begin
            ap_NS_fsm = ap_ST_fsm_state102;
        end
        ap_ST_fsm_state102 : begin
            ap_NS_fsm = ap_ST_fsm_state103;
        end
        ap_ST_fsm_state103 : begin
            ap_NS_fsm = ap_ST_fsm_state104;
        end
        ap_ST_fsm_state104 : begin
            ap_NS_fsm = ap_ST_fsm_state105;
        end
        ap_ST_fsm_state105 : begin
            ap_NS_fsm = ap_ST_fsm_state106;
        end
        ap_ST_fsm_state106 : begin
            ap_NS_fsm = ap_ST_fsm_state107;
        end
        ap_ST_fsm_state107 : begin
            ap_NS_fsm = ap_ST_fsm_state108;
        end
        ap_ST_fsm_state108 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln351_fu_314_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln351_fu_314_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state112;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state112 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln351_fu_236_p2 = (zext_ln351_fu_232_p1 + 17'd15);

assign add_ln355_fu_299_p2 = (zext_ln346_reg_350 + zext_ln355_fu_295_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd108];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state108 = ap_CS_fsm[32'd107];

assign ap_CS_fsm_state112 = ap_CS_fsm[32'd109];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((img_plane0_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln351_reg_374_pp0_iter1_reg == 1'd0)) | ((m_axi_srcImg_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln351_reg_374 == 1'd0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((img_plane0_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln351_reg_374_pp0_iter1_reg == 1'd0)) | ((m_axi_srcImg_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln351_reg_374 == 1'd0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((img_plane0_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln351_reg_374_pp0_iter1_reg == 1'd0)) | ((m_axi_srcImg_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln351_reg_374 == 1'd0)));
end

always @ (*) begin
    ap_block_state1 = ((mul_ln131_loc_out_full_n == 1'b0) | (mul_ln131_loc_empty_n == 1'b0) | (srcImg_V_offset_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state109_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state110_pp0_stage0_iter1 = ((m_axi_srcImg_V_RVALID == 1'b0) & (icmp_ln351_reg_374 == 1'd0));
end

always @ (*) begin
    ap_block_state111_pp0_stage0_iter2 = ((img_plane0_V_V_full_n == 1'b0) & (icmp_ln351_reg_374_pp0_iter1_reg == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign empty_fu_266_p1 = trunc_ln_i_fu_242_p4;

assign icmp_ln346_fu_284_p2 = ((y_0_i_i_i_reg_210 == Height) ? 1'b1 : 1'b0);

assign icmp_ln351_fu_314_p2 = ((x_0_i_i_i_reg_221 == trunc_ln_i_reg_335) ? 1'b1 : 1'b0);

assign img_plane0_V_V_din = fb_pix_V_reg_383;

assign lshr_ln_i_fu_252_p4 = {{StrideInBytes[15:4]}};

assign m_axi_srcImg_V_ARADDR = zext_ln355_1_fu_304_p1;

assign m_axi_srcImg_V_ARBURST = 2'd0;

assign m_axi_srcImg_V_ARCACHE = 4'd0;

assign m_axi_srcImg_V_ARID = 1'd0;

assign m_axi_srcImg_V_ARLEN = empty_reg_345;

assign m_axi_srcImg_V_ARLOCK = 2'd0;

assign m_axi_srcImg_V_ARPROT = 3'd0;

assign m_axi_srcImg_V_ARQOS = 4'd0;

assign m_axi_srcImg_V_ARREGION = 4'd0;

assign m_axi_srcImg_V_ARSIZE = 3'd0;

assign m_axi_srcImg_V_ARUSER = 1'd0;

assign m_axi_srcImg_V_AWADDR = 32'd0;

assign m_axi_srcImg_V_AWBURST = 2'd0;

assign m_axi_srcImg_V_AWCACHE = 4'd0;

assign m_axi_srcImg_V_AWID = 1'd0;

assign m_axi_srcImg_V_AWLEN = 32'd0;

assign m_axi_srcImg_V_AWLOCK = 2'd0;

assign m_axi_srcImg_V_AWPROT = 3'd0;

assign m_axi_srcImg_V_AWQOS = 4'd0;

assign m_axi_srcImg_V_AWREGION = 4'd0;

assign m_axi_srcImg_V_AWSIZE = 3'd0;

assign m_axi_srcImg_V_AWUSER = 1'd0;

assign m_axi_srcImg_V_AWVALID = 1'b0;

assign m_axi_srcImg_V_BREADY = 1'b0;

assign m_axi_srcImg_V_WDATA = 128'd0;

assign m_axi_srcImg_V_WID = 1'd0;

assign m_axi_srcImg_V_WLAST = 1'b0;

assign m_axi_srcImg_V_WSTRB = 16'd0;

assign m_axi_srcImg_V_WUSER = 1'd0;

assign m_axi_srcImg_V_WVALID = 1'b0;

assign mul_ln131_loc_out_din = mul_ln131_loc_dout;

assign offset_fu_325_p2 = (zext_ln359_fu_262_p1 + offset_0_i_i_i_reg_198);

assign start_out = real_start;

assign tmp_fu_270_p4 = {{srcImg_V_offset_dout[31:4]}};

assign trunc_ln_i_fu_242_p4 = {{add_ln351_fu_236_p2[16:4]}};

assign x_fu_319_p2 = (x_0_i_i_i_reg_221 + 13'd1);

assign y_fu_289_p2 = (y_0_i_i_i_reg_210 + 16'd1);

assign zext_ln346_fu_280_p1 = tmp_fu_270_p4;

assign zext_ln351_fu_232_p1 = mul_ln131_loc_dout;

assign zext_ln355_1_fu_304_p1 = add_ln355_reg_363;

assign zext_ln355_fu_295_p1 = offset_0_i_i_i_reg_198;

assign zext_ln359_fu_262_p1 = lshr_ln_i_fu_252_p4;

always @ (posedge ap_clk) begin
    empty_reg_345[31:13] <= 19'b0000000000000000000;
    zext_ln346_reg_350[28] <= 1'b0;
end

endmodule //v_frmbuf_rd_0_AXIMMvideo2Bytes
