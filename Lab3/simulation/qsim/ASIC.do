onerror {quit -f}
vlib work
vlog -work work ASIC.vo
vlog -work work ASIC.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ASIC_vlg_vec_tst
vcd file -direction ASIC.msim.vcd
vcd add -internal ASIC_vlg_vec_tst/*
vcd add -internal ASIC_vlg_vec_tst/i1/*
add wave /*
run -all
