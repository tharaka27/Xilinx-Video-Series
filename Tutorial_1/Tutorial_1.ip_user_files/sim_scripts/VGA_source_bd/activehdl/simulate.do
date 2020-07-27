onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+VGA_source_bd -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.VGA_source_bd xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {VGA_source_bd.udo}

run -all

endsim

quit -force
