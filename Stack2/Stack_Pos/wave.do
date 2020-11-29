onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Test_stack/rst
add wave -noupdate /Test_stack/push_pop
add wave -noupdate /Test_stack/enable
add wave -noupdate /Test_stack/clk
add wave -noupdate /Test_stack/data_in
add wave -noupdate /Test_stack/data_io
add wave -noupdate /Test_stack/empty
add wave -noupdate /Test_stack/full
add wave -noupdate /Test_stack/i
add wave -noupdate /Test_stack/inst0/mux_in0
add wave -noupdate /Test_stack/inst0/mux_in1
add wave -noupdate /Test_stack/inst0/mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {102424877 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {102151218 ps} {102612166 ps}
