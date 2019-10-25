open_project v_frmbuf_rd_0
set_top v_frmbuf_rd
add_files -cflags " -I z:/GitHub/Zybo_Pcam/project_1/project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src " z:/GitHub/Zybo_Pcam/project_1/project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src/v_frmbuf_rd_config.h
add_files -cflags " -I z:/GitHub/Zybo_Pcam/project_1/project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src " z:/GitHub/Zybo_Pcam/project_1/project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src/v_frmbuf_rd.cpp
add_files -cflags " -I z:/GitHub/Zybo_Pcam/project_1/project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src " z:/GitHub/Zybo_Pcam/project_1/project_1.srcs/sources_1/ip/v_frmbuf_rd_0/src/v_frmbuf_rd.h

open_solution "prj"
set_part {xc7z010clg400-1}
create_clock -period 6.667 -name ap_clk

                 
config_rtl -enable_axiFlushable

config_interface -input_reg_mode both -output_reg_mode both



config_rtl -prefix v_frmbuf_rd_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 2.1
exit
