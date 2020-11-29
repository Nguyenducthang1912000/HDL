onerror {quit -f}
vlib work
vlog -work work MealyFSM.vo
vlog -work work MealyFSM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MealyFSM_vlg_vec_tst
vcd file -direction MealyFSM.msim.vcd
vcd add -internal MealyFSM_vlg_vec_tst/*
vcd add -internal MealyFSM_vlg_vec_tst/i1/*
add wave /*
run -all
