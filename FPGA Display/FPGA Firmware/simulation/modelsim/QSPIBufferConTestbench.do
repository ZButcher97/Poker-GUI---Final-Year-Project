onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /qspi_buffer_controller_vhd_tst/QSPI_CLK
add wave -noupdate -radix hexadecimal /qspi_buffer_controller_vhd_tst/Data_In
add wave -noupdate /qspi_buffer_controller_vhd_tst/WriteRequest
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate /qspi_buffer_controller_vhd_tst/SYNC_CLK
add wave -noupdate -radix unsigned /qspi_buffer_controller_vhd_tst/Data_Out
add wave -noupdate -radix unsigned /qspi_buffer_controller_vhd_tst/H_Address
add wave -noupdate -radix unsigned /qspi_buffer_controller_vhd_tst/V_Address
add wave -noupdate /qspi_buffer_controller_vhd_tst/WriteReq
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {34272128 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 288
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {166874108 ps}
