transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZackB/Documents/FinalYearProject/FPGA Display/FPGA Firmware/QSPI_Buffer_Controller.vhd}

vcom -93 -work work {C:/Users/ZackB/Documents/FinalYearProject/FPGA Display/FPGA Firmware/simulation/modelsim/QSPI_Buffer_Controller.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  QSPI_Buffer_Controller_vhd_tst

do C:/Users/ZackB/Documents/FinalYearProject/FPGA Display/FPGA Firmware/simulation/modelsim/QSPIBufferConTestbench.do
