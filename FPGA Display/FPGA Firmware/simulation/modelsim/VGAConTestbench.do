onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /vga_controller_vhd_tst/CLK
add wave -noupdate -radix unsigned /vga_controller_vhd_tst/H_Address
add wave -noupdate -radix unsigned /vga_controller_vhd_tst/V_Address
add wave -noupdate -radix hexadecimal /vga_controller_vhd_tst/Red_Data
add wave -noupdate -radix hexadecimal /vga_controller_vhd_tst/Green_Data
add wave -noupdate -radix hexadecimal /vga_controller_vhd_tst/Blue_Data
add wave -noupdate -radix hexadecimal /vga_controller_vhd_tst/Red
add wave -noupdate -radix hexadecimal /vga_controller_vhd_tst/Green
add wave -noupdate -radix hexadecimal /vga_controller_vhd_tst/Blue
add wave -noupdate /vga_controller_vhd_tst/Hsync
add wave -noupdate /vga_controller_vhd_tst/Vsync
add wave -noupdate -radix unsigned /vga_controller_vhd_tst/SReset_n
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 227
configure wave -valuecolwidth 149
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
WaveRestoreZoom {0 ps} {913 ps}
