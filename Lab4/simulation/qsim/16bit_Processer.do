onerror {quit -f}
vlib work
vlog -work work 16bit_Processer.vo
vlog -work work 16bit_Processer.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Processer_16bit_vlg_vec_tst
vcd file -direction 16bit_Processer.msim.vcd
vcd add -internal Processer_16bit_vlg_vec_tst/*
vcd add -internal Processer_16bit_vlg_vec_tst/i1/*
add wave /*
run -all
