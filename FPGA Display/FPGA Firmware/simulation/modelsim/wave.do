restart
delete wave /qspi_buffer_controller/*
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/QSPI_CLK
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/SYNC_CLK
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/H_Address 
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/V_Address
add wave -radix hexadecimal 	-noupdate /qspi_buffer_controller/Data_In
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/WriteRequest
add wave -radix hexadecimal 	-noupdate /qspi_buffer_controller/Data_Out
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/WriteReq
add wave -radix hexadecimal 	-noupdate /qspi_buffer_controller/matrix1
add wave -radix hexadecimal 	-noupdate /qspi_buffer_controller/matrix2
add wave -radix default	 	-noupdate /qspi_buffer_controller/Q_State
add wave -radix default	 	-noupdate /qspi_buffer_controller/S_State
add wave -radix default	 	-noupdate /qspi_buffer_controller/Output_State
add wave -radix default	 	-noupdate /qspi_buffer_controller/OutputBuffer1_Finished
add wave -radix default	 	-noupdate /qspi_buffer_controller/OutputBuffer2_Finished
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/QSPI_Hadd
add wave -radix unsigned 	-noupdate /qspi_buffer_controller/QSPI_Vadd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 280
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
force -freeze sim:/qspi_buffer_controller/QSPI_CLK 1 0, 0 {15625 ps} -r 31250
force -freeze sim:/qspi_buffer_controller/SYNC_CLK 1 0, 0 {19861 ps} -r 39722
force -freeze sim:/qspi_buffer_controller/WriteRequest 1 0
force -freeze sim:/qspi_buffer_controller/WriteRequest 1 0 -cancel 9024000
force -freeze sim:/qspi_buffer_controller/Data_In(0) 1 0, 0 {15625 ps} -r 31250
force -freeze sim:/qspi_buffer_controller/Data_In(1) 1 0, 0 {31250 ps} -r 62500
force -freeze sim:/qspi_buffer_controller/Data_In(2) 1 0, 0 {62500 ps} -r 125000
force -freeze sim:/qspi_buffer_controller/Data_In(3) 1 0, 0 {125000 ps} -r 250000
force -freeze sim:/qspi_buffer_controller/Data_In(4) 1 0, 0 {250000 ps} -r 500000
force -freeze sim:/qspi_buffer_controller/Data_In(5) 1 0, 0 {500000 ps} -r 1000000
force -freeze sim:/qspi_buffer_controller/Data_In(6) 1 0, 0 {1000000 ps} -r 2000000
force -freeze sim:/qspi_buffer_controller/Data_In(7) 1 0, 0 {2000000 ps} -r 4000000

force -freeze sim:/qspi_buffer_controller/H_Address(0) 0
force -freeze sim:/qspi_buffer_controller/H_Address(1) 0
force -freeze sim:/qspi_buffer_controller/H_Address(2) 0
force -freeze sim:/qspi_buffer_controller/H_Address(3) 0
force -freeze sim:/qspi_buffer_controller/H_Address(4) 1
force -freeze sim:/qspi_buffer_controller/H_Address(5) 0
force -freeze sim:/qspi_buffer_controller/H_Address(6) 0
force -freeze sim:/qspi_buffer_controller/H_Address(7) 0
force -freeze sim:/qspi_buffer_controller/H_Address(8) 0
force -freeze sim:/qspi_buffer_controller/H_Address(9) 0

force -freeze sim:/qspi_buffer_controller/V_Address(0) 0
force -freeze sim:/qspi_buffer_controller/V_Address(1) 0
force -freeze sim:/qspi_buffer_controller/V_Address(2) 0
force -freeze sim:/qspi_buffer_controller/V_Address(3) 0
force -freeze sim:/qspi_buffer_controller/V_Address(4) 1
force -freeze sim:/qspi_buffer_controller/V_Address(5) 0
force -freeze sim:/qspi_buffer_controller/V_Address(6) 0
force -freeze sim:/qspi_buffer_controller/V_Address(7) 0
force -freeze sim:/qspi_buffer_controller/V_Address(8) 0
force -freeze sim:/qspi_buffer_controller/V_Address(9) 0#force -freeze sim:/qspi_buffer_controller/H_Address(0) 0 0, 1 {15625 ps} -r 31250
#force -freeze sim:/qspi_buffer_controller/H_Address(1) 0 0, 1 {31250 ps} -r 62500
#force -freeze sim:/qspi_buffer_controller/H_Address(2) 0 0, 1 {62500 ps} -r 125000
#force -freeze sim:/qspi_buffer_controller/H_Address(3) 0 0, 1 {125000 ps} -r 250000
#force -freeze sim:/qspi_buffer_controller/H_Address(4) 0 0, 1 {250000 ps} -r 500000 
#force -freeze sim:/qspi_buffer_controller/H_Address(5) 0 0, 0 {500000 ps} -r 1000000
#force -freeze sim:/qspi_buffer_controller/H_Address(6) 0 0, 0 {1000000 ps} -r 2000000
#force -freeze sim:/qspi_buffer_controller/H_Address(7) 0 0, 0 {2000000 ps} -r 4000000
#force -freeze sim:/qspi_buffer_controller/H_Address(8) 0 0, 0 {4000000 ps} -r 8000000
#force -freeze sim:/qspi_buffer_controller/H_Address(9) 0 0, 0 {8000000 ps} -r 16000000
#
#force -freeze sim:/qspi_buffer_controller/V_Address(0) 0 0, 1 {265625 ps} -r 531250
#force -freeze sim:/qspi_buffer_controller/V_Address(1) 0 0, 1 {531250 ps} -r 1062500
#force -freeze sim:/qspi_buffer_controller/V_Address(2) 0 0, 1 {1062500 ps} -r 2125000
#force -freeze sim:/qspi_buffer_controller/V_Address(3) 0 0, 1 {2125000 ps} -r 4250000
#force -freeze sim:/qspi_buffer_controller/V_Address(4) 0 0, 1 {4250000 ps} -r 8500000 
#force -freeze sim:/qspi_buffer_controller/V_Address(5) 0 0, 0 {8500000 ps} -r 17000000
#force -freeze sim:/qspi_buffer_controller/V_Address(6) 0 0, 0 {17000000 ps} -r 34000000
#force -freeze sim:/qspi_buffer_controller/V_Address(7) 0 0, 0 {34000000 ps} -r 68000000
#force -freeze sim:/qspi_buffer_controller/V_Address(8) 0 0, 0 {68000000 ps} -r 136000000
#force -freeze sim:/qspi_buffer_controller/V_Address(9) 0 0, 0 {136000000 ps} -r 272000000

update
WaveRestoreZoom {0 ps} {550 ns}
#run -all
#
#when -label H_Add "H_Address = \"0000010001\"" {
#
#	force -freeze sim:/qspi_buffer_controller/H_Address(4) 0 0, 1 {250000 ps} -r 500000 
#}





