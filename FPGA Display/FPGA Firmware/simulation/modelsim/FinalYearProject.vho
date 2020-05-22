-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/22/2020 16:29:27"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalYearProject IS
    PORT (
	VGA_RED : OUT std_logic;
	PIXEL_CLOCK : IN std_logic;
	VGA_GREEN : OUT std_logic;
	VGA_BLUE : OUT std_logic;
	VGA_HSYNC : OUT std_logic;
	VGA_VSYNC : OUT std_logic
	);
END FinalYearProject;

-- Design Ports Information
-- VGA_RED	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GREEN	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLUE	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HSYNC	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VSYNC	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL_CLOCK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FinalYearProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_RED : std_logic;
SIGNAL ww_PIXEL_CLOCK : std_logic;
SIGNAL ww_VGA_GREEN : std_logic;
SIGNAL ww_VGA_BLUE : std_logic;
SIGNAL ww_VGA_HSYNC : std_logic;
SIGNAL ww_VGA_VSYNC : std_logic;
SIGNAL \PIXEL_CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_RED~output_o\ : std_logic;
SIGNAL \VGA_GREEN~output_o\ : std_logic;
SIGNAL \VGA_BLUE~output_o\ : std_logic;
SIGNAL \VGA_HSYNC~output_o\ : std_logic;
SIGNAL \VGA_VSYNC~output_o\ : std_logic;
SIGNAL \PIXEL_CLOCK~input_o\ : std_logic;
SIGNAL \PIXEL_CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|HCount[0]~32_combout\ : std_logic;
SIGNAL \inst|HCount[7]~47\ : std_logic;
SIGNAL \inst|HCount[8]~48_combout\ : std_logic;
SIGNAL \inst|HCount[8]~49\ : std_logic;
SIGNAL \inst|HCount[9]~50_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|HCount[9]~51\ : std_logic;
SIGNAL \inst|HCount[10]~53_combout\ : std_logic;
SIGNAL \inst|HCount[10]~54\ : std_logic;
SIGNAL \inst|HCount[11]~55_combout\ : std_logic;
SIGNAL \inst|HCount[11]~56\ : std_logic;
SIGNAL \inst|HCount[12]~57_combout\ : std_logic;
SIGNAL \inst|HCount[12]~58\ : std_logic;
SIGNAL \inst|HCount[13]~59_combout\ : std_logic;
SIGNAL \inst|HCount[13]~60\ : std_logic;
SIGNAL \inst|HCount[14]~61_combout\ : std_logic;
SIGNAL \inst|HCount[14]~62\ : std_logic;
SIGNAL \inst|HCount[15]~63_combout\ : std_logic;
SIGNAL \inst|HCount[15]~64\ : std_logic;
SIGNAL \inst|HCount[16]~65_combout\ : std_logic;
SIGNAL \inst|HCount[16]~66\ : std_logic;
SIGNAL \inst|HCount[17]~67_combout\ : std_logic;
SIGNAL \inst|HCount[17]~68\ : std_logic;
SIGNAL \inst|HCount[18]~69_combout\ : std_logic;
SIGNAL \inst|HCount[18]~70\ : std_logic;
SIGNAL \inst|HCount[19]~71_combout\ : std_logic;
SIGNAL \inst|HCount[19]~72\ : std_logic;
SIGNAL \inst|HCount[20]~73_combout\ : std_logic;
SIGNAL \inst|HCount[20]~74\ : std_logic;
SIGNAL \inst|HCount[21]~75_combout\ : std_logic;
SIGNAL \inst|HCount[21]~76\ : std_logic;
SIGNAL \inst|HCount[22]~77_combout\ : std_logic;
SIGNAL \inst|HCount[22]~78\ : std_logic;
SIGNAL \inst|HCount[23]~79_combout\ : std_logic;
SIGNAL \inst|HCount[23]~80\ : std_logic;
SIGNAL \inst|HCount[24]~81_combout\ : std_logic;
SIGNAL \inst|HCount[24]~82\ : std_logic;
SIGNAL \inst|HCount[25]~83_combout\ : std_logic;
SIGNAL \inst|HCount[25]~84\ : std_logic;
SIGNAL \inst|HCount[26]~85_combout\ : std_logic;
SIGNAL \inst|HCount[26]~86\ : std_logic;
SIGNAL \inst|HCount[27]~87_combout\ : std_logic;
SIGNAL \inst|HCount[27]~88\ : std_logic;
SIGNAL \inst|HCount[28]~89_combout\ : std_logic;
SIGNAL \inst|HCount[28]~90\ : std_logic;
SIGNAL \inst|HCount[29]~91_combout\ : std_logic;
SIGNAL \inst|HCount[29]~92\ : std_logic;
SIGNAL \inst|HCount[30]~93_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|HCount[30]~94\ : std_logic;
SIGNAL \inst|HCount[31]~95_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|HState~6_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~9_combout\ : std_logic;
SIGNAL \inst|HCount~52_combout\ : std_logic;
SIGNAL \inst|HCount[0]~33\ : std_logic;
SIGNAL \inst|HCount[1]~34_combout\ : std_logic;
SIGNAL \inst|HCount[1]~35\ : std_logic;
SIGNAL \inst|HCount[2]~36_combout\ : std_logic;
SIGNAL \inst|HCount[2]~37\ : std_logic;
SIGNAL \inst|HCount[3]~38_combout\ : std_logic;
SIGNAL \inst|HCount[3]~39\ : std_logic;
SIGNAL \inst|HCount[4]~40_combout\ : std_logic;
SIGNAL \inst|HCount[4]~41\ : std_logic;
SIGNAL \inst|HCount[5]~42_combout\ : std_logic;
SIGNAL \inst|HCount[5]~43\ : std_logic;
SIGNAL \inst|HCount[6]~44_combout\ : std_logic;
SIGNAL \inst|HCount[6]~45\ : std_logic;
SIGNAL \inst|HCount[7]~46_combout\ : std_logic;
SIGNAL \inst|LessThan1~6_combout\ : std_logic;
SIGNAL \inst|LessThan1~7_combout\ : std_logic;
SIGNAL \inst|HState~7_combout\ : std_logic;
SIGNAL \inst|HState~8_combout\ : std_logic;
SIGNAL \inst|HState.Display~q\ : std_logic;
SIGNAL \inst|vCount[0]~32_combout\ : std_logic;
SIGNAL \inst|LessThan6~8_combout\ : std_logic;
SIGNAL \inst|LessThan6~9_combout\ : std_logic;
SIGNAL \inst|VState~7_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~2_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|LessThan6~3_combout\ : std_logic;
SIGNAL \inst|LessThan6~4_combout\ : std_logic;
SIGNAL \inst|LessThan6~5_combout\ : std_logic;
SIGNAL \inst|LessThan6~6_combout\ : std_logic;
SIGNAL \inst|LessThan6~10_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|LessThan7~2_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_combout\ : std_logic;
SIGNAL \inst|LessThan5~2_combout\ : std_logic;
SIGNAL \inst|vCount~86_combout\ : std_logic;
SIGNAL \inst|vCount~87_combout\ : std_logic;
SIGNAL \inst|vCount[0]~33\ : std_logic;
SIGNAL \inst|vCount[1]~34_combout\ : std_logic;
SIGNAL \inst|vCount[1]~35\ : std_logic;
SIGNAL \inst|vCount[2]~36_combout\ : std_logic;
SIGNAL \inst|vCount[2]~37\ : std_logic;
SIGNAL \inst|vCount[3]~38_combout\ : std_logic;
SIGNAL \inst|vCount[3]~39\ : std_logic;
SIGNAL \inst|vCount[4]~40_combout\ : std_logic;
SIGNAL \inst|vCount[4]~41\ : std_logic;
SIGNAL \inst|vCount[5]~42_combout\ : std_logic;
SIGNAL \inst|vCount[5]~43\ : std_logic;
SIGNAL \inst|vCount[6]~44_combout\ : std_logic;
SIGNAL \inst|vCount[6]~45\ : std_logic;
SIGNAL \inst|vCount[7]~46_combout\ : std_logic;
SIGNAL \inst|vCount[7]~47\ : std_logic;
SIGNAL \inst|vCount[8]~48_combout\ : std_logic;
SIGNAL \inst|vCount[8]~49\ : std_logic;
SIGNAL \inst|vCount[9]~50_combout\ : std_logic;
SIGNAL \inst|vCount[9]~51\ : std_logic;
SIGNAL \inst|vCount[10]~52_combout\ : std_logic;
SIGNAL \inst|vCount[10]~53\ : std_logic;
SIGNAL \inst|vCount[11]~54_combout\ : std_logic;
SIGNAL \inst|vCount[11]~55\ : std_logic;
SIGNAL \inst|vCount[12]~56_combout\ : std_logic;
SIGNAL \inst|vCount[12]~57\ : std_logic;
SIGNAL \inst|vCount[13]~58_combout\ : std_logic;
SIGNAL \inst|vCount[13]~59\ : std_logic;
SIGNAL \inst|vCount[14]~60_combout\ : std_logic;
SIGNAL \inst|vCount[14]~61\ : std_logic;
SIGNAL \inst|vCount[15]~62_combout\ : std_logic;
SIGNAL \inst|vCount[15]~63\ : std_logic;
SIGNAL \inst|vCount[16]~64_combout\ : std_logic;
SIGNAL \inst|vCount[16]~65\ : std_logic;
SIGNAL \inst|vCount[17]~66_combout\ : std_logic;
SIGNAL \inst|vCount[17]~67\ : std_logic;
SIGNAL \inst|vCount[18]~68_combout\ : std_logic;
SIGNAL \inst|vCount[18]~69\ : std_logic;
SIGNAL \inst|vCount[19]~70_combout\ : std_logic;
SIGNAL \inst|vCount[19]~71\ : std_logic;
SIGNAL \inst|vCount[20]~72_combout\ : std_logic;
SIGNAL \inst|vCount[20]~73\ : std_logic;
SIGNAL \inst|vCount[21]~74_combout\ : std_logic;
SIGNAL \inst|vCount[21]~75\ : std_logic;
SIGNAL \inst|vCount[22]~76_combout\ : std_logic;
SIGNAL \inst|vCount[22]~77\ : std_logic;
SIGNAL \inst|vCount[23]~78_combout\ : std_logic;
SIGNAL \inst|vCount[23]~79\ : std_logic;
SIGNAL \inst|vCount[24]~80_combout\ : std_logic;
SIGNAL \inst|vCount[24]~81\ : std_logic;
SIGNAL \inst|vCount[25]~82_combout\ : std_logic;
SIGNAL \inst|vCount[25]~83\ : std_logic;
SIGNAL \inst|vCount[26]~84_combout\ : std_logic;
SIGNAL \inst|vCount[26]~85\ : std_logic;
SIGNAL \inst|vCount[27]~88_combout\ : std_logic;
SIGNAL \inst|vCount[27]~89\ : std_logic;
SIGNAL \inst|vCount[28]~90_combout\ : std_logic;
SIGNAL \inst|vCount[28]~91\ : std_logic;
SIGNAL \inst|vCount[29]~92_combout\ : std_logic;
SIGNAL \inst|vCount[29]~93\ : std_logic;
SIGNAL \inst|vCount[30]~94_combout\ : std_logic;
SIGNAL \inst|vCount[30]~95\ : std_logic;
SIGNAL \inst|vCount[31]~96_combout\ : std_logic;
SIGNAL \inst|LessThan4~1_combout\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|LessThan6~7_combout\ : std_logic;
SIGNAL \inst|VState~6_combout\ : std_logic;
SIGNAL \inst|VState~8_combout\ : std_logic;
SIGNAL \inst|VState~9_combout\ : std_logic;
SIGNAL \inst|VState.Display~q\ : std_logic;
SIGNAL \inst|Red~2_combout\ : std_logic;
SIGNAL \inst|Red~feeder_combout\ : std_logic;
SIGNAL \inst|Red~q\ : std_logic;
SIGNAL \inst|Green~feeder_combout\ : std_logic;
SIGNAL \inst|Green~q\ : std_logic;
SIGNAL \inst|Blue~feeder_combout\ : std_logic;
SIGNAL \inst|Blue~q\ : std_logic;
SIGNAL \inst|LessThan1~8_combout\ : std_logic;
SIGNAL \inst|HState~9_combout\ : std_logic;
SIGNAL \inst|HState.H_sync~q\ : std_logic;
SIGNAL \inst|Hsync~feeder_combout\ : std_logic;
SIGNAL \inst|Hsync~q\ : std_logic;
SIGNAL \inst|VState~10_combout\ : std_logic;
SIGNAL \inst|VState.V_sync~q\ : std_logic;
SIGNAL \inst|Vsync~q\ : std_logic;
SIGNAL \inst|vCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|HCount\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

VGA_RED <= ww_VGA_RED;
ww_PIXEL_CLOCK <= PIXEL_CLOCK;
VGA_GREEN <= ww_VGA_GREEN;
VGA_BLUE <= ww_VGA_BLUE;
VGA_HSYNC <= ww_VGA_HSYNC;
VGA_VSYNC <= ww_VGA_VSYNC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PIXEL_CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PIXEL_CLOCK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N9
\VGA_RED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Red~q\,
	devoe => ww_devoe,
	o => \VGA_RED~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\VGA_GREEN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Green~q\,
	devoe => ww_devoe,
	o => \VGA_GREEN~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\VGA_BLUE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Blue~q\,
	devoe => ww_devoe,
	o => \VGA_BLUE~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\VGA_HSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Hsync~q\,
	devoe => ww_devoe,
	o => \VGA_HSYNC~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\VGA_VSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vsync~q\,
	devoe => ww_devoe,
	o => \VGA_VSYNC~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\PIXEL_CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PIXEL_CLOCK,
	o => \PIXEL_CLOCK~input_o\);

-- Location: CLKCTRL_G2
\PIXEL_CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PIXEL_CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PIXEL_CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N0
\inst|HCount[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[0]~32_combout\ = \inst|HCount\(0) $ (VCC)
-- \inst|HCount[0]~33\ = CARRY(\inst|HCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(0),
	datad => VCC,
	combout => \inst|HCount[0]~32_combout\,
	cout => \inst|HCount[0]~33\);

-- Location: LCCOMB_X24_Y9_N14
\inst|HCount[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[7]~46_combout\ = (\inst|HCount\(7) & (!\inst|HCount[6]~45\)) # (!\inst|HCount\(7) & ((\inst|HCount[6]~45\) # (GND)))
-- \inst|HCount[7]~47\ = CARRY((!\inst|HCount[6]~45\) # (!\inst|HCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(7),
	datad => VCC,
	cin => \inst|HCount[6]~45\,
	combout => \inst|HCount[7]~46_combout\,
	cout => \inst|HCount[7]~47\);

-- Location: LCCOMB_X24_Y9_N16
\inst|HCount[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[8]~48_combout\ = (\inst|HCount\(8) & (\inst|HCount[7]~47\ $ (GND))) # (!\inst|HCount\(8) & (!\inst|HCount[7]~47\ & VCC))
-- \inst|HCount[8]~49\ = CARRY((\inst|HCount\(8) & !\inst|HCount[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(8),
	datad => VCC,
	cin => \inst|HCount[7]~47\,
	combout => \inst|HCount[8]~48_combout\,
	cout => \inst|HCount[8]~49\);

-- Location: FF_X24_Y9_N17
\inst|HCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[8]~48_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(8));

-- Location: LCCOMB_X24_Y9_N18
\inst|HCount[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[9]~50_combout\ = (\inst|HCount\(9) & (!\inst|HCount[8]~49\)) # (!\inst|HCount\(9) & ((\inst|HCount[8]~49\) # (GND)))
-- \inst|HCount[9]~51\ = CARRY((!\inst|HCount[8]~49\) # (!\inst|HCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(9),
	datad => VCC,
	cin => \inst|HCount[8]~49\,
	combout => \inst|HCount[9]~50_combout\,
	cout => \inst|HCount[9]~51\);

-- Location: FF_X24_Y9_N19
\inst|HCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[9]~50_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(9));

-- Location: LCCOMB_X25_Y9_N16
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|HCount\(5) & \inst|HCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(5),
	datad => \inst|HCount\(6),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (\inst|HCount\(0) & (\inst|HCount\(3) & (\inst|HCount\(2) & \inst|HCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(0),
	datab => \inst|HCount\(3),
	datac => \inst|HCount\(2),
	datad => \inst|HCount\(1),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X25_Y8_N28
\inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (!\inst|HCount\(4) & !\inst|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|HCount\(4),
	datad => \inst|LessThan3~0_combout\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X25_Y8_N30
\inst|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = (!\inst|HCount\(8) & (((\inst|LessThan2~1_combout\) # (!\inst|HCount\(7))) # (!\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|HCount\(8),
	datac => \inst|HCount\(7),
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y9_N20
\inst|HCount[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[10]~53_combout\ = (\inst|HCount\(10) & (\inst|HCount[9]~51\ $ (GND))) # (!\inst|HCount\(10) & (!\inst|HCount[9]~51\ & VCC))
-- \inst|HCount[10]~54\ = CARRY((\inst|HCount\(10) & !\inst|HCount[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(10),
	datad => VCC,
	cin => \inst|HCount[9]~51\,
	combout => \inst|HCount[10]~53_combout\,
	cout => \inst|HCount[10]~54\);

-- Location: FF_X25_Y9_N25
\inst|HCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	asdata => \inst|HCount[10]~53_combout\,
	sclr => \inst|HCount~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(10));

-- Location: LCCOMB_X24_Y9_N22
\inst|HCount[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[11]~55_combout\ = (\inst|HCount\(11) & (!\inst|HCount[10]~54\)) # (!\inst|HCount\(11) & ((\inst|HCount[10]~54\) # (GND)))
-- \inst|HCount[11]~56\ = CARRY((!\inst|HCount[10]~54\) # (!\inst|HCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(11),
	datad => VCC,
	cin => \inst|HCount[10]~54\,
	combout => \inst|HCount[11]~55_combout\,
	cout => \inst|HCount[11]~56\);

-- Location: FF_X25_Y9_N7
\inst|HCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	asdata => \inst|HCount[11]~55_combout\,
	sclr => \inst|HCount~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(11));

-- Location: LCCOMB_X24_Y9_N24
\inst|HCount[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[12]~57_combout\ = (\inst|HCount\(12) & (\inst|HCount[11]~56\ $ (GND))) # (!\inst|HCount\(12) & (!\inst|HCount[11]~56\ & VCC))
-- \inst|HCount[12]~58\ = CARRY((\inst|HCount\(12) & !\inst|HCount[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(12),
	datad => VCC,
	cin => \inst|HCount[11]~56\,
	combout => \inst|HCount[12]~57_combout\,
	cout => \inst|HCount[12]~58\);

-- Location: FF_X25_Y9_N21
\inst|HCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	asdata => \inst|HCount[12]~57_combout\,
	sclr => \inst|HCount~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(12));

-- Location: LCCOMB_X24_Y9_N26
\inst|HCount[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[13]~59_combout\ = (\inst|HCount\(13) & (!\inst|HCount[12]~58\)) # (!\inst|HCount\(13) & ((\inst|HCount[12]~58\) # (GND)))
-- \inst|HCount[13]~60\ = CARRY((!\inst|HCount[12]~58\) # (!\inst|HCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(13),
	datad => VCC,
	cin => \inst|HCount[12]~58\,
	combout => \inst|HCount[13]~59_combout\,
	cout => \inst|HCount[13]~60\);

-- Location: FF_X25_Y9_N23
\inst|HCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	asdata => \inst|HCount[13]~59_combout\,
	sclr => \inst|HCount~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(13));

-- Location: LCCOMB_X24_Y9_N28
\inst|HCount[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[14]~61_combout\ = (\inst|HCount\(14) & (\inst|HCount[13]~60\ $ (GND))) # (!\inst|HCount\(14) & (!\inst|HCount[13]~60\ & VCC))
-- \inst|HCount[14]~62\ = CARRY((\inst|HCount\(14) & !\inst|HCount[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(14),
	datad => VCC,
	cin => \inst|HCount[13]~60\,
	combout => \inst|HCount[14]~61_combout\,
	cout => \inst|HCount[14]~62\);

-- Location: FF_X24_Y9_N29
\inst|HCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[14]~61_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(14));

-- Location: LCCOMB_X24_Y9_N30
\inst|HCount[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[15]~63_combout\ = (\inst|HCount\(15) & (!\inst|HCount[14]~62\)) # (!\inst|HCount\(15) & ((\inst|HCount[14]~62\) # (GND)))
-- \inst|HCount[15]~64\ = CARRY((!\inst|HCount[14]~62\) # (!\inst|HCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(15),
	datad => VCC,
	cin => \inst|HCount[14]~62\,
	combout => \inst|HCount[15]~63_combout\,
	cout => \inst|HCount[15]~64\);

-- Location: FF_X24_Y9_N31
\inst|HCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[15]~63_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(15));

-- Location: LCCOMB_X24_Y8_N0
\inst|HCount[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[16]~65_combout\ = (\inst|HCount\(16) & (\inst|HCount[15]~64\ $ (GND))) # (!\inst|HCount\(16) & (!\inst|HCount[15]~64\ & VCC))
-- \inst|HCount[16]~66\ = CARRY((\inst|HCount\(16) & !\inst|HCount[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(16),
	datad => VCC,
	cin => \inst|HCount[15]~64\,
	combout => \inst|HCount[16]~65_combout\,
	cout => \inst|HCount[16]~66\);

-- Location: FF_X24_Y8_N1
\inst|HCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[16]~65_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(16));

-- Location: LCCOMB_X24_Y8_N2
\inst|HCount[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[17]~67_combout\ = (\inst|HCount\(17) & (!\inst|HCount[16]~66\)) # (!\inst|HCount\(17) & ((\inst|HCount[16]~66\) # (GND)))
-- \inst|HCount[17]~68\ = CARRY((!\inst|HCount[16]~66\) # (!\inst|HCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(17),
	datad => VCC,
	cin => \inst|HCount[16]~66\,
	combout => \inst|HCount[17]~67_combout\,
	cout => \inst|HCount[17]~68\);

-- Location: FF_X24_Y8_N3
\inst|HCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[17]~67_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(17));

-- Location: LCCOMB_X24_Y8_N4
\inst|HCount[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[18]~69_combout\ = (\inst|HCount\(18) & (\inst|HCount[17]~68\ $ (GND))) # (!\inst|HCount\(18) & (!\inst|HCount[17]~68\ & VCC))
-- \inst|HCount[18]~70\ = CARRY((\inst|HCount\(18) & !\inst|HCount[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(18),
	datad => VCC,
	cin => \inst|HCount[17]~68\,
	combout => \inst|HCount[18]~69_combout\,
	cout => \inst|HCount[18]~70\);

-- Location: FF_X24_Y8_N5
\inst|HCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[18]~69_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(18));

-- Location: LCCOMB_X24_Y8_N6
\inst|HCount[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[19]~71_combout\ = (\inst|HCount\(19) & (!\inst|HCount[18]~70\)) # (!\inst|HCount\(19) & ((\inst|HCount[18]~70\) # (GND)))
-- \inst|HCount[19]~72\ = CARRY((!\inst|HCount[18]~70\) # (!\inst|HCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(19),
	datad => VCC,
	cin => \inst|HCount[18]~70\,
	combout => \inst|HCount[19]~71_combout\,
	cout => \inst|HCount[19]~72\);

-- Location: FF_X24_Y8_N7
\inst|HCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[19]~71_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(19));

-- Location: LCCOMB_X24_Y8_N8
\inst|HCount[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[20]~73_combout\ = (\inst|HCount\(20) & (\inst|HCount[19]~72\ $ (GND))) # (!\inst|HCount\(20) & (!\inst|HCount[19]~72\ & VCC))
-- \inst|HCount[20]~74\ = CARRY((\inst|HCount\(20) & !\inst|HCount[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(20),
	datad => VCC,
	cin => \inst|HCount[19]~72\,
	combout => \inst|HCount[20]~73_combout\,
	cout => \inst|HCount[20]~74\);

-- Location: FF_X24_Y8_N9
\inst|HCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[20]~73_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(20));

-- Location: LCCOMB_X24_Y8_N10
\inst|HCount[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[21]~75_combout\ = (\inst|HCount\(21) & (!\inst|HCount[20]~74\)) # (!\inst|HCount\(21) & ((\inst|HCount[20]~74\) # (GND)))
-- \inst|HCount[21]~76\ = CARRY((!\inst|HCount[20]~74\) # (!\inst|HCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(21),
	datad => VCC,
	cin => \inst|HCount[20]~74\,
	combout => \inst|HCount[21]~75_combout\,
	cout => \inst|HCount[21]~76\);

-- Location: FF_X24_Y8_N11
\inst|HCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[21]~75_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(21));

-- Location: LCCOMB_X24_Y8_N12
\inst|HCount[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[22]~77_combout\ = (\inst|HCount\(22) & (\inst|HCount[21]~76\ $ (GND))) # (!\inst|HCount\(22) & (!\inst|HCount[21]~76\ & VCC))
-- \inst|HCount[22]~78\ = CARRY((\inst|HCount\(22) & !\inst|HCount[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(22),
	datad => VCC,
	cin => \inst|HCount[21]~76\,
	combout => \inst|HCount[22]~77_combout\,
	cout => \inst|HCount[22]~78\);

-- Location: FF_X24_Y8_N13
\inst|HCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[22]~77_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(22));

-- Location: LCCOMB_X24_Y8_N14
\inst|HCount[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[23]~79_combout\ = (\inst|HCount\(23) & (!\inst|HCount[22]~78\)) # (!\inst|HCount\(23) & ((\inst|HCount[22]~78\) # (GND)))
-- \inst|HCount[23]~80\ = CARRY((!\inst|HCount[22]~78\) # (!\inst|HCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(23),
	datad => VCC,
	cin => \inst|HCount[22]~78\,
	combout => \inst|HCount[23]~79_combout\,
	cout => \inst|HCount[23]~80\);

-- Location: FF_X24_Y8_N15
\inst|HCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[23]~79_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(23));

-- Location: LCCOMB_X24_Y8_N16
\inst|HCount[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[24]~81_combout\ = (\inst|HCount\(24) & (\inst|HCount[23]~80\ $ (GND))) # (!\inst|HCount\(24) & (!\inst|HCount[23]~80\ & VCC))
-- \inst|HCount[24]~82\ = CARRY((\inst|HCount\(24) & !\inst|HCount[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(24),
	datad => VCC,
	cin => \inst|HCount[23]~80\,
	combout => \inst|HCount[24]~81_combout\,
	cout => \inst|HCount[24]~82\);

-- Location: FF_X24_Y8_N17
\inst|HCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[24]~81_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(24));

-- Location: LCCOMB_X24_Y8_N18
\inst|HCount[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[25]~83_combout\ = (\inst|HCount\(25) & (!\inst|HCount[24]~82\)) # (!\inst|HCount\(25) & ((\inst|HCount[24]~82\) # (GND)))
-- \inst|HCount[25]~84\ = CARRY((!\inst|HCount[24]~82\) # (!\inst|HCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(25),
	datad => VCC,
	cin => \inst|HCount[24]~82\,
	combout => \inst|HCount[25]~83_combout\,
	cout => \inst|HCount[25]~84\);

-- Location: FF_X24_Y8_N19
\inst|HCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[25]~83_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(25));

-- Location: LCCOMB_X24_Y8_N20
\inst|HCount[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[26]~85_combout\ = (\inst|HCount\(26) & (\inst|HCount[25]~84\ $ (GND))) # (!\inst|HCount\(26) & (!\inst|HCount[25]~84\ & VCC))
-- \inst|HCount[26]~86\ = CARRY((\inst|HCount\(26) & !\inst|HCount[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(26),
	datad => VCC,
	cin => \inst|HCount[25]~84\,
	combout => \inst|HCount[26]~85_combout\,
	cout => \inst|HCount[26]~86\);

-- Location: FF_X24_Y8_N21
\inst|HCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[26]~85_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(26));

-- Location: LCCOMB_X24_Y8_N22
\inst|HCount[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[27]~87_combout\ = (\inst|HCount\(27) & (!\inst|HCount[26]~86\)) # (!\inst|HCount\(27) & ((\inst|HCount[26]~86\) # (GND)))
-- \inst|HCount[27]~88\ = CARRY((!\inst|HCount[26]~86\) # (!\inst|HCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(27),
	datad => VCC,
	cin => \inst|HCount[26]~86\,
	combout => \inst|HCount[27]~87_combout\,
	cout => \inst|HCount[27]~88\);

-- Location: FF_X24_Y8_N23
\inst|HCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[27]~87_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(27));

-- Location: LCCOMB_X24_Y8_N24
\inst|HCount[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[28]~89_combout\ = (\inst|HCount\(28) & (\inst|HCount[27]~88\ $ (GND))) # (!\inst|HCount\(28) & (!\inst|HCount[27]~88\ & VCC))
-- \inst|HCount[28]~90\ = CARRY((\inst|HCount\(28) & !\inst|HCount[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(28),
	datad => VCC,
	cin => \inst|HCount[27]~88\,
	combout => \inst|HCount[28]~89_combout\,
	cout => \inst|HCount[28]~90\);

-- Location: FF_X24_Y8_N25
\inst|HCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[28]~89_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(28));

-- Location: LCCOMB_X24_Y8_N26
\inst|HCount[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[29]~91_combout\ = (\inst|HCount\(29) & (!\inst|HCount[28]~90\)) # (!\inst|HCount\(29) & ((\inst|HCount[28]~90\) # (GND)))
-- \inst|HCount[29]~92\ = CARRY((!\inst|HCount[28]~90\) # (!\inst|HCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(29),
	datad => VCC,
	cin => \inst|HCount[28]~90\,
	combout => \inst|HCount[29]~91_combout\,
	cout => \inst|HCount[29]~92\);

-- Location: FF_X24_Y8_N27
\inst|HCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[29]~91_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(29));

-- Location: LCCOMB_X24_Y8_N28
\inst|HCount[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[30]~93_combout\ = (\inst|HCount\(30) & (\inst|HCount[29]~92\ $ (GND))) # (!\inst|HCount\(30) & (!\inst|HCount[29]~92\ & VCC))
-- \inst|HCount[30]~94\ = CARRY((\inst|HCount\(30) & !\inst|HCount[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(30),
	datad => VCC,
	cin => \inst|HCount[29]~92\,
	combout => \inst|HCount[30]~93_combout\,
	cout => \inst|HCount[30]~94\);

-- Location: FF_X24_Y8_N29
\inst|HCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[30]~93_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(30));

-- Location: LCCOMB_X25_Y8_N8
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|HCount\(29) & (!\inst|HCount\(28) & (!\inst|HCount\(26) & !\inst|HCount\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(29),
	datab => \inst|HCount\(28),
	datac => \inst|HCount\(26),
	datad => \inst|HCount\(27),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (!\inst|HCount\(14) & (!\inst|HCount\(16) & (!\inst|HCount\(15) & !\inst|HCount\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(14),
	datab => \inst|HCount\(16),
	datac => \inst|HCount\(15),
	datad => \inst|HCount\(17),
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y8_N24
\inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (!\inst|HCount\(22) & (!\inst|HCount\(25) & (!\inst|HCount\(24) & !\inst|HCount\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(22),
	datab => \inst|HCount\(25),
	datac => \inst|HCount\(24),
	datad => \inst|HCount\(23),
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X25_Y9_N18
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|HCount\(11) & (!\inst|HCount\(12) & (!\inst|HCount\(13) & !\inst|HCount\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(11),
	datab => \inst|HCount\(12),
	datac => \inst|HCount\(13),
	datad => \inst|HCount\(10),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y8_N28
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (!\inst|HCount\(18) & (!\inst|HCount\(21) & (!\inst|HCount\(20) & !\inst|HCount\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(18),
	datab => \inst|HCount\(21),
	datac => \inst|HCount\(20),
	datad => \inst|HCount\(19),
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y8_N6
\inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = (\inst|LessThan1~2_combout\ & (\inst|LessThan1~4_combout\ & (\inst|LessThan1~1_combout\ & \inst|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datab => \inst|LessThan1~4_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~3_combout\,
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X25_Y8_N12
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (!\inst|HCount\(30) & (\inst|LessThan1~0_combout\ & \inst|LessThan1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(30),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan1~5_combout\,
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X25_Y8_N26
\inst|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_combout\ = (\inst|LessThan2~0_combout\ & ((\inst|LessThan2~2_combout\) # (!\inst|HCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(9),
	datac => \inst|LessThan2~2_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan2~3_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst|HCount[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[31]~95_combout\ = \inst|HCount\(31) $ (\inst|HCount[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(31),
	cin => \inst|HCount[30]~94\,
	combout => \inst|HCount[31]~95_combout\);

-- Location: FF_X24_Y8_N31
\inst|HCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[31]~95_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(31));

-- Location: LCCOMB_X25_Y9_N30
\inst|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = (!\inst|LessThan3~0_combout\) # (!\inst|HCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(4),
	datac => \inst|LessThan3~0_combout\,
	combout => \inst|LessThan3~1_combout\);

-- Location: LCCOMB_X25_Y8_N22
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|HCount\(7) & (!\inst|HCount\(8) & ((\inst|LessThan3~1_combout\) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(7),
	datab => \inst|HCount\(8),
	datac => \inst|LessThan3~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y8_N2
\inst|HState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HState~6_combout\ = (!\inst|HCount\(31) & (((\inst|HCount\(9) & !\inst|LessThan0~1_combout\)) # (!\inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(9),
	datab => \inst|HCount\(31),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|HState~6_combout\);

-- Location: LCCOMB_X25_Y8_N4
\inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (!\inst|HCount\(7) & (!\inst|HCount\(5) & (\inst|LessThan3~1_combout\ & !\inst|HCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(7),
	datab => \inst|HCount\(5),
	datac => \inst|LessThan3~1_combout\,
	datad => \inst|HCount\(6),
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X25_Y8_N14
\inst|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = (\inst|LessThan2~0_combout\ & (((\inst|LessThan3~2_combout\) # (!\inst|HCount\(8))) # (!\inst|HCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(9),
	datab => \inst|HCount\(8),
	datac => \inst|LessThan3~2_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan3~3_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_combout\ = (\inst|LessThan1~5_combout\ & (!\inst|HCount\(30) & (\inst|LessThan1~0_combout\ & !\inst|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~5_combout\,
	datab => \inst|HCount\(30),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|LessThan1~9_combout\);

-- Location: LCCOMB_X25_Y8_N18
\inst|HCount~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount~52_combout\ = (!\inst|LessThan2~3_combout\ & (\inst|HState~6_combout\ & (!\inst|LessThan3~3_combout\ & !\inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~3_combout\,
	datab => \inst|HState~6_combout\,
	datac => \inst|LessThan3~3_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|HCount~52_combout\);

-- Location: FF_X24_Y9_N1
\inst|HCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[0]~32_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(0));

-- Location: LCCOMB_X24_Y9_N2
\inst|HCount[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[1]~34_combout\ = (\inst|HCount\(1) & (!\inst|HCount[0]~33\)) # (!\inst|HCount\(1) & ((\inst|HCount[0]~33\) # (GND)))
-- \inst|HCount[1]~35\ = CARRY((!\inst|HCount[0]~33\) # (!\inst|HCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(1),
	datad => VCC,
	cin => \inst|HCount[0]~33\,
	combout => \inst|HCount[1]~34_combout\,
	cout => \inst|HCount[1]~35\);

-- Location: FF_X24_Y9_N3
\inst|HCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[1]~34_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(1));

-- Location: LCCOMB_X24_Y9_N4
\inst|HCount[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[2]~36_combout\ = (\inst|HCount\(2) & (\inst|HCount[1]~35\ $ (GND))) # (!\inst|HCount\(2) & (!\inst|HCount[1]~35\ & VCC))
-- \inst|HCount[2]~37\ = CARRY((\inst|HCount\(2) & !\inst|HCount[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(2),
	datad => VCC,
	cin => \inst|HCount[1]~35\,
	combout => \inst|HCount[2]~36_combout\,
	cout => \inst|HCount[2]~37\);

-- Location: FF_X24_Y9_N5
\inst|HCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[2]~36_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(2));

-- Location: LCCOMB_X24_Y9_N6
\inst|HCount[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[3]~38_combout\ = (\inst|HCount\(3) & (!\inst|HCount[2]~37\)) # (!\inst|HCount\(3) & ((\inst|HCount[2]~37\) # (GND)))
-- \inst|HCount[3]~39\ = CARRY((!\inst|HCount[2]~37\) # (!\inst|HCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(3),
	datad => VCC,
	cin => \inst|HCount[2]~37\,
	combout => \inst|HCount[3]~38_combout\,
	cout => \inst|HCount[3]~39\);

-- Location: FF_X24_Y9_N7
\inst|HCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[3]~38_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(3));

-- Location: LCCOMB_X24_Y9_N8
\inst|HCount[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[4]~40_combout\ = (\inst|HCount\(4) & (\inst|HCount[3]~39\ $ (GND))) # (!\inst|HCount\(4) & (!\inst|HCount[3]~39\ & VCC))
-- \inst|HCount[4]~41\ = CARRY((\inst|HCount\(4) & !\inst|HCount[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|HCount\(4),
	datad => VCC,
	cin => \inst|HCount[3]~39\,
	combout => \inst|HCount[4]~40_combout\,
	cout => \inst|HCount[4]~41\);

-- Location: FF_X24_Y9_N9
\inst|HCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[4]~40_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(4));

-- Location: LCCOMB_X24_Y9_N10
\inst|HCount[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[5]~42_combout\ = (\inst|HCount\(5) & (!\inst|HCount[4]~41\)) # (!\inst|HCount\(5) & ((\inst|HCount[4]~41\) # (GND)))
-- \inst|HCount[5]~43\ = CARRY((!\inst|HCount[4]~41\) # (!\inst|HCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(5),
	datad => VCC,
	cin => \inst|HCount[4]~41\,
	combout => \inst|HCount[5]~42_combout\,
	cout => \inst|HCount[5]~43\);

-- Location: FF_X24_Y9_N11
\inst|HCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[5]~42_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(5));

-- Location: LCCOMB_X24_Y9_N12
\inst|HCount[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HCount[6]~44_combout\ = (\inst|HCount\(6) & (\inst|HCount[5]~43\ $ (GND))) # (!\inst|HCount\(6) & (!\inst|HCount[5]~43\ & VCC))
-- \inst|HCount[6]~45\ = CARRY((\inst|HCount\(6) & !\inst|HCount[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(6),
	datad => VCC,
	cin => \inst|HCount[5]~43\,
	combout => \inst|HCount[6]~44_combout\,
	cout => \inst|HCount[6]~45\);

-- Location: FF_X24_Y9_N13
\inst|HCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[6]~44_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(6));

-- Location: FF_X24_Y9_N15
\inst|HCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HCount[7]~46_combout\,
	sclr => \inst|HCount~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HCount\(7));

-- Location: LCCOMB_X25_Y9_N28
\inst|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_combout\ = (\inst|HCount\(8)) # ((\inst|HCount\(7) & ((\inst|HCount\(5)) # (\inst|HCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(5),
	datab => \inst|HCount\(7),
	datac => \inst|HCount\(8),
	datad => \inst|HCount\(6),
	combout => \inst|LessThan1~6_combout\);

-- Location: LCCOMB_X25_Y8_N0
\inst|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_combout\ = (\inst|HCount\(9) & ((\inst|LessThan1~6_combout\) # ((\inst|HCount\(7) & !\inst|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HCount\(7),
	datab => \inst|HCount\(9),
	datac => \inst|LessThan1~6_combout\,
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|LessThan1~7_combout\);

-- Location: LCCOMB_X26_Y8_N2
\inst|HState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HState~7_combout\ = (\inst|LessThan2~0_combout\ & (((\inst|LessThan2~2_combout\) # (\inst|LessThan0~1_combout\)) # (!\inst|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~7_combout\,
	datab => \inst|LessThan2~2_combout\,
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|HState~7_combout\);

-- Location: LCCOMB_X25_Y8_N16
\inst|HState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HState~8_combout\ = (\inst|HState~7_combout\ & (((\inst|HState~6_combout\)))) # (!\inst|HState~7_combout\ & ((\inst|HCount\(31) & ((\inst|HState~6_combout\))) # (!\inst|HCount\(31) & (\inst|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HState~7_combout\,
	datab => \inst|HCount\(31),
	datac => \inst|LessThan3~3_combout\,
	datad => \inst|HState~6_combout\,
	combout => \inst|HState~8_combout\);

-- Location: FF_X25_Y8_N17
\inst|HState.Display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HState.Display~q\);

-- Location: LCCOMB_X25_Y11_N0
\inst|vCount[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[0]~32_combout\ = \inst|vCount\(0) $ (VCC)
-- \inst|vCount[0]~33\ = CARRY(\inst|vCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(0),
	datad => VCC,
	combout => \inst|vCount[0]~32_combout\,
	cout => \inst|vCount[0]~33\);

-- Location: LCCOMB_X24_Y11_N26
\inst|LessThan6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~8_combout\ = (\inst|vCount\(5) & (\inst|vCount\(6) & (\inst|vCount\(7) & \inst|vCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(5),
	datab => \inst|vCount\(6),
	datac => \inst|vCount\(7),
	datad => \inst|vCount\(8),
	combout => \inst|LessThan6~8_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~9_combout\ = (!\inst|vCount\(4) & (!\inst|vCount\(2) & ((!\inst|vCount\(0)) # (!\inst|vCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(1),
	datab => \inst|vCount\(4),
	datac => \inst|vCount\(0),
	datad => \inst|vCount\(2),
	combout => \inst|LessThan6~9_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst|VState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VState~7_combout\ = (\inst|LessThan6~8_combout\ & (!\inst|LessThan6~9_combout\ & ((\inst|vCount\(3)) # (\inst|vCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(3),
	datab => \inst|vCount\(4),
	datac => \inst|LessThan6~8_combout\,
	datad => \inst|LessThan6~9_combout\,
	combout => \inst|VState~7_combout\);

-- Location: LCCOMB_X26_Y11_N10
\inst|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (!\inst|vCount\(29) & (!\inst|vCount\(27) & (!\inst|vCount\(28) & !\inst|vCount\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(29),
	datab => \inst|vCount\(27),
	datac => \inst|vCount\(28),
	datad => \inst|vCount\(26),
	combout => \inst|LessThan6~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\inst|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~2_combout\ = (!\inst|vCount\(14) & !\inst|vCount\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vCount\(14),
	datad => \inst|vCount\(15),
	combout => \inst|LessThan6~2_combout\);

-- Location: LCCOMB_X26_Y11_N16
\inst|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_combout\ = (!\inst|vCount\(13) & (!\inst|vCount\(11) & (!\inst|vCount\(12) & !\inst|vCount\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(13),
	datab => \inst|vCount\(11),
	datac => \inst|vCount\(12),
	datad => \inst|vCount\(10),
	combout => \inst|LessThan6~1_combout\);

-- Location: LCCOMB_X26_Y11_N24
\inst|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~3_combout\ = (!\inst|vCount\(16) & (!\inst|vCount\(17) & (\inst|LessThan6~2_combout\ & \inst|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(16),
	datab => \inst|vCount\(17),
	datac => \inst|LessThan6~2_combout\,
	datad => \inst|LessThan6~1_combout\,
	combout => \inst|LessThan6~3_combout\);

-- Location: LCCOMB_X26_Y11_N30
\inst|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~4_combout\ = (!\inst|vCount\(18) & (!\inst|vCount\(19) & (!\inst|vCount\(20) & !\inst|vCount\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(18),
	datab => \inst|vCount\(19),
	datac => \inst|vCount\(20),
	datad => \inst|vCount\(21),
	combout => \inst|LessThan6~4_combout\);

-- Location: LCCOMB_X26_Y11_N28
\inst|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~5_combout\ = (!\inst|vCount\(23) & (!\inst|vCount\(24) & (!\inst|vCount\(25) & !\inst|vCount\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(23),
	datab => \inst|vCount\(24),
	datac => \inst|vCount\(25),
	datad => \inst|vCount\(22),
	combout => \inst|LessThan6~5_combout\);

-- Location: LCCOMB_X26_Y11_N0
\inst|LessThan6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~6_combout\ = (\inst|LessThan6~0_combout\ & (\inst|LessThan6~3_combout\ & (\inst|LessThan6~4_combout\ & \inst|LessThan6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan6~0_combout\,
	datab => \inst|LessThan6~3_combout\,
	datac => \inst|LessThan6~4_combout\,
	datad => \inst|LessThan6~5_combout\,
	combout => \inst|LessThan6~6_combout\);

-- Location: LCCOMB_X26_Y11_N26
\inst|LessThan6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~10_combout\ = (!\inst|vCount\(30) & (!\inst|vCount\(9) & (!\inst|VState~7_combout\ & \inst|LessThan6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(30),
	datab => \inst|vCount\(9),
	datac => \inst|VState~7_combout\,
	datad => \inst|LessThan6~6_combout\,
	combout => \inst|LessThan6~10_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (!\inst|vCount\(5) & (!\inst|vCount\(4) & ((!\inst|vCount\(2)) # (!\inst|vCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(3),
	datab => \inst|vCount\(5),
	datac => \inst|vCount\(4),
	datad => \inst|vCount\(2),
	combout => \inst|LessThan7~0_combout\);

-- Location: LCCOMB_X24_Y11_N0
\inst|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = (!\inst|vCount\(7) & (!\inst|vCount\(8) & (!\inst|vCount\(6) & \inst|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(7),
	datab => \inst|vCount\(8),
	datac => \inst|vCount\(6),
	datad => \inst|LessThan7~0_combout\,
	combout => \inst|LessThan7~1_combout\);

-- Location: LCCOMB_X26_Y11_N22
\inst|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan7~2_combout\ = (!\inst|vCount\(30) & (\inst|LessThan6~6_combout\ & ((\inst|LessThan7~1_combout\) # (!\inst|vCount\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(30),
	datab => \inst|vCount\(9),
	datac => \inst|LessThan7~1_combout\,
	datad => \inst|LessThan6~6_combout\,
	combout => \inst|LessThan7~2_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = ((!\inst|vCount\(0) & (!\inst|vCount\(2) & !\inst|vCount\(1)))) # (!\inst|vCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(3),
	datab => \inst|vCount\(0),
	datac => \inst|vCount\(2),
	datad => \inst|vCount\(1),
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_combout\ = (!\inst|vCount\(4) & \inst|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vCount\(4),
	datad => \inst|LessThan5~0_combout\,
	combout => \inst|LessThan5~1_combout\);

-- Location: LCCOMB_X26_Y11_N12
\inst|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~2_combout\ = (!\inst|vCount\(9) & (\inst|LessThan6~6_combout\ & ((\inst|LessThan5~1_combout\) # (!\inst|LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(9),
	datab => \inst|LessThan6~8_combout\,
	datac => \inst|LessThan5~1_combout\,
	datad => \inst|LessThan6~6_combout\,
	combout => \inst|LessThan5~2_combout\);

-- Location: LCCOMB_X26_Y11_N8
\inst|vCount~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount~86_combout\ = (\inst|LessThan7~2_combout\) # ((!\inst|vCount\(30) & \inst|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~2_combout\,
	datab => \inst|vCount\(30),
	datad => \inst|LessThan5~2_combout\,
	combout => \inst|vCount~86_combout\);

-- Location: LCCOMB_X26_Y11_N20
\inst|vCount~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount~87_combout\ = (!\inst|LessThan6~10_combout\ & (!\inst|vCount~86_combout\ & \inst|VState~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan6~10_combout\,
	datac => \inst|vCount~86_combout\,
	datad => \inst|VState~6_combout\,
	combout => \inst|vCount~87_combout\);

-- Location: FF_X25_Y11_N1
\inst|vCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[0]~32_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(0));

-- Location: LCCOMB_X25_Y11_N2
\inst|vCount[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[1]~34_combout\ = (\inst|vCount\(1) & (!\inst|vCount[0]~33\)) # (!\inst|vCount\(1) & ((\inst|vCount[0]~33\) # (GND)))
-- \inst|vCount[1]~35\ = CARRY((!\inst|vCount[0]~33\) # (!\inst|vCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(1),
	datad => VCC,
	cin => \inst|vCount[0]~33\,
	combout => \inst|vCount[1]~34_combout\,
	cout => \inst|vCount[1]~35\);

-- Location: FF_X25_Y11_N3
\inst|vCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[1]~34_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(1));

-- Location: LCCOMB_X25_Y11_N4
\inst|vCount[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[2]~36_combout\ = (\inst|vCount\(2) & (\inst|vCount[1]~35\ $ (GND))) # (!\inst|vCount\(2) & (!\inst|vCount[1]~35\ & VCC))
-- \inst|vCount[2]~37\ = CARRY((\inst|vCount\(2) & !\inst|vCount[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(2),
	datad => VCC,
	cin => \inst|vCount[1]~35\,
	combout => \inst|vCount[2]~36_combout\,
	cout => \inst|vCount[2]~37\);

-- Location: FF_X25_Y11_N5
\inst|vCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[2]~36_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(2));

-- Location: LCCOMB_X25_Y11_N6
\inst|vCount[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[3]~38_combout\ = (\inst|vCount\(3) & (!\inst|vCount[2]~37\)) # (!\inst|vCount\(3) & ((\inst|vCount[2]~37\) # (GND)))
-- \inst|vCount[3]~39\ = CARRY((!\inst|vCount[2]~37\) # (!\inst|vCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(3),
	datad => VCC,
	cin => \inst|vCount[2]~37\,
	combout => \inst|vCount[3]~38_combout\,
	cout => \inst|vCount[3]~39\);

-- Location: FF_X25_Y11_N7
\inst|vCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[3]~38_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(3));

-- Location: LCCOMB_X25_Y11_N8
\inst|vCount[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[4]~40_combout\ = (\inst|vCount\(4) & (\inst|vCount[3]~39\ $ (GND))) # (!\inst|vCount\(4) & (!\inst|vCount[3]~39\ & VCC))
-- \inst|vCount[4]~41\ = CARRY((\inst|vCount\(4) & !\inst|vCount[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(4),
	datad => VCC,
	cin => \inst|vCount[3]~39\,
	combout => \inst|vCount[4]~40_combout\,
	cout => \inst|vCount[4]~41\);

-- Location: FF_X25_Y11_N9
\inst|vCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[4]~40_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(4));

-- Location: LCCOMB_X25_Y11_N10
\inst|vCount[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[5]~42_combout\ = (\inst|vCount\(5) & (!\inst|vCount[4]~41\)) # (!\inst|vCount\(5) & ((\inst|vCount[4]~41\) # (GND)))
-- \inst|vCount[5]~43\ = CARRY((!\inst|vCount[4]~41\) # (!\inst|vCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(5),
	datad => VCC,
	cin => \inst|vCount[4]~41\,
	combout => \inst|vCount[5]~42_combout\,
	cout => \inst|vCount[5]~43\);

-- Location: FF_X25_Y11_N11
\inst|vCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[5]~42_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(5));

-- Location: LCCOMB_X25_Y11_N12
\inst|vCount[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[6]~44_combout\ = (\inst|vCount\(6) & (\inst|vCount[5]~43\ $ (GND))) # (!\inst|vCount\(6) & (!\inst|vCount[5]~43\ & VCC))
-- \inst|vCount[6]~45\ = CARRY((\inst|vCount\(6) & !\inst|vCount[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(6),
	datad => VCC,
	cin => \inst|vCount[5]~43\,
	combout => \inst|vCount[6]~44_combout\,
	cout => \inst|vCount[6]~45\);

-- Location: FF_X25_Y11_N13
\inst|vCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[6]~44_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(6));

-- Location: LCCOMB_X25_Y11_N14
\inst|vCount[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[7]~46_combout\ = (\inst|vCount\(7) & (!\inst|vCount[6]~45\)) # (!\inst|vCount\(7) & ((\inst|vCount[6]~45\) # (GND)))
-- \inst|vCount[7]~47\ = CARRY((!\inst|vCount[6]~45\) # (!\inst|vCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(7),
	datad => VCC,
	cin => \inst|vCount[6]~45\,
	combout => \inst|vCount[7]~46_combout\,
	cout => \inst|vCount[7]~47\);

-- Location: FF_X25_Y11_N15
\inst|vCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[7]~46_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(7));

-- Location: LCCOMB_X25_Y11_N16
\inst|vCount[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[8]~48_combout\ = (\inst|vCount\(8) & (\inst|vCount[7]~47\ $ (GND))) # (!\inst|vCount\(8) & (!\inst|vCount[7]~47\ & VCC))
-- \inst|vCount[8]~49\ = CARRY((\inst|vCount\(8) & !\inst|vCount[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(8),
	datad => VCC,
	cin => \inst|vCount[7]~47\,
	combout => \inst|vCount[8]~48_combout\,
	cout => \inst|vCount[8]~49\);

-- Location: FF_X25_Y11_N17
\inst|vCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[8]~48_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(8));

-- Location: LCCOMB_X25_Y11_N18
\inst|vCount[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[9]~50_combout\ = (\inst|vCount\(9) & (!\inst|vCount[8]~49\)) # (!\inst|vCount\(9) & ((\inst|vCount[8]~49\) # (GND)))
-- \inst|vCount[9]~51\ = CARRY((!\inst|vCount[8]~49\) # (!\inst|vCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(9),
	datad => VCC,
	cin => \inst|vCount[8]~49\,
	combout => \inst|vCount[9]~50_combout\,
	cout => \inst|vCount[9]~51\);

-- Location: FF_X25_Y11_N19
\inst|vCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[9]~50_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(9));

-- Location: LCCOMB_X25_Y11_N20
\inst|vCount[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[10]~52_combout\ = (\inst|vCount\(10) & (\inst|vCount[9]~51\ $ (GND))) # (!\inst|vCount\(10) & (!\inst|vCount[9]~51\ & VCC))
-- \inst|vCount[10]~53\ = CARRY((\inst|vCount\(10) & !\inst|vCount[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(10),
	datad => VCC,
	cin => \inst|vCount[9]~51\,
	combout => \inst|vCount[10]~52_combout\,
	cout => \inst|vCount[10]~53\);

-- Location: FF_X25_Y11_N21
\inst|vCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[10]~52_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(10));

-- Location: LCCOMB_X25_Y11_N22
\inst|vCount[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[11]~54_combout\ = (\inst|vCount\(11) & (!\inst|vCount[10]~53\)) # (!\inst|vCount\(11) & ((\inst|vCount[10]~53\) # (GND)))
-- \inst|vCount[11]~55\ = CARRY((!\inst|vCount[10]~53\) # (!\inst|vCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(11),
	datad => VCC,
	cin => \inst|vCount[10]~53\,
	combout => \inst|vCount[11]~54_combout\,
	cout => \inst|vCount[11]~55\);

-- Location: FF_X25_Y11_N23
\inst|vCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[11]~54_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(11));

-- Location: LCCOMB_X25_Y11_N24
\inst|vCount[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[12]~56_combout\ = (\inst|vCount\(12) & (\inst|vCount[11]~55\ $ (GND))) # (!\inst|vCount\(12) & (!\inst|vCount[11]~55\ & VCC))
-- \inst|vCount[12]~57\ = CARRY((\inst|vCount\(12) & !\inst|vCount[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(12),
	datad => VCC,
	cin => \inst|vCount[11]~55\,
	combout => \inst|vCount[12]~56_combout\,
	cout => \inst|vCount[12]~57\);

-- Location: FF_X25_Y11_N25
\inst|vCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[12]~56_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(12));

-- Location: LCCOMB_X25_Y11_N26
\inst|vCount[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[13]~58_combout\ = (\inst|vCount\(13) & (!\inst|vCount[12]~57\)) # (!\inst|vCount\(13) & ((\inst|vCount[12]~57\) # (GND)))
-- \inst|vCount[13]~59\ = CARRY((!\inst|vCount[12]~57\) # (!\inst|vCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(13),
	datad => VCC,
	cin => \inst|vCount[12]~57\,
	combout => \inst|vCount[13]~58_combout\,
	cout => \inst|vCount[13]~59\);

-- Location: FF_X25_Y11_N27
\inst|vCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[13]~58_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(13));

-- Location: LCCOMB_X25_Y11_N28
\inst|vCount[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[14]~60_combout\ = (\inst|vCount\(14) & (\inst|vCount[13]~59\ $ (GND))) # (!\inst|vCount\(14) & (!\inst|vCount[13]~59\ & VCC))
-- \inst|vCount[14]~61\ = CARRY((\inst|vCount\(14) & !\inst|vCount[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(14),
	datad => VCC,
	cin => \inst|vCount[13]~59\,
	combout => \inst|vCount[14]~60_combout\,
	cout => \inst|vCount[14]~61\);

-- Location: FF_X25_Y11_N29
\inst|vCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[14]~60_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(14));

-- Location: LCCOMB_X25_Y11_N30
\inst|vCount[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[15]~62_combout\ = (\inst|vCount\(15) & (!\inst|vCount[14]~61\)) # (!\inst|vCount\(15) & ((\inst|vCount[14]~61\) # (GND)))
-- \inst|vCount[15]~63\ = CARRY((!\inst|vCount[14]~61\) # (!\inst|vCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(15),
	datad => VCC,
	cin => \inst|vCount[14]~61\,
	combout => \inst|vCount[15]~62_combout\,
	cout => \inst|vCount[15]~63\);

-- Location: FF_X25_Y11_N31
\inst|vCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[15]~62_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(15));

-- Location: LCCOMB_X25_Y10_N0
\inst|vCount[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[16]~64_combout\ = (\inst|vCount\(16) & (\inst|vCount[15]~63\ $ (GND))) # (!\inst|vCount\(16) & (!\inst|vCount[15]~63\ & VCC))
-- \inst|vCount[16]~65\ = CARRY((\inst|vCount\(16) & !\inst|vCount[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(16),
	datad => VCC,
	cin => \inst|vCount[15]~63\,
	combout => \inst|vCount[16]~64_combout\,
	cout => \inst|vCount[16]~65\);

-- Location: FF_X25_Y10_N1
\inst|vCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[16]~64_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(16));

-- Location: LCCOMB_X25_Y10_N2
\inst|vCount[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[17]~66_combout\ = (\inst|vCount\(17) & (!\inst|vCount[16]~65\)) # (!\inst|vCount\(17) & ((\inst|vCount[16]~65\) # (GND)))
-- \inst|vCount[17]~67\ = CARRY((!\inst|vCount[16]~65\) # (!\inst|vCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(17),
	datad => VCC,
	cin => \inst|vCount[16]~65\,
	combout => \inst|vCount[17]~66_combout\,
	cout => \inst|vCount[17]~67\);

-- Location: FF_X25_Y10_N3
\inst|vCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[17]~66_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(17));

-- Location: LCCOMB_X25_Y10_N4
\inst|vCount[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[18]~68_combout\ = (\inst|vCount\(18) & (\inst|vCount[17]~67\ $ (GND))) # (!\inst|vCount\(18) & (!\inst|vCount[17]~67\ & VCC))
-- \inst|vCount[18]~69\ = CARRY((\inst|vCount\(18) & !\inst|vCount[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(18),
	datad => VCC,
	cin => \inst|vCount[17]~67\,
	combout => \inst|vCount[18]~68_combout\,
	cout => \inst|vCount[18]~69\);

-- Location: FF_X25_Y10_N5
\inst|vCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[18]~68_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(18));

-- Location: LCCOMB_X25_Y10_N6
\inst|vCount[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[19]~70_combout\ = (\inst|vCount\(19) & (!\inst|vCount[18]~69\)) # (!\inst|vCount\(19) & ((\inst|vCount[18]~69\) # (GND)))
-- \inst|vCount[19]~71\ = CARRY((!\inst|vCount[18]~69\) # (!\inst|vCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(19),
	datad => VCC,
	cin => \inst|vCount[18]~69\,
	combout => \inst|vCount[19]~70_combout\,
	cout => \inst|vCount[19]~71\);

-- Location: FF_X25_Y10_N7
\inst|vCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[19]~70_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(19));

-- Location: LCCOMB_X25_Y10_N8
\inst|vCount[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[20]~72_combout\ = (\inst|vCount\(20) & (\inst|vCount[19]~71\ $ (GND))) # (!\inst|vCount\(20) & (!\inst|vCount[19]~71\ & VCC))
-- \inst|vCount[20]~73\ = CARRY((\inst|vCount\(20) & !\inst|vCount[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(20),
	datad => VCC,
	cin => \inst|vCount[19]~71\,
	combout => \inst|vCount[20]~72_combout\,
	cout => \inst|vCount[20]~73\);

-- Location: FF_X25_Y10_N9
\inst|vCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[20]~72_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(20));

-- Location: LCCOMB_X25_Y10_N10
\inst|vCount[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[21]~74_combout\ = (\inst|vCount\(21) & (!\inst|vCount[20]~73\)) # (!\inst|vCount\(21) & ((\inst|vCount[20]~73\) # (GND)))
-- \inst|vCount[21]~75\ = CARRY((!\inst|vCount[20]~73\) # (!\inst|vCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(21),
	datad => VCC,
	cin => \inst|vCount[20]~73\,
	combout => \inst|vCount[21]~74_combout\,
	cout => \inst|vCount[21]~75\);

-- Location: FF_X25_Y10_N11
\inst|vCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[21]~74_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(21));

-- Location: LCCOMB_X25_Y10_N12
\inst|vCount[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[22]~76_combout\ = (\inst|vCount\(22) & (\inst|vCount[21]~75\ $ (GND))) # (!\inst|vCount\(22) & (!\inst|vCount[21]~75\ & VCC))
-- \inst|vCount[22]~77\ = CARRY((\inst|vCount\(22) & !\inst|vCount[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(22),
	datad => VCC,
	cin => \inst|vCount[21]~75\,
	combout => \inst|vCount[22]~76_combout\,
	cout => \inst|vCount[22]~77\);

-- Location: FF_X25_Y10_N13
\inst|vCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[22]~76_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(22));

-- Location: LCCOMB_X25_Y10_N14
\inst|vCount[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[23]~78_combout\ = (\inst|vCount\(23) & (!\inst|vCount[22]~77\)) # (!\inst|vCount\(23) & ((\inst|vCount[22]~77\) # (GND)))
-- \inst|vCount[23]~79\ = CARRY((!\inst|vCount[22]~77\) # (!\inst|vCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(23),
	datad => VCC,
	cin => \inst|vCount[22]~77\,
	combout => \inst|vCount[23]~78_combout\,
	cout => \inst|vCount[23]~79\);

-- Location: FF_X25_Y10_N15
\inst|vCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[23]~78_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(23));

-- Location: LCCOMB_X25_Y10_N16
\inst|vCount[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[24]~80_combout\ = (\inst|vCount\(24) & (\inst|vCount[23]~79\ $ (GND))) # (!\inst|vCount\(24) & (!\inst|vCount[23]~79\ & VCC))
-- \inst|vCount[24]~81\ = CARRY((\inst|vCount\(24) & !\inst|vCount[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(24),
	datad => VCC,
	cin => \inst|vCount[23]~79\,
	combout => \inst|vCount[24]~80_combout\,
	cout => \inst|vCount[24]~81\);

-- Location: FF_X25_Y10_N17
\inst|vCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[24]~80_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(24));

-- Location: LCCOMB_X25_Y10_N18
\inst|vCount[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[25]~82_combout\ = (\inst|vCount\(25) & (!\inst|vCount[24]~81\)) # (!\inst|vCount\(25) & ((\inst|vCount[24]~81\) # (GND)))
-- \inst|vCount[25]~83\ = CARRY((!\inst|vCount[24]~81\) # (!\inst|vCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(25),
	datad => VCC,
	cin => \inst|vCount[24]~81\,
	combout => \inst|vCount[25]~82_combout\,
	cout => \inst|vCount[25]~83\);

-- Location: FF_X25_Y10_N19
\inst|vCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[25]~82_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(25));

-- Location: LCCOMB_X25_Y10_N20
\inst|vCount[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[26]~84_combout\ = (\inst|vCount\(26) & (\inst|vCount[25]~83\ $ (GND))) # (!\inst|vCount\(26) & (!\inst|vCount[25]~83\ & VCC))
-- \inst|vCount[26]~85\ = CARRY((\inst|vCount\(26) & !\inst|vCount[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(26),
	datad => VCC,
	cin => \inst|vCount[25]~83\,
	combout => \inst|vCount[26]~84_combout\,
	cout => \inst|vCount[26]~85\);

-- Location: FF_X25_Y10_N21
\inst|vCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[26]~84_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(26));

-- Location: LCCOMB_X25_Y10_N22
\inst|vCount[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[27]~88_combout\ = (\inst|vCount\(27) & (!\inst|vCount[26]~85\)) # (!\inst|vCount\(27) & ((\inst|vCount[26]~85\) # (GND)))
-- \inst|vCount[27]~89\ = CARRY((!\inst|vCount[26]~85\) # (!\inst|vCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(27),
	datad => VCC,
	cin => \inst|vCount[26]~85\,
	combout => \inst|vCount[27]~88_combout\,
	cout => \inst|vCount[27]~89\);

-- Location: FF_X25_Y10_N23
\inst|vCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[27]~88_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(27));

-- Location: LCCOMB_X25_Y10_N24
\inst|vCount[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[28]~90_combout\ = (\inst|vCount\(28) & (\inst|vCount[27]~89\ $ (GND))) # (!\inst|vCount\(28) & (!\inst|vCount[27]~89\ & VCC))
-- \inst|vCount[28]~91\ = CARRY((\inst|vCount\(28) & !\inst|vCount[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(28),
	datad => VCC,
	cin => \inst|vCount[27]~89\,
	combout => \inst|vCount[28]~90_combout\,
	cout => \inst|vCount[28]~91\);

-- Location: FF_X25_Y10_N25
\inst|vCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[28]~90_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(28));

-- Location: LCCOMB_X25_Y10_N26
\inst|vCount[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[29]~92_combout\ = (\inst|vCount\(29) & (!\inst|vCount[28]~91\)) # (!\inst|vCount\(29) & ((\inst|vCount[28]~91\) # (GND)))
-- \inst|vCount[29]~93\ = CARRY((!\inst|vCount[28]~91\) # (!\inst|vCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(29),
	datad => VCC,
	cin => \inst|vCount[28]~91\,
	combout => \inst|vCount[29]~92_combout\,
	cout => \inst|vCount[29]~93\);

-- Location: FF_X25_Y10_N27
\inst|vCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[29]~92_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(29));

-- Location: LCCOMB_X25_Y10_N28
\inst|vCount[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[30]~94_combout\ = (\inst|vCount\(30) & (\inst|vCount[29]~93\ $ (GND))) # (!\inst|vCount\(30) & (!\inst|vCount[29]~93\ & VCC))
-- \inst|vCount[30]~95\ = CARRY((\inst|vCount\(30) & !\inst|vCount[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(30),
	datad => VCC,
	cin => \inst|vCount[29]~93\,
	combout => \inst|vCount[30]~94_combout\,
	cout => \inst|vCount[30]~95\);

-- Location: FF_X25_Y10_N29
\inst|vCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[30]~94_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(30));

-- Location: LCCOMB_X25_Y10_N30
\inst|vCount[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vCount[31]~96_combout\ = \inst|vCount\(31) $ (\inst|vCount[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(31),
	cin => \inst|vCount[30]~95\,
	combout => \inst|vCount[31]~96_combout\);

-- Location: FF_X25_Y10_N31
\inst|vCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|vCount[31]~96_combout\,
	sclr => \inst|vCount~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vCount\(31));

-- Location: LCCOMB_X24_Y11_N30
\inst|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~1_combout\ = (\inst|vCount\(7) & (\inst|vCount\(6) & \inst|vCount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(7),
	datac => \inst|vCount\(6),
	datad => \inst|vCount\(8),
	combout => \inst|LessThan4~1_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~0_combout\ = (((!\inst|vCount\(1)) # (!\inst|vCount\(2))) # (!\inst|vCount\(0))) # (!\inst|vCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(3),
	datab => \inst|vCount\(0),
	datac => \inst|vCount\(2),
	datad => \inst|vCount\(1),
	combout => \inst|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y11_N16
\inst|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~2_combout\ = ((!\inst|vCount\(5) & ((\inst|LessThan4~0_combout\) # (!\inst|vCount\(4))))) # (!\inst|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(5),
	datab => \inst|vCount\(4),
	datac => \inst|LessThan4~1_combout\,
	datad => \inst|LessThan4~0_combout\,
	combout => \inst|LessThan4~2_combout\);

-- Location: LCCOMB_X26_Y11_N2
\inst|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~7_combout\ = (!\inst|vCount\(30) & (!\inst|vCount\(9) & \inst|LessThan6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(30),
	datab => \inst|vCount\(9),
	datad => \inst|LessThan6~6_combout\,
	combout => \inst|LessThan6~7_combout\);

-- Location: LCCOMB_X26_Y11_N6
\inst|VState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VState~6_combout\ = (!\inst|vCount\(31) & ((!\inst|LessThan6~7_combout\) # (!\inst|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|vCount\(31),
	datac => \inst|LessThan4~2_combout\,
	datad => \inst|LessThan6~7_combout\,
	combout => \inst|VState~6_combout\);

-- Location: LCCOMB_X27_Y11_N16
\inst|VState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VState~8_combout\ = (\inst|vCount\(31)) # ((\inst|LessThan6~7_combout\ & ((\inst|LessThan5~1_combout\) # (!\inst|VState~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vCount\(31),
	datab => \inst|LessThan5~1_combout\,
	datac => \inst|VState~7_combout\,
	datad => \inst|LessThan6~7_combout\,
	combout => \inst|VState~8_combout\);

-- Location: LCCOMB_X26_Y11_N18
\inst|VState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VState~9_combout\ = (\inst|VState~8_combout\ & (\inst|VState~6_combout\)) # (!\inst|VState~8_combout\ & (((\inst|vCount\(31)) # (\inst|LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VState~6_combout\,
	datab => \inst|vCount\(31),
	datac => \inst|LessThan7~2_combout\,
	datad => \inst|VState~8_combout\,
	combout => \inst|VState~9_combout\);

-- Location: FF_X26_Y11_N19
\inst|VState.Display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|VState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VState.Display~q\);

-- Location: LCCOMB_X26_Y8_N10
\inst|Red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Red~2_combout\ = (!\inst|HState.Display~q\ & !\inst|VState.Display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|HState.Display~q\,
	datad => \inst|VState.Display~q\,
	combout => \inst|Red~2_combout\);

-- Location: LCCOMB_X24_Y4_N24
\inst|Red~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Red~feeder_combout\ = \inst|Red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Red~2_combout\,
	combout => \inst|Red~feeder_combout\);

-- Location: FF_X24_Y4_N25
\inst|Red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|Red~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Red~q\);

-- Location: LCCOMB_X24_Y4_N22
\inst|Green~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Green~feeder_combout\ = \inst|Red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Red~2_combout\,
	combout => \inst|Green~feeder_combout\);

-- Location: FF_X24_Y4_N23
\inst|Green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|Green~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Green~q\);

-- Location: LCCOMB_X24_Y4_N28
\inst|Blue~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Blue~feeder_combout\ = \inst|Red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Red~2_combout\,
	combout => \inst|Blue~feeder_combout\);

-- Location: FF_X24_Y4_N29
\inst|Blue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|Blue~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Blue~q\);

-- Location: LCCOMB_X26_Y8_N28
\inst|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~8_combout\ = (\inst|LessThan1~5_combout\ & (!\inst|LessThan1~7_combout\ & \inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan1~5_combout\,
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~8_combout\);

-- Location: LCCOMB_X26_Y8_N16
\inst|HState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HState~9_combout\ = (\inst|HState~6_combout\ & (\inst|LessThan2~3_combout\ & !\inst|LessThan1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|HState~6_combout\,
	datac => \inst|LessThan2~3_combout\,
	datad => \inst|LessThan1~8_combout\,
	combout => \inst|HState~9_combout\);

-- Location: FF_X26_Y8_N17
\inst|HState.H_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|HState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HState.H_sync~q\);

-- Location: LCCOMB_X26_Y8_N8
\inst|Hsync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Hsync~feeder_combout\ = \inst|HState.H_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|HState.H_sync~q\,
	combout => \inst|Hsync~feeder_combout\);

-- Location: FF_X26_Y8_N9
\inst|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|Hsync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Hsync~q\);

-- Location: LCCOMB_X26_Y11_N14
\inst|VState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VState~10_combout\ = (!\inst|LessThan5~2_combout\ & (\inst|LessThan6~10_combout\ & \inst|VState~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~2_combout\,
	datac => \inst|LessThan6~10_combout\,
	datad => \inst|VState~6_combout\,
	combout => \inst|VState~10_combout\);

-- Location: FF_X26_Y11_N15
\inst|VState.V_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	d => \inst|VState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VState.V_sync~q\);

-- Location: FF_X26_Y11_N9
\inst|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PIXEL_CLOCK~inputclkctrl_outclk\,
	asdata => \inst|VState.V_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vsync~q\);

ww_VGA_RED <= \VGA_RED~output_o\;

ww_VGA_GREEN <= \VGA_GREEN~output_o\;

ww_VGA_BLUE <= \VGA_BLUE~output_o\;

ww_VGA_HSYNC <= \VGA_HSYNC~output_o\;

ww_VGA_VSYNC <= \VGA_VSYNC~output_o\;
END structure;


