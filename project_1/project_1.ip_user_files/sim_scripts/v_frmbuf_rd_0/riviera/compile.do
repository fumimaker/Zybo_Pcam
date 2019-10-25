vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/v_frmbuf_rd_v2_1_2

vmap xil_defaultlib riviera/xil_defaultlib
vmap v_frmbuf_rd_v2_1_2 riviera/v_frmbuf_rd_v2_1_2

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_AXIMMvideo2Bytes.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_Block_crit_edge44_s.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_Block_crit_edge44bkb.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_Block_crit_edge44eOg.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_Block_crit_edge448.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_Bytes2MultiPixStream.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_fifo_w3_d3_A.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_fifo_w8_d2_A.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_fifo_w16_d2_A.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_fifo_w32_d2_A.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_fifo_w128_d480_B.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_MultiPixStream2AXfYi.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_MultiPixStream2AXIvi.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_reg_unsigned_short_s.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_start_for_Bytes2Mhbi.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_start_for_MultiPiibs.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_v_frmbuf_rd_CTRL_s_axi.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_v_frmbuf_rd_mm_video_m_axi.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_v_frmbuf_rd_mul_mdEe.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_v_frmbuf_rd_mux_6g8j.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_v_frmbuf_rd_urem_cud.v" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/hdl/verilog/v_frmbuf_rd_0_v_frmbuf_rd.v" \

vlog -work v_frmbuf_rd_v2_1_2  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src" \
"../../../ipstatic/hdl/v_frmbuf_rd_v2_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src" \
"../../../../project_1.srcs/sources_1/ip/v_frmbuf_rd_0/sim/v_frmbuf_rd_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

