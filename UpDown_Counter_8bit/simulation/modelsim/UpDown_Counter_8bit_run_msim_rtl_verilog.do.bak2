transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/CE/HDLDesign/Lab/UpDown_Counter_8bit {D:/CE/HDLDesign/Lab/UpDown_Counter_8bit/HAS.v}
vlog -vlog01compat -work work +incdir+D:/CE/HDLDesign/Lab/UpDown_Counter_8bit {D:/CE/HDLDesign/Lab/UpDown_Counter_8bit/Mux2_1.v}
vlog -vlog01compat -work work +incdir+D:/CE/HDLDesign/Lab/UpDown_Counter_8bit {D:/CE/HDLDesign/Lab/UpDown_Counter_8bit/TestHAS.v}
vlog -vlog01compat -work work +incdir+D:/CE/HDLDesign/Lab/UpDown_Counter_8bit {D:/CE/HDLDesign/Lab/UpDown_Counter_8bit/D_FF.v}

vlog -vlog01compat -work work +incdir+D:/CE/HDLDesign/Lab/UpDown_Counter_8bit/../Pre_UpDown {D:/CE/HDLDesign/Lab/UpDown_Counter_8bit/../Pre_UpDown/Testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
