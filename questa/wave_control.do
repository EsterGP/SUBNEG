onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_control/clk
add wave -noupdate /tb_control/rst
add wave -noupdate /tb_control/neg
add wave -noupdate /tb_control/write_op1
add wave -noupdate /tb_control/write_op2
add wave -noupdate /tb_control/write_mem
add wave -noupdate /tb_control/sel_pc
add wave -noupdate /tb_control/write_pc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2059130 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2059050 ps} {2060050 ps}
