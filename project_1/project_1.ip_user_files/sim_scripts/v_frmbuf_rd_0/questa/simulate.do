onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib v_frmbuf_rd_0_opt

do {wave.do}

view wave
view structure
view signals

do {v_frmbuf_rd_0.udo}

run -all

quit -force
