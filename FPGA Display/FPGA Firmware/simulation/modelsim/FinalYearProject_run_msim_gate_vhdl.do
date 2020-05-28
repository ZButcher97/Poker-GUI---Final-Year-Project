transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FinalYearProject_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/ZackB/Documents/FinalYearProject/FPGA Display/FPGA Firmware/simulation/modelsim/QSPI_Buffer_Controller.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=FinalYearProject_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  QSPI_Buffer_Controller_vhd_tst

add wave *
view structure
view signals
run -all
