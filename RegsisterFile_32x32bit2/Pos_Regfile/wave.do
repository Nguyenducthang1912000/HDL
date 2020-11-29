onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /Testbench/address_w
add wave -noupdate -radix unsigned /Testbench/address_a
add wave -noupdate -radix unsigned /Testbench/address_b
add wave -noupdate -radix unsigned /Testbench/enable_w
add wave -noupdate -radix unsigned /Testbench/enable_a
add wave -noupdate -radix unsigned /Testbench/enable_b
add wave -noupdate -radix unsigned /Testbench/clk
add wave -noupdate -radix unsigned /Testbench/In
add wave -noupdate -radix unsigned /Testbench/OutA
add wave -noupdate -radix unsigned /Testbench/OutB
add wave -noupdate -radix unsigned /Testbench/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1563681 ps} 0}
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
WaveRestoreZoom {2153974 ps} {2496418 ps}
