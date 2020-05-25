transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZackB/Documents/FinalYearProject/FPGA Display/FPGA Firmware/Back_Buffer.vhd}

vcom -93 -work work {C:/Users/ZackB/Documents/FinalYearProject/FPGA Display/FPGA Firmware/simulation/modelsim/VGA_Controller.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  VGA_Controller_vhd_tst

add wave *
view structure
view signals
run -all
