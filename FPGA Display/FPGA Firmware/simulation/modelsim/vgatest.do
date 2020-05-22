restart -sim
add wave -position end sim:/vga_controller/*
force -freeze sim:/vga_controller/CLK 1 0, 0 {50 ps} -r 100
force -freeze sim:/vga_controller/Red_Data 111 0
force -freeze sim:/vga_controller/Green_Data 000 0
force -freeze sim:/vga_controller/Blue_Data 00 0