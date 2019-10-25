onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+v_frmbuf_rd_0 -L xil_defaultlib -L v_frmbuf_rd_v2_1_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.v_frmbuf_rd_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {v_frmbuf_rd_0.udo}

run -all

endsim

quit -force
