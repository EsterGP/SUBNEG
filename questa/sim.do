if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vlog ../rtl/mux.sv
vlog ../tb/tb_mux.sv
vsim -voptargs=+acc work.tb_mux

do wave.do
run -all
