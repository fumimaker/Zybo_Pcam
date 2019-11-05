vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pcam-5c.srcs/sources_1/ip/vio_0_1/hdl/verilog" "+incdir+../../../../pcam-5c.srcs/sources_1/ip/vio_0_1/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../pcam-5c.srcs/sources_1/ip/vio_0_1/hdl/verilog" "+incdir+../../../../pcam-5c.srcs/sources_1/ip/vio_0_1/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../pcam-5c.srcs/sources_1/ip/vio_0_1/sim/vio_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

