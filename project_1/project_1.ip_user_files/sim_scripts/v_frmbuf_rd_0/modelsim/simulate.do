onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L v_frmbuf_rd_v2_1_2 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.v_frmbuf_rd_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {v_frmbuf_rd_0.udo}

run -all

quit -force
