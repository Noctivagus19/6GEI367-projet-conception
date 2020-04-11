transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/part5.vhd}
vcom -93 -work work {C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/proc.vhd}
vcom -93 -work work {C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/pc_count.vhd}
vcom -93 -work work {C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/flipflop.vhd}
vcom -93 -work work {C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/inst_mem.vhd}
vcom -93 -work work {C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/seg7.vhd}

do "C:/Users/The_N/Documents/GitHub/6GEI367-projet-conceptioin/part5.VHDL/ModelSim/testbench.tcl"
