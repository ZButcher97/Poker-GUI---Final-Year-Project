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

-- DATE "05/22/2020 21:25:33"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	VGA_Controller IS
    PORT (
	CLK : IN std_logic;
	Red_Data : IN std_logic_vector(2 DOWNTO 0);
	Green_Data : IN std_logic_vector(2 DOWNTO 0);
	Blue_Data : IN std_logic_vector(1 DOWNTO 0);
	Red : BUFFER std_logic_vector(2 DOWNTO 0);
	Green : BUFFER std_logic_vector(2 DOWNTO 0);
	Blue : BUFFER std_logic_vector(1 DOWNTO 0);
	Hsync : BUFFER std_logic;
	Vsync : BUFFER std_logic;
	H_Address : BUFFER std_logic_vector(9 DOWNTO 0);
	V_Address : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END VGA_Controller;

-- Design Ports Information
-- Red[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hsync	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vsync	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red_Data[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red_Data[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red_Data[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green_Data[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green_Data[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green_Data[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue_Data[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue_Data[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Red_Data : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Green_Data : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Blue_Data : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Red : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Green : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Blue : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Hsync : std_logic;
SIGNAL ww_Vsync : std_logic;
SIGNAL ww_H_Address : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_V_Address : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Red[0]~output_o\ : std_logic;
SIGNAL \Red[1]~output_o\ : std_logic;
SIGNAL \Red[2]~output_o\ : std_logic;
SIGNAL \Green[0]~output_o\ : std_logic;
SIGNAL \Green[1]~output_o\ : std_logic;
SIGNAL \Green[2]~output_o\ : std_logic;
SIGNAL \Blue[0]~output_o\ : std_logic;
SIGNAL \Blue[1]~output_o\ : std_logic;
SIGNAL \Hsync~output_o\ : std_logic;
SIGNAL \Vsync~output_o\ : std_logic;
SIGNAL \H_Address[0]~output_o\ : std_logic;
SIGNAL \H_Address[1]~output_o\ : std_logic;
SIGNAL \H_Address[2]~output_o\ : std_logic;
SIGNAL \H_Address[3]~output_o\ : std_logic;
SIGNAL \H_Address[4]~output_o\ : std_logic;
SIGNAL \H_Address[5]~output_o\ : std_logic;
SIGNAL \H_Address[6]~output_o\ : std_logic;
SIGNAL \H_Address[7]~output_o\ : std_logic;
SIGNAL \H_Address[8]~output_o\ : std_logic;
SIGNAL \H_Address[9]~output_o\ : std_logic;
SIGNAL \V_Address[0]~output_o\ : std_logic;
SIGNAL \V_Address[1]~output_o\ : std_logic;
SIGNAL \V_Address[2]~output_o\ : std_logic;
SIGNAL \V_Address[3]~output_o\ : std_logic;
SIGNAL \V_Address[4]~output_o\ : std_logic;
SIGNAL \V_Address[5]~output_o\ : std_logic;
SIGNAL \V_Address[6]~output_o\ : std_logic;
SIGNAL \V_Address[7]~output_o\ : std_logic;
SIGNAL \V_Address[8]~output_o\ : std_logic;
SIGNAL \V_Address[9]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Red_Data[0]~input_o\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[31]~q\ : std_logic;
SIGNAL \vCount~3_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[28]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[0]~0_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[0]~q\ : std_logic;
SIGNAL \HCount~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[1]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[1]~q\ : std_logic;
SIGNAL \HCount~2_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[1]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[2]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[2]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[2]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[3]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[3]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[3]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[4]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[4]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[4]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[5]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[5]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[5]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[6]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[6]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[6]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[7]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[7]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[7]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[8]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[8]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[8]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[9]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[9]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[9]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[10]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[10]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[10]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[11]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[11]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[11]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[12]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[12]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[12]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[13]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[13]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[13]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[14]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[14]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[14]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[15]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[15]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[15]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[16]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[16]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[16]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[17]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[17]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[17]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[18]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[18]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[18]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[19]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[19]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[19]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[20]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[20]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[20]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[21]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[21]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[21]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[22]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[22]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[22]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[23]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[23]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[23]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[24]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[24]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[24]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[25]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[25]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[25]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[26]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[26]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[26]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[27]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[27]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[27]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[28]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[28]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[28]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[29]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[29]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[29]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[30]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[30]~q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[30]~2\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[31]~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HCount[31]~q\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \HState~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \HState~6_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \HCount~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \vCount~31_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \vCount~30_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \vCount~29_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \vCount~28_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \vCount~27_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \vCount~26_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \vCount~25_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \vCount~24_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \vCount~23_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \vCount~21_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \vCount~20_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \vCount~19_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \vCount~18_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \vCount~17_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \vCount~16_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \vCount~15_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \vCount~14_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \vCount~13_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \vCount~12_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \vCount~11_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \vCount~10_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \vCount~9_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \vCount~8_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \vCount~7_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \vCount~6_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \vCount~5_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \vCount~4_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[27]~q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~8_combout\ : std_logic;
SIGNAL \LessThan4~10_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan4~7_combout\ : std_logic;
SIGNAL \VState~7_combout\ : std_logic;
SIGNAL \vCount~0_combout\ : std_logic;
SIGNAL \vCount~22_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[9]~q\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \vCount~2_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[29]~q\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \vCount~1_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:vCount[30]~q\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \VState~6_combout\ : std_logic;
SIGNAL \VState~8_combout\ : std_logic;
SIGNAL \VState.Display~q\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \HState~8_combout\ : std_logic;
SIGNAL \HState.Display~q\ : std_logic;
SIGNAL \Red~2_combout\ : std_logic;
SIGNAL \Red[0]~reg0_q\ : std_logic;
SIGNAL \Red_Data[1]~input_o\ : std_logic;
SIGNAL \Red~3_combout\ : std_logic;
SIGNAL \Red[1]~reg0_q\ : std_logic;
SIGNAL \Red_Data[2]~input_o\ : std_logic;
SIGNAL \Red~4_combout\ : std_logic;
SIGNAL \Red[2]~reg0_q\ : std_logic;
SIGNAL \Green_Data[0]~input_o\ : std_logic;
SIGNAL \Green~0_combout\ : std_logic;
SIGNAL \Green[0]~reg0_q\ : std_logic;
SIGNAL \Green_Data[1]~input_o\ : std_logic;
SIGNAL \Green~1_combout\ : std_logic;
SIGNAL \Green[1]~reg0_q\ : std_logic;
SIGNAL \Green_Data[2]~input_o\ : std_logic;
SIGNAL \Green~2_combout\ : std_logic;
SIGNAL \Green[2]~reg0_q\ : std_logic;
SIGNAL \Blue_Data[0]~input_o\ : std_logic;
SIGNAL \Blue~0_combout\ : std_logic;
SIGNAL \Blue[0]~reg0_q\ : std_logic;
SIGNAL \Blue_Data[1]~input_o\ : std_logic;
SIGNAL \Blue~1_combout\ : std_logic;
SIGNAL \Blue[1]~reg0_q\ : std_logic;
SIGNAL \HState~9_combout\ : std_logic;
SIGNAL \HState.H_sync~q\ : std_logic;
SIGNAL \Hsync~reg0_q\ : std_logic;
SIGNAL \VState~9_combout\ : std_logic;
SIGNAL \VState.V_sync~q\ : std_logic;
SIGNAL \Vsync~reg0feeder_combout\ : std_logic;
SIGNAL \Vsync~reg0_q\ : std_logic;
SIGNAL \HState~10_combout\ : std_logic;
SIGNAL \HState.BackPorch~q\ : std_logic;
SIGNAL \HAddress~3_combout\ : std_logic;
SIGNAL \HAddress~4_combout\ : std_logic;
SIGNAL \HAddress~2_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[0]~q\ : std_logic;
SIGNAL \HAddress~5_combout\ : std_logic;
SIGNAL \H_Address[0]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[1]~q\ : std_logic;
SIGNAL \HAddress~6_combout\ : std_logic;
SIGNAL \H_Address[1]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[1]~reg0_q\ : std_logic;
SIGNAL \HAddress~7_combout\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[2]~q\ : std_logic;
SIGNAL \HAddress~8_combout\ : std_logic;
SIGNAL \H_Address[2]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[2]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[3]~q\ : std_logic;
SIGNAL \HAddress~9_combout\ : std_logic;
SIGNAL \H_Address[3]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[3]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[4]~q\ : std_logic;
SIGNAL \HAddress~10_combout\ : std_logic;
SIGNAL \H_Address[4]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[4]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[5]~q\ : std_logic;
SIGNAL \HAddress~11_combout\ : std_logic;
SIGNAL \H_Address[5]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[5]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[6]~q\ : std_logic;
SIGNAL \HAddress~12_combout\ : std_logic;
SIGNAL \H_Address[6]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[6]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[7]~q\ : std_logic;
SIGNAL \HAddress~13_combout\ : std_logic;
SIGNAL \H_Address[7]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[7]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[8]~q\ : std_logic;
SIGNAL \HAddress~14_combout\ : std_logic;
SIGNAL \H_Address[8]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[8]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:HAddress[9]~q\ : std_logic;
SIGNAL \HAddress~15_combout\ : std_logic;
SIGNAL \H_Address[9]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[9]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[0]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \VAddress~0_combout\ : std_logic;
SIGNAL \VAddress~1_combout\ : std_logic;
SIGNAL \V_Address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[0]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[1]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \VAddress~2_combout\ : std_logic;
SIGNAL \V_Address[1]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[1]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[2]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \VAddress~3_combout\ : std_logic;
SIGNAL \V_Address[2]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[2]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[3]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \VAddress~4_combout\ : std_logic;
SIGNAL \V_Address[3]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[3]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[4]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \VAddress~5_combout\ : std_logic;
SIGNAL \V_Address[4]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[4]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[5]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \VAddress~6_combout\ : std_logic;
SIGNAL \V_Address[5]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[5]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[6]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \VAddress~7_combout\ : std_logic;
SIGNAL \V_Address[6]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[6]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[7]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \VAddress~8_combout\ : std_logic;
SIGNAL \V_Address[7]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[7]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[8]~q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \VAddress~9_combout\ : std_logic;
SIGNAL \V_Address[8]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[8]~reg0_q\ : std_logic;
SIGNAL \PIXEL_Horizontal:VAddress[9]~q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \VAddress~10_combout\ : std_logic;
SIGNAL \V_Address[9]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_Red_Data <= Red_Data;
ww_Green_Data <= Green_Data;
ww_Blue_Data <= Blue_Data;
Red <= ww_Red;
Green <= ww_Green;
Blue <= ww_Blue;
Hsync <= ww_Hsync;
Vsync <= ww_Vsync;
H_Address <= ww_H_Address;
V_Address <= ww_V_Address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y11_N9
\Red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Red[0]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Red[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\Red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Red[2]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\Green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Green[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Green[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\Green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Green[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\Blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Blue[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Blue[0]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\Blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Blue[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Blue[1]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hsync~reg0_q\,
	devoe => ww_devoe,
	o => \Hsync~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vsync~reg0_q\,
	devoe => ww_devoe,
	o => \Vsync~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\H_Address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\H_Address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\H_Address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\H_Address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[3]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\H_Address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[4]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[4]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\H_Address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[5]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\H_Address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[6]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\H_Address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[7]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[7]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\H_Address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[8]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[8]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\H_Address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_Address[9]~reg0_q\,
	devoe => ww_devoe,
	o => \H_Address[9]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\V_Address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[0]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\V_Address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\V_Address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\V_Address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\V_Address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[4]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\V_Address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[5]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\V_Address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[6]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[6]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\V_Address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[7]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[7]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\V_Address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[8]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[8]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\V_Address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_Address[9]~reg0_q\,
	devoe => ww_devoe,
	o => \V_Address[9]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X45_Y34_N1
\Red_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Red_Data(0),
	o => \Red_Data[0]~input_o\);

-- Location: FF_X36_Y19_N31
\PIXEL_Horizontal:vCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[31]~q\);

-- Location: LCCOMB_X37_Y19_N10
\vCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~3_combout\ = (\Add0~56_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~56_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~3_combout\);

-- Location: FF_X37_Y19_N11
\PIXEL_Horizontal:vCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[28]~q\);

-- Location: LCCOMB_X37_Y21_N8
\PIXEL_Horizontal:HCount[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[0]~0_combout\ = !\HCount~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCount~1_combout\,
	combout => \PIXEL_Horizontal:HCount[0]~0_combout\);

-- Location: FF_X37_Y21_N9
\PIXEL_Horizontal:HCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[0]~q\);

-- Location: LCCOMB_X37_Y21_N6
\HCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount~1_combout\ = (\PIXEL_Horizontal:HCount[0]~q\ & \HCount~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PIXEL_Horizontal:HCount[0]~q\,
	datad => \HCount~0_combout\,
	combout => \HCount~1_combout\);

-- Location: LCCOMB_X38_Y21_N2
\PIXEL_Horizontal:HCount[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[1]~1_combout\ = (\HCount~2_combout\ & (\HCount~1_combout\ $ (VCC))) # (!\HCount~2_combout\ & (\HCount~1_combout\ & VCC))
-- \PIXEL_Horizontal:HCount[1]~2\ = CARRY((\HCount~2_combout\ & \HCount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~2_combout\,
	datab => \HCount~1_combout\,
	datad => VCC,
	combout => \PIXEL_Horizontal:HCount[1]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[1]~2\);

-- Location: FF_X38_Y21_N3
\PIXEL_Horizontal:HCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[1]~q\);

-- Location: LCCOMB_X37_Y21_N10
\HCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount~2_combout\ = (\PIXEL_Horizontal:HCount[1]~q\ & \HCount~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[1]~q\,
	datad => \HCount~0_combout\,
	combout => \HCount~2_combout\);

-- Location: LCCOMB_X38_Y21_N4
\PIXEL_Horizontal:HCount[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[2]~1_combout\ = (\PIXEL_Horizontal:HCount[1]~2\ & (((!\PIXEL_Horizontal:HCount[2]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[1]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[2]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[2]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[1]~2\) # (!\PIXEL_Horizontal:HCount[2]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[2]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[1]~2\,
	combout => \PIXEL_Horizontal:HCount[2]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[2]~2\);

-- Location: FF_X38_Y21_N5
\PIXEL_Horizontal:HCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[2]~q\);

-- Location: LCCOMB_X38_Y21_N6
\PIXEL_Horizontal:HCount[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[3]~1_combout\ = (\PIXEL_Horizontal:HCount[2]~2\ & (\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[3]~q\ & VCC))) # (!\PIXEL_Horizontal:HCount[2]~2\ & ((((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[3]~q\)))))
-- \PIXEL_Horizontal:HCount[3]~2\ = CARRY((\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[3]~q\ & !\PIXEL_Horizontal:HCount[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[3]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[2]~2\,
	combout => \PIXEL_Horizontal:HCount[3]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[3]~2\);

-- Location: FF_X38_Y21_N7
\PIXEL_Horizontal:HCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[3]~q\);

-- Location: LCCOMB_X38_Y21_N8
\PIXEL_Horizontal:HCount[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[4]~1_combout\ = (\PIXEL_Horizontal:HCount[3]~2\ & (((!\PIXEL_Horizontal:HCount[4]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[3]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[4]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[4]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[3]~2\) # (!\PIXEL_Horizontal:HCount[4]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[4]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[3]~2\,
	combout => \PIXEL_Horizontal:HCount[4]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[4]~2\);

-- Location: FF_X38_Y21_N9
\PIXEL_Horizontal:HCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[4]~q\);

-- Location: LCCOMB_X38_Y21_N10
\PIXEL_Horizontal:HCount[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[5]~1_combout\ = (\PIXEL_Horizontal:HCount[4]~2\ & (\PIXEL_Horizontal:HCount[5]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[4]~2\ & ((((\PIXEL_Horizontal:HCount[5]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[5]~2\ = CARRY((\PIXEL_Horizontal:HCount[5]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[5]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[4]~2\,
	combout => \PIXEL_Horizontal:HCount[5]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[5]~2\);

-- Location: FF_X38_Y21_N11
\PIXEL_Horizontal:HCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[5]~q\);

-- Location: LCCOMB_X38_Y21_N12
\PIXEL_Horizontal:HCount[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[6]~1_combout\ = (\PIXEL_Horizontal:HCount[5]~2\ & (((!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[6]~q\))) # (!\PIXEL_Horizontal:HCount[5]~2\ & (((\PIXEL_Horizontal:HCount[6]~q\ & \HCount~0_combout\)) # (GND)))
-- \PIXEL_Horizontal:HCount[6]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[5]~2\) # (!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[6]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[5]~2\,
	combout => \PIXEL_Horizontal:HCount[6]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[6]~2\);

-- Location: FF_X38_Y21_N13
\PIXEL_Horizontal:HCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[6]~q\);

-- Location: LCCOMB_X38_Y21_N14
\PIXEL_Horizontal:HCount[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[7]~1_combout\ = (\PIXEL_Horizontal:HCount[6]~2\ & (\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[7]~q\ & VCC))) # (!\PIXEL_Horizontal:HCount[6]~2\ & ((((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[7]~q\)))))
-- \PIXEL_Horizontal:HCount[7]~2\ = CARRY((\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[7]~q\ & !\PIXEL_Horizontal:HCount[6]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[7]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[6]~2\,
	combout => \PIXEL_Horizontal:HCount[7]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[7]~2\);

-- Location: FF_X38_Y21_N15
\PIXEL_Horizontal:HCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[7]~q\);

-- Location: LCCOMB_X38_Y21_N16
\PIXEL_Horizontal:HCount[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[8]~1_combout\ = (\PIXEL_Horizontal:HCount[7]~2\ & (((!\PIXEL_Horizontal:HCount[8]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[7]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[8]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[8]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[7]~2\) # (!\PIXEL_Horizontal:HCount[8]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[8]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[7]~2\,
	combout => \PIXEL_Horizontal:HCount[8]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[8]~2\);

-- Location: FF_X38_Y21_N17
\PIXEL_Horizontal:HCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[8]~q\);

-- Location: LCCOMB_X38_Y21_N18
\PIXEL_Horizontal:HCount[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[9]~1_combout\ = (\PIXEL_Horizontal:HCount[8]~2\ & (\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[9]~q\ & VCC))) # (!\PIXEL_Horizontal:HCount[8]~2\ & ((((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[9]~q\)))))
-- \PIXEL_Horizontal:HCount[9]~2\ = CARRY((\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[9]~q\ & !\PIXEL_Horizontal:HCount[8]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[9]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[8]~2\,
	combout => \PIXEL_Horizontal:HCount[9]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[9]~2\);

-- Location: FF_X38_Y21_N19
\PIXEL_Horizontal:HCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[9]~q\);

-- Location: LCCOMB_X38_Y21_N20
\PIXEL_Horizontal:HCount[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[10]~1_combout\ = (\PIXEL_Horizontal:HCount[9]~2\ & (((!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[10]~q\))) # (!\PIXEL_Horizontal:HCount[9]~2\ & (((\PIXEL_Horizontal:HCount[10]~q\ & \HCount~0_combout\)) # (GND)))
-- \PIXEL_Horizontal:HCount[10]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[9]~2\) # (!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[10]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[9]~2\,
	combout => \PIXEL_Horizontal:HCount[10]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[10]~2\);

-- Location: FF_X38_Y21_N21
\PIXEL_Horizontal:HCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[10]~q\);

-- Location: LCCOMB_X38_Y21_N22
\PIXEL_Horizontal:HCount[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[11]~1_combout\ = (\PIXEL_Horizontal:HCount[10]~2\ & (\PIXEL_Horizontal:HCount[11]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[10]~2\ & ((((\PIXEL_Horizontal:HCount[11]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[11]~2\ = CARRY((\PIXEL_Horizontal:HCount[11]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[10]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[11]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[10]~2\,
	combout => \PIXEL_Horizontal:HCount[11]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[11]~2\);

-- Location: FF_X38_Y21_N23
\PIXEL_Horizontal:HCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[11]~q\);

-- Location: LCCOMB_X38_Y21_N24
\PIXEL_Horizontal:HCount[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[12]~1_combout\ = (\PIXEL_Horizontal:HCount[11]~2\ & (((!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[12]~q\))) # (!\PIXEL_Horizontal:HCount[11]~2\ & (((\PIXEL_Horizontal:HCount[12]~q\ & \HCount~0_combout\)) # (GND)))
-- \PIXEL_Horizontal:HCount[12]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[11]~2\) # (!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[12]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[11]~2\,
	combout => \PIXEL_Horizontal:HCount[12]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[12]~2\);

-- Location: FF_X38_Y21_N25
\PIXEL_Horizontal:HCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[12]~q\);

-- Location: LCCOMB_X38_Y21_N26
\PIXEL_Horizontal:HCount[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[13]~1_combout\ = (\PIXEL_Horizontal:HCount[12]~2\ & (\PIXEL_Horizontal:HCount[13]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[12]~2\ & ((((\PIXEL_Horizontal:HCount[13]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[13]~2\ = CARRY((\PIXEL_Horizontal:HCount[13]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[13]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[12]~2\,
	combout => \PIXEL_Horizontal:HCount[13]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[13]~2\);

-- Location: FF_X38_Y21_N27
\PIXEL_Horizontal:HCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[13]~q\);

-- Location: LCCOMB_X38_Y21_N28
\PIXEL_Horizontal:HCount[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[14]~1_combout\ = (\PIXEL_Horizontal:HCount[13]~2\ & (((!\PIXEL_Horizontal:HCount[14]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[13]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[14]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[14]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[13]~2\) # (!\PIXEL_Horizontal:HCount[14]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[14]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[13]~2\,
	combout => \PIXEL_Horizontal:HCount[14]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[14]~2\);

-- Location: FF_X38_Y21_N29
\PIXEL_Horizontal:HCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[14]~q\);

-- Location: LCCOMB_X38_Y21_N30
\PIXEL_Horizontal:HCount[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[15]~1_combout\ = (\PIXEL_Horizontal:HCount[14]~2\ & (\PIXEL_Horizontal:HCount[15]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[14]~2\ & ((((\PIXEL_Horizontal:HCount[15]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[15]~2\ = CARRY((\PIXEL_Horizontal:HCount[15]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[14]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[15]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[14]~2\,
	combout => \PIXEL_Horizontal:HCount[15]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[15]~2\);

-- Location: FF_X38_Y20_N19
\PIXEL_Horizontal:HCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PIXEL_Horizontal:HCount[15]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[15]~q\);

-- Location: LCCOMB_X38_Y20_N0
\PIXEL_Horizontal:HCount[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[16]~1_combout\ = (\PIXEL_Horizontal:HCount[15]~2\ & (((!\PIXEL_Horizontal:HCount[16]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[15]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[16]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[16]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[15]~2\) # (!\PIXEL_Horizontal:HCount[16]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[16]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[15]~2\,
	combout => \PIXEL_Horizontal:HCount[16]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[16]~2\);

-- Location: FF_X38_Y20_N1
\PIXEL_Horizontal:HCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[16]~q\);

-- Location: LCCOMB_X38_Y20_N2
\PIXEL_Horizontal:HCount[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[17]~1_combout\ = (\PIXEL_Horizontal:HCount[16]~2\ & (\PIXEL_Horizontal:HCount[17]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[16]~2\ & ((((\PIXEL_Horizontal:HCount[17]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[17]~2\ = CARRY((\PIXEL_Horizontal:HCount[17]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[16]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[17]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[16]~2\,
	combout => \PIXEL_Horizontal:HCount[17]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[17]~2\);

-- Location: FF_X38_Y20_N3
\PIXEL_Horizontal:HCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[17]~q\);

-- Location: LCCOMB_X38_Y20_N4
\PIXEL_Horizontal:HCount[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[18]~1_combout\ = (\PIXEL_Horizontal:HCount[17]~2\ & (((!\PIXEL_Horizontal:HCount[18]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[17]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[18]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[18]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[17]~2\) # (!\PIXEL_Horizontal:HCount[18]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[18]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[17]~2\,
	combout => \PIXEL_Horizontal:HCount[18]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[18]~2\);

-- Location: FF_X38_Y20_N5
\PIXEL_Horizontal:HCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[18]~q\);

-- Location: LCCOMB_X38_Y20_N6
\PIXEL_Horizontal:HCount[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[19]~1_combout\ = (\PIXEL_Horizontal:HCount[18]~2\ & (\PIXEL_Horizontal:HCount[19]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[18]~2\ & ((((\PIXEL_Horizontal:HCount[19]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[19]~2\ = CARRY((\PIXEL_Horizontal:HCount[19]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[18]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[19]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[18]~2\,
	combout => \PIXEL_Horizontal:HCount[19]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[19]~2\);

-- Location: FF_X38_Y20_N7
\PIXEL_Horizontal:HCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[19]~q\);

-- Location: LCCOMB_X38_Y20_N8
\PIXEL_Horizontal:HCount[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[20]~1_combout\ = (\PIXEL_Horizontal:HCount[19]~2\ & (((!\PIXEL_Horizontal:HCount[20]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[19]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[20]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[20]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[19]~2\) # (!\PIXEL_Horizontal:HCount[20]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[20]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[19]~2\,
	combout => \PIXEL_Horizontal:HCount[20]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[20]~2\);

-- Location: FF_X38_Y20_N9
\PIXEL_Horizontal:HCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[20]~q\);

-- Location: LCCOMB_X38_Y20_N10
\PIXEL_Horizontal:HCount[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[21]~1_combout\ = (\PIXEL_Horizontal:HCount[20]~2\ & (\PIXEL_Horizontal:HCount[21]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[20]~2\ & ((((\PIXEL_Horizontal:HCount[21]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[21]~2\ = CARRY((\PIXEL_Horizontal:HCount[21]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[20]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[21]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[20]~2\,
	combout => \PIXEL_Horizontal:HCount[21]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[21]~2\);

-- Location: FF_X38_Y20_N11
\PIXEL_Horizontal:HCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[21]~q\);

-- Location: LCCOMB_X38_Y20_N12
\PIXEL_Horizontal:HCount[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[22]~1_combout\ = (\PIXEL_Horizontal:HCount[21]~2\ & (((!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[22]~q\))) # (!\PIXEL_Horizontal:HCount[21]~2\ & (((\PIXEL_Horizontal:HCount[22]~q\ & \HCount~0_combout\)) # (GND)))
-- \PIXEL_Horizontal:HCount[22]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[21]~2\) # (!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[22]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[21]~2\,
	combout => \PIXEL_Horizontal:HCount[22]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[22]~2\);

-- Location: FF_X38_Y20_N13
\PIXEL_Horizontal:HCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[22]~q\);

-- Location: LCCOMB_X38_Y20_N14
\PIXEL_Horizontal:HCount[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[23]~1_combout\ = (\PIXEL_Horizontal:HCount[22]~2\ & (\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[23]~q\ & VCC))) # (!\PIXEL_Horizontal:HCount[22]~2\ & ((((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[23]~q\)))))
-- \PIXEL_Horizontal:HCount[23]~2\ = CARRY((\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[23]~q\ & !\PIXEL_Horizontal:HCount[22]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[23]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[22]~2\,
	combout => \PIXEL_Horizontal:HCount[23]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[23]~2\);

-- Location: FF_X38_Y20_N15
\PIXEL_Horizontal:HCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[23]~q\);

-- Location: LCCOMB_X38_Y20_N16
\PIXEL_Horizontal:HCount[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[24]~1_combout\ = (\PIXEL_Horizontal:HCount[23]~2\ & (((!\PIXEL_Horizontal:HCount[24]~q\)) # (!\HCount~0_combout\))) # (!\PIXEL_Horizontal:HCount[23]~2\ & (((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[24]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[24]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[23]~2\) # (!\PIXEL_Horizontal:HCount[24]~q\)) # (!\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[24]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[23]~2\,
	combout => \PIXEL_Horizontal:HCount[24]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[24]~2\);

-- Location: FF_X38_Y20_N17
\PIXEL_Horizontal:HCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[24]~q\);

-- Location: LCCOMB_X38_Y20_N18
\PIXEL_Horizontal:HCount[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[25]~1_combout\ = (\PIXEL_Horizontal:HCount[24]~2\ & (\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[25]~q\ & VCC))) # (!\PIXEL_Horizontal:HCount[24]~2\ & ((((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[25]~q\)))))
-- \PIXEL_Horizontal:HCount[25]~2\ = CARRY((\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[25]~q\ & !\PIXEL_Horizontal:HCount[24]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[25]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[24]~2\,
	combout => \PIXEL_Horizontal:HCount[25]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[25]~2\);

-- Location: FF_X37_Y20_N17
\PIXEL_Horizontal:HCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PIXEL_Horizontal:HCount[25]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[25]~q\);

-- Location: LCCOMB_X38_Y20_N20
\PIXEL_Horizontal:HCount[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[26]~1_combout\ = (\PIXEL_Horizontal:HCount[25]~2\ & (((!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[26]~q\))) # (!\PIXEL_Horizontal:HCount[25]~2\ & (((\PIXEL_Horizontal:HCount[26]~q\ & \HCount~0_combout\)) # (GND)))
-- \PIXEL_Horizontal:HCount[26]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[25]~2\) # (!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[26]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[25]~2\,
	combout => \PIXEL_Horizontal:HCount[26]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[26]~2\);

-- Location: FF_X38_Y20_N21
\PIXEL_Horizontal:HCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[26]~q\);

-- Location: LCCOMB_X38_Y20_N22
\PIXEL_Horizontal:HCount[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[27]~1_combout\ = (\PIXEL_Horizontal:HCount[26]~2\ & (\PIXEL_Horizontal:HCount[27]~q\ & (\HCount~0_combout\ & VCC))) # (!\PIXEL_Horizontal:HCount[26]~2\ & ((((\PIXEL_Horizontal:HCount[27]~q\ & \HCount~0_combout\)))))
-- \PIXEL_Horizontal:HCount[27]~2\ = CARRY((\PIXEL_Horizontal:HCount[27]~q\ & (\HCount~0_combout\ & !\PIXEL_Horizontal:HCount[26]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[27]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[26]~2\,
	combout => \PIXEL_Horizontal:HCount[27]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[27]~2\);

-- Location: FF_X38_Y20_N23
\PIXEL_Horizontal:HCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[27]~q\);

-- Location: LCCOMB_X38_Y20_N24
\PIXEL_Horizontal:HCount[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[28]~1_combout\ = (\PIXEL_Horizontal:HCount[27]~2\ & (((!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[28]~q\))) # (!\PIXEL_Horizontal:HCount[27]~2\ & (((\PIXEL_Horizontal:HCount[28]~q\ & \HCount~0_combout\)) # (GND)))
-- \PIXEL_Horizontal:HCount[28]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[27]~2\) # (!\HCount~0_combout\)) # (!\PIXEL_Horizontal:HCount[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[28]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[27]~2\,
	combout => \PIXEL_Horizontal:HCount[28]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[28]~2\);

-- Location: FF_X38_Y20_N25
\PIXEL_Horizontal:HCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[28]~q\);

-- Location: LCCOMB_X38_Y20_N26
\PIXEL_Horizontal:HCount[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[29]~1_combout\ = (\PIXEL_Horizontal:HCount[28]~2\ & (\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[29]~q\ & VCC))) # (!\PIXEL_Horizontal:HCount[28]~2\ & ((((\HCount~0_combout\ & \PIXEL_Horizontal:HCount[29]~q\)))))
-- \PIXEL_Horizontal:HCount[29]~2\ = CARRY((\HCount~0_combout\ & (\PIXEL_Horizontal:HCount[29]~q\ & !\PIXEL_Horizontal:HCount[28]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \PIXEL_Horizontal:HCount[29]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[28]~2\,
	combout => \PIXEL_Horizontal:HCount[29]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[29]~2\);

-- Location: FF_X38_Y20_N27
\PIXEL_Horizontal:HCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[29]~q\);

-- Location: LCCOMB_X38_Y20_N28
\PIXEL_Horizontal:HCount[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[30]~1_combout\ = (\PIXEL_Horizontal:HCount[29]~2\ & (((!\PIXEL_Horizontal:HCount[30]~q\)) # (!\PIXEL_Horizontal:HCount[31]~q\))) # (!\PIXEL_Horizontal:HCount[29]~2\ & (((\PIXEL_Horizontal:HCount[31]~q\ & 
-- \PIXEL_Horizontal:HCount[30]~q\)) # (GND)))
-- \PIXEL_Horizontal:HCount[30]~2\ = CARRY(((!\PIXEL_Horizontal:HCount[29]~2\) # (!\PIXEL_Horizontal:HCount[30]~q\)) # (!\PIXEL_Horizontal:HCount[31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[31]~q\,
	datab => \PIXEL_Horizontal:HCount[30]~q\,
	datad => VCC,
	cin => \PIXEL_Horizontal:HCount[29]~2\,
	combout => \PIXEL_Horizontal:HCount[30]~1_combout\,
	cout => \PIXEL_Horizontal:HCount[30]~2\);

-- Location: FF_X38_Y20_N29
\PIXEL_Horizontal:HCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[30]~q\);

-- Location: LCCOMB_X38_Y20_N30
\PIXEL_Horizontal:HCount[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PIXEL_Horizontal:HCount[31]~1_combout\ = \PIXEL_Horizontal:HCount[31]~q\ $ (!\PIXEL_Horizontal:HCount[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[31]~q\,
	cin => \PIXEL_Horizontal:HCount[30]~2\,
	combout => \PIXEL_Horizontal:HCount[31]~1_combout\);

-- Location: FF_X38_Y20_N31
\PIXEL_Horizontal:HCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PIXEL_Horizontal:HCount[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HCount[31]~q\);

-- Location: LCCOMB_X37_Y20_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\PIXEL_Horizontal:HCount[9]~q\ & ((\PIXEL_Horizontal:HCount[7]~q\) # (\PIXEL_Horizontal:HCount[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[7]~q\,
	datab => \PIXEL_Horizontal:HCount[8]~q\,
	datad => \PIXEL_Horizontal:HCount[9]~q\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X39_Y20_N20
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\PIXEL_Horizontal:HCount[30]~q\ & (!\PIXEL_Horizontal:HCount[29]~q\ & !\PIXEL_Horizontal:HCount[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:HCount[30]~q\,
	datac => \PIXEL_Horizontal:HCount[29]~q\,
	datad => \PIXEL_Horizontal:HCount[28]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X37_Y20_N30
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\PIXEL_Horizontal:HCount[19]~q\ & (!\PIXEL_Horizontal:HCount[21]~q\ & (!\PIXEL_Horizontal:HCount[20]~q\ & !\PIXEL_Horizontal:HCount[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[19]~q\,
	datab => \PIXEL_Horizontal:HCount[21]~q\,
	datac => \PIXEL_Horizontal:HCount[20]~q\,
	datad => \PIXEL_Horizontal:HCount[18]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y20_N16
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\PIXEL_Horizontal:HCount[22]~q\ & (!\PIXEL_Horizontal:HCount[23]~q\ & (!\PIXEL_Horizontal:HCount[25]~q\ & !\PIXEL_Horizontal:HCount[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[22]~q\,
	datab => \PIXEL_Horizontal:HCount[23]~q\,
	datac => \PIXEL_Horizontal:HCount[25]~q\,
	datad => \PIXEL_Horizontal:HCount[24]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y20_N8
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\PIXEL_Horizontal:HCount[17]~q\ & (!\PIXEL_Horizontal:HCount[16]~q\ & (!\PIXEL_Horizontal:HCount[14]~q\ & !\PIXEL_Horizontal:HCount[15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[17]~q\,
	datab => \PIXEL_Horizontal:HCount[16]~q\,
	datac => \PIXEL_Horizontal:HCount[14]~q\,
	datad => \PIXEL_Horizontal:HCount[15]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y21_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\PIXEL_Horizontal:HCount[11]~q\ & (!\PIXEL_Horizontal:HCount[10]~q\ & (!\PIXEL_Horizontal:HCount[13]~q\ & !\PIXEL_Horizontal:HCount[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[11]~q\,
	datab => \PIXEL_Horizontal:HCount[10]~q\,
	datac => \PIXEL_Horizontal:HCount[13]~q\,
	datad => \PIXEL_Horizontal:HCount[12]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y20_N20
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\ & (\LessThan0~3_combout\ & (\LessThan0~1_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y20_N18
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\PIXEL_Horizontal:HCount[27]~q\ & (!\PIXEL_Horizontal:HCount[26]~q\ & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:HCount[27]~q\,
	datac => \PIXEL_Horizontal:HCount[26]~q\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y20_N6
\HState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~7_combout\ = (!\PIXEL_Horizontal:HCount[31]~q\ & ((\LessThan0~6_combout\) # ((!\LessThan0~5_combout\) # (!\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[31]~q\,
	datab => \LessThan0~6_combout\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan0~5_combout\,
	combout => \HState~7_combout\);

-- Location: LCCOMB_X37_Y21_N30
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!\PIXEL_Horizontal:HCount[5]~q\) # (!\PIXEL_Horizontal:HCount[6]~q\)) # (!\PIXEL_Horizontal:HCount[4]~q\)) # (!\PIXEL_Horizontal:HCount[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[7]~q\,
	datab => \PIXEL_Horizontal:HCount[4]~q\,
	datac => \PIXEL_Horizontal:HCount[6]~q\,
	datad => \PIXEL_Horizontal:HCount[5]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y20_N14
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!\PIXEL_Horizontal:HCount[26]~q\ & (!\PIXEL_Horizontal:HCount[27]~q\ & (\LessThan0~2_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[26]~q\,
	datab => \PIXEL_Horizontal:HCount[27]~q\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X37_Y20_N12
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\LessThan3~0_combout\ & (\LessThan0~1_combout\ & (\LessThan3~1_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X37_Y20_N22
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan3~2_combout\ & (((\LessThan2~0_combout\ & !\PIXEL_Horizontal:HCount[8]~q\)) # (!\PIXEL_Horizontal:HCount[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \PIXEL_Horizontal:HCount[9]~q\,
	datac => \PIXEL_Horizontal:HCount[8]~q\,
	datad => \LessThan3~2_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X37_Y21_N20
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ((!\PIXEL_Horizontal:HCount[7]~q\ & (!\PIXEL_Horizontal:HCount[5]~q\ & !\PIXEL_Horizontal:HCount[6]~q\))) # (!\PIXEL_Horizontal:HCount[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[7]~q\,
	datab => \PIXEL_Horizontal:HCount[5]~q\,
	datac => \PIXEL_Horizontal:HCount[6]~q\,
	datad => \PIXEL_Horizontal:HCount[8]~q\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X37_Y20_N4
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~2_combout\ & ((\LessThan3~3_combout\) # (!\PIXEL_Horizontal:HCount[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:HCount[9]~q\,
	datac => \LessThan3~3_combout\,
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X37_Y20_N28
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\PIXEL_Horizontal:HCount[5]~q\ & (!\PIXEL_Horizontal:HCount[6]~q\ & (!\PIXEL_Horizontal:HCount[8]~q\ & !\PIXEL_Horizontal:HCount[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[5]~q\,
	datab => \PIXEL_Horizontal:HCount[6]~q\,
	datac => \PIXEL_Horizontal:HCount[8]~q\,
	datad => \PIXEL_Horizontal:HCount[4]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y20_N10
\HState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~6_combout\ = (!\PIXEL_Horizontal:HCount[28]~q\ & (!\PIXEL_Horizontal:HCount[29]~q\ & ((\LessThan1~0_combout\) # (!\LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[28]~q\,
	datab => \LessThan0~6_combout\,
	datac => \PIXEL_Horizontal:HCount[29]~q\,
	datad => \LessThan1~0_combout\,
	combout => \HState~6_combout\);

-- Location: LCCOMB_X37_Y20_N0
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan0~5_combout\ & (!\PIXEL_Horizontal:HCount[30]~q\ & \HState~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~5_combout\,
	datac => \PIXEL_Horizontal:HCount[30]~q\,
	datad => \HState~6_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y20_N24
\HCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount~0_combout\ = ((\LessThan2~1_combout\) # ((\LessThan3~4_combout\) # (\LessThan1~1_combout\))) # (!\HState~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState~7_combout\,
	datab => \LessThan2~1_combout\,
	datac => \LessThan3~4_combout\,
	datad => \LessThan1~1_combout\,
	combout => \HCount~0_combout\);

-- Location: LCCOMB_X36_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\PIXEL_Horizontal:vCount[0]~q\ & (\HCount~0_combout\ $ (GND))) # (!\PIXEL_Horizontal:vCount[0]~q\ & (!\HCount~0_combout\ & VCC))
-- \Add0~1\ = CARRY((\PIXEL_Horizontal:vCount[0]~q\ & !\HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[0]~q\,
	datab => \HCount~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X35_Y20_N30
\vCount~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~31_combout\ = (\Add0~0_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~0_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~31_combout\);

-- Location: FF_X35_Y20_N31
\PIXEL_Horizontal:vCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[0]~q\);

-- Location: LCCOMB_X36_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\PIXEL_Horizontal:vCount[1]~q\ & (!\Add0~1\)) # (!\PIXEL_Horizontal:vCount[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\PIXEL_Horizontal:vCount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X34_Y19_N2
\vCount~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~30_combout\ = (\Add0~2_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \LessThan5~2_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~30_combout\);

-- Location: FF_X34_Y19_N3
\PIXEL_Horizontal:vCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[1]~q\);

-- Location: LCCOMB_X36_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\PIXEL_Horizontal:vCount[2]~q\ & (\Add0~3\ $ (GND))) # (!\PIXEL_Horizontal:vCount[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\PIXEL_Horizontal:vCount[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X35_Y20_N0
\vCount~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~29_combout\ = (\Add0~4_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \LessThan5~2_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~29_combout\);

-- Location: FF_X35_Y20_N1
\PIXEL_Horizontal:vCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[2]~q\);

-- Location: LCCOMB_X36_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\PIXEL_Horizontal:vCount[3]~q\ & (!\Add0~5\)) # (!\PIXEL_Horizontal:vCount[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\PIXEL_Horizontal:vCount[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X35_Y20_N10
\vCount~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~28_combout\ = (\Add0~6_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \LessThan5~2_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~28_combout\);

-- Location: FF_X35_Y20_N11
\PIXEL_Horizontal:vCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[3]~q\);

-- Location: LCCOMB_X36_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\PIXEL_Horizontal:vCount[4]~q\ & (\Add0~7\ $ (GND))) # (!\PIXEL_Horizontal:vCount[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\PIXEL_Horizontal:vCount[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X35_Y20_N8
\vCount~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~27_combout\ = (\Add0~8_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~8_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~27_combout\);

-- Location: FF_X35_Y20_N9
\PIXEL_Horizontal:vCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[4]~q\);

-- Location: LCCOMB_X36_Y20_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\PIXEL_Horizontal:vCount[5]~q\ & (!\Add0~9\)) # (!\PIXEL_Horizontal:vCount[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\PIXEL_Horizontal:vCount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X34_Y19_N0
\vCount~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~26_combout\ = (\Add0~10_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~26_combout\);

-- Location: FF_X34_Y19_N1
\PIXEL_Horizontal:vCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[5]~q\);

-- Location: LCCOMB_X36_Y20_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\PIXEL_Horizontal:vCount[6]~q\ & (\Add0~11\ $ (GND))) # (!\PIXEL_Horizontal:vCount[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\PIXEL_Horizontal:vCount[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X35_Y20_N14
\vCount~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~25_combout\ = (\Add0~12_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~12_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~25_combout\);

-- Location: FF_X35_Y20_N15
\PIXEL_Horizontal:vCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[6]~q\);

-- Location: LCCOMB_X36_Y20_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\PIXEL_Horizontal:vCount[7]~q\ & (!\Add0~13\)) # (!\PIXEL_Horizontal:vCount[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\PIXEL_Horizontal:vCount[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X34_Y19_N26
\vCount~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~24_combout\ = (\Add0~14_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~24_combout\);

-- Location: FF_X34_Y19_N27
\PIXEL_Horizontal:vCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[7]~q\);

-- Location: LCCOMB_X36_Y20_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\PIXEL_Horizontal:vCount[8]~q\ & (\Add0~15\ $ (GND))) # (!\PIXEL_Horizontal:vCount[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\PIXEL_Horizontal:vCount[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X34_Y19_N16
\vCount~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~23_combout\ = (\Add0~16_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~23_combout\);

-- Location: FF_X34_Y19_N17
\PIXEL_Horizontal:vCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[8]~q\);

-- Location: LCCOMB_X36_Y20_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\PIXEL_Horizontal:vCount[9]~q\ & (!\Add0~17\)) # (!\PIXEL_Horizontal:vCount[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\PIXEL_Horizontal:vCount[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X36_Y20_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\PIXEL_Horizontal:vCount[10]~q\ & (\Add0~19\ $ (GND))) # (!\PIXEL_Horizontal:vCount[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\PIXEL_Horizontal:vCount[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X34_Y19_N12
\vCount~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~21_combout\ = (\Add0~20_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~21_combout\);

-- Location: FF_X34_Y19_N13
\PIXEL_Horizontal:vCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[10]~q\);

-- Location: LCCOMB_X36_Y20_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\PIXEL_Horizontal:vCount[11]~q\ & (!\Add0~21\)) # (!\PIXEL_Horizontal:vCount[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\PIXEL_Horizontal:vCount[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X37_Y19_N14
\vCount~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~20_combout\ = (\Add0~22_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~22_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~20_combout\);

-- Location: FF_X37_Y19_N15
\PIXEL_Horizontal:vCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[11]~q\);

-- Location: LCCOMB_X36_Y20_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\PIXEL_Horizontal:vCount[12]~q\ & (\Add0~23\ $ (GND))) # (!\PIXEL_Horizontal:vCount[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\PIXEL_Horizontal:vCount[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X34_Y19_N14
\vCount~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~19_combout\ = (\Add0~24_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~19_combout\);

-- Location: FF_X34_Y19_N15
\PIXEL_Horizontal:vCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[12]~q\);

-- Location: LCCOMB_X36_Y20_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\PIXEL_Horizontal:vCount[13]~q\ & (!\Add0~25\)) # (!\PIXEL_Horizontal:vCount[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\PIXEL_Horizontal:vCount[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X34_Y19_N4
\vCount~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~18_combout\ = (\Add0~26_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~18_combout\);

-- Location: FF_X34_Y19_N5
\PIXEL_Horizontal:vCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[13]~q\);

-- Location: LCCOMB_X36_Y20_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\PIXEL_Horizontal:vCount[14]~q\ & (\Add0~27\ $ (GND))) # (!\PIXEL_Horizontal:vCount[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\PIXEL_Horizontal:vCount[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X34_Y19_N6
\vCount~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~17_combout\ = (\Add0~28_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~17_combout\);

-- Location: FF_X34_Y19_N7
\PIXEL_Horizontal:vCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[14]~q\);

-- Location: LCCOMB_X36_Y20_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\PIXEL_Horizontal:vCount[15]~q\ & (!\Add0~29\)) # (!\PIXEL_Horizontal:vCount[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\PIXEL_Horizontal:vCount[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X37_Y19_N0
\vCount~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~16_combout\ = (\Add0~30_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \LessThan5~2_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~16_combout\);

-- Location: FF_X37_Y19_N1
\PIXEL_Horizontal:vCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[15]~q\);

-- Location: LCCOMB_X36_Y19_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\PIXEL_Horizontal:vCount[16]~q\ & (\Add0~31\ $ (GND))) # (!\PIXEL_Horizontal:vCount[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\PIXEL_Horizontal:vCount[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X34_Y19_N24
\vCount~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~15_combout\ = (\Add0~32_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~15_combout\);

-- Location: FF_X34_Y19_N25
\PIXEL_Horizontal:vCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[16]~q\);

-- Location: LCCOMB_X36_Y19_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\PIXEL_Horizontal:vCount[17]~q\ & (!\Add0~33\)) # (!\PIXEL_Horizontal:vCount[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\PIXEL_Horizontal:vCount[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X34_Y19_N10
\vCount~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~14_combout\ = (\Add0~34_combout\ & (((\LessThan5~2_combout\) # (!\VState~6_combout\)) # (!\vCount~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vCount~0_combout\,
	datab => \Add0~34_combout\,
	datac => \LessThan5~2_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~14_combout\);

-- Location: FF_X34_Y19_N11
\PIXEL_Horizontal:vCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[17]~q\);

-- Location: LCCOMB_X36_Y19_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\PIXEL_Horizontal:vCount[18]~q\ & (\Add0~35\ $ (GND))) # (!\PIXEL_Horizontal:vCount[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\PIXEL_Horizontal:vCount[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X37_Y19_N2
\vCount~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~13_combout\ = (\Add0~36_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~36_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~13_combout\);

-- Location: FF_X37_Y19_N3
\PIXEL_Horizontal:vCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[18]~q\);

-- Location: LCCOMB_X36_Y19_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\PIXEL_Horizontal:vCount[19]~q\ & (!\Add0~37\)) # (!\PIXEL_Horizontal:vCount[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\PIXEL_Horizontal:vCount[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X34_Y19_N20
\vCount~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~12_combout\ = (\Add0~38_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~12_combout\);

-- Location: FF_X34_Y19_N21
\PIXEL_Horizontal:vCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[19]~q\);

-- Location: LCCOMB_X36_Y19_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\PIXEL_Horizontal:vCount[20]~q\ & (\Add0~39\ $ (GND))) # (!\PIXEL_Horizontal:vCount[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\PIXEL_Horizontal:vCount[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X37_Y19_N4
\vCount~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~11_combout\ = (\Add0~40_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~40_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~11_combout\);

-- Location: FF_X37_Y19_N5
\PIXEL_Horizontal:vCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[20]~q\);

-- Location: LCCOMB_X36_Y19_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\PIXEL_Horizontal:vCount[21]~q\ & (!\Add0~41\)) # (!\PIXEL_Horizontal:vCount[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\PIXEL_Horizontal:vCount[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X34_Y19_N22
\vCount~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~10_combout\ = (\Add0~42_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~10_combout\);

-- Location: FF_X34_Y19_N23
\PIXEL_Horizontal:vCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[21]~q\);

-- Location: LCCOMB_X36_Y19_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\PIXEL_Horizontal:vCount[22]~q\ & (\Add0~43\ $ (GND))) # (!\PIXEL_Horizontal:vCount[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\PIXEL_Horizontal:vCount[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X37_Y19_N22
\vCount~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~9_combout\ = (\Add0~44_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \LessThan5~2_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~9_combout\);

-- Location: FF_X37_Y19_N23
\PIXEL_Horizontal:vCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[22]~q\);

-- Location: LCCOMB_X36_Y19_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\PIXEL_Horizontal:vCount[23]~q\ & (!\Add0~45\)) # (!\PIXEL_Horizontal:vCount[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\PIXEL_Horizontal:vCount[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X34_Y19_N28
\vCount~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~8_combout\ = (\Add0~46_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \LessThan5~2_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~8_combout\);

-- Location: FF_X34_Y19_N29
\PIXEL_Horizontal:vCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[23]~q\);

-- Location: LCCOMB_X36_Y19_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\PIXEL_Horizontal:vCount[24]~q\ & (\Add0~47\ $ (GND))) # (!\PIXEL_Horizontal:vCount[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\PIXEL_Horizontal:vCount[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X34_Y19_N30
\vCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~7_combout\ = (\Add0~48_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~7_combout\);

-- Location: FF_X34_Y19_N31
\PIXEL_Horizontal:vCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[24]~q\);

-- Location: LCCOMB_X36_Y19_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\PIXEL_Horizontal:vCount[25]~q\ & (!\Add0~49\)) # (!\PIXEL_Horizontal:vCount[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\PIXEL_Horizontal:vCount[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X37_Y19_N20
\vCount~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~6_combout\ = (\Add0~50_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~50_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~6_combout\);

-- Location: FF_X37_Y19_N21
\PIXEL_Horizontal:vCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[25]~q\);

-- Location: LCCOMB_X36_Y19_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\PIXEL_Horizontal:vCount[26]~q\ & (\Add0~51\ $ (GND))) # (!\PIXEL_Horizontal:vCount[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\PIXEL_Horizontal:vCount[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X35_Y19_N10
\vCount~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~5_combout\ = (\Add0~52_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~5_combout\);

-- Location: FF_X35_Y19_N11
\PIXEL_Horizontal:vCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[26]~q\);

-- Location: LCCOMB_X36_Y19_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\PIXEL_Horizontal:vCount[27]~q\ & (!\Add0~53\)) # (!\PIXEL_Horizontal:vCount[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\PIXEL_Horizontal:vCount[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X34_Y19_N8
\vCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~4_combout\ = (\Add0~54_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~4_combout\);

-- Location: FF_X34_Y19_N9
\PIXEL_Horizontal:vCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[27]~q\);

-- Location: LCCOMB_X36_Y19_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\PIXEL_Horizontal:vCount[28]~q\ & (\Add0~55\ $ (GND))) # (!\PIXEL_Horizontal:vCount[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\PIXEL_Horizontal:vCount[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X35_Y19_N16
\LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = (!\Add0~44_combout\ & (!\Add0~48_combout\ & (!\Add0~46_combout\ & !\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~46_combout\,
	datad => \Add0~50_combout\,
	combout => \LessThan4~4_combout\);

-- Location: LCCOMB_X35_Y19_N20
\LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~9_combout\ = (!\Add0~54_combout\ & \LessThan4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datad => \LessThan4~4_combout\,
	combout => \LessThan4~9_combout\);

-- Location: LCCOMB_X36_Y19_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\PIXEL_Horizontal:vCount[29]~q\ & (!\Add0~57\)) # (!\PIXEL_Horizontal:vCount[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\PIXEL_Horizontal:vCount[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X35_Y19_N22
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (!\Add0~38_combout\ & (!\Add0~40_combout\ & (!\Add0~36_combout\ & !\Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~42_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X35_Y19_N26
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!\Add0~22_combout\ & (!\Add0~26_combout\ & (!\Add0~20_combout\ & !\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~24_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X35_Y19_N28
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (!\Add0~28_combout\ & (!\Add0~32_combout\ & (!\Add0~30_combout\ & !\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~34_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X35_Y19_N6
\LessThan4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~8_combout\ = (!\Add0~52_combout\ & (\LessThan4~3_combout\ & (\LessThan4~1_combout\ & \LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \LessThan4~3_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~2_combout\,
	combout => \LessThan4~8_combout\);

-- Location: LCCOMB_X35_Y19_N18
\LessThan4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~10_combout\ = (!\Add0~56_combout\ & (\LessThan4~9_combout\ & (!\Add0~58_combout\ & \LessThan4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \LessThan4~9_combout\,
	datac => \Add0~58_combout\,
	datad => \LessThan4~8_combout\,
	combout => \LessThan4~10_combout\);

-- Location: LCCOMB_X35_Y20_N12
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (!\Add0~14_combout\ & (!\Add0~12_combout\ & (!\Add0~10_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X35_Y20_N26
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (((!\Add0~2_combout\ & !\Add0~0_combout\)) # (!\Add0~6_combout\)) # (!\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X35_Y20_N2
\LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ((\LessThan7~2_combout\ & (!\Add0~16_combout\ & \LessThan7~1_combout\))) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan7~1_combout\,
	datad => \Add0~18_combout\,
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X35_Y20_N20
\LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (!\Add0~60_combout\ & \LessThan7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~60_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X35_Y20_N6
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\Add0~4_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X35_Y20_N28
\LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~7_combout\ = (\Add0~14_combout\ & (\Add0~12_combout\ & (\Add0~10_combout\ & \Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~16_combout\,
	combout => \LessThan4~7_combout\);

-- Location: LCCOMB_X35_Y20_N4
\VState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~7_combout\ = (!\Add0~60_combout\ & (((!\LessThan7~0_combout\ & !\Add0~8_combout\)) # (!\LessThan4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~60_combout\,
	datad => \LessThan4~7_combout\,
	combout => \VState~7_combout\);

-- Location: LCCOMB_X35_Y19_N30
\vCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~0_combout\ = ((!\LessThan7~4_combout\ & ((\Add0~18_combout\) # (!\VState~7_combout\)))) # (!\LessThan4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \LessThan4~10_combout\,
	datac => \LessThan7~4_combout\,
	datad => \VState~7_combout\,
	combout => \vCount~0_combout\);

-- Location: LCCOMB_X34_Y19_N18
\vCount~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~22_combout\ = (\Add0~18_combout\ & (((\LessThan5~2_combout\) # (!\vCount~0_combout\)) # (!\VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \VState~6_combout\,
	datac => \vCount~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \vCount~22_combout\);

-- Location: FF_X34_Y19_N19
\PIXEL_Horizontal:vCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[9]~q\);

-- Location: LCCOMB_X35_Y20_N18
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\Add0~2_combout\ & !\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X35_Y20_N16
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ((!\Add0~8_combout\ & ((\LessThan5~0_combout\) # (!\Add0~6_combout\)))) # (!\LessThan4~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \LessThan5~0_combout\,
	datac => \Add0~8_combout\,
	datad => \LessThan4~7_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X35_Y19_N12
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!\Add0~18_combout\ & (!\Add0~60_combout\ & (\LessThan5~1_combout\ & \LessThan4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~60_combout\,
	datac => \LessThan5~1_combout\,
	datad => \LessThan4~10_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X35_Y19_N4
\vCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~2_combout\ = (\Add0~58_combout\ & ((\LessThan5~2_combout\) # ((!\VState~6_combout\) # (!\vCount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Add0~58_combout\,
	datac => \vCount~0_combout\,
	datad => \VState~6_combout\,
	combout => \vCount~2_combout\);

-- Location: FF_X35_Y19_N5
\PIXEL_Horizontal:vCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[29]~q\);

-- Location: LCCOMB_X36_Y19_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\PIXEL_Horizontal:vCount[30]~q\ & (\Add0~59\ $ (GND))) # (!\PIXEL_Horizontal:vCount[30]~q\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\PIXEL_Horizontal:vCount[30]~q\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:vCount[30]~q\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X37_Y19_N12
\vCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vCount~1_combout\ = (\Add0~60_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~60_combout\,
	datad => \Add0~62_combout\,
	combout => \vCount~1_combout\);

-- Location: FF_X37_Y19_N13
\PIXEL_Horizontal:vCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \vCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:vCount[30]~q\);

-- Location: LCCOMB_X36_Y19_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \PIXEL_Horizontal:vCount[31]~q\ $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:vCount[31]~q\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X35_Y19_N14
\LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = (\LessThan4~1_combout\ & (\LessThan4~2_combout\ & (\LessThan4~3_combout\ & \LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => \LessThan4~2_combout\,
	datac => \LessThan4~3_combout\,
	datad => \LessThan4~4_combout\,
	combout => \LessThan4~5_combout\);

-- Location: LCCOMB_X35_Y19_N0
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\Add0~52_combout\ & (!\Add0~54_combout\ & (!\Add0~56_combout\ & !\Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~58_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X35_Y19_N8
\LessThan4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~6_combout\ = (!\Add0~18_combout\ & (\LessThan4~5_combout\ & \LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datac => \LessThan4~5_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~6_combout\);

-- Location: LCCOMB_X35_Y19_N24
\VState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~6_combout\ = (!\Add0~62_combout\ & ((\Add0~60_combout\) # ((\LessThan4~7_combout\) # (!\LessThan4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Add0~60_combout\,
	datac => \LessThan4~6_combout\,
	datad => \LessThan4~7_combout\,
	combout => \VState~6_combout\);

-- Location: LCCOMB_X36_Y21_N24
\VState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~8_combout\ = (\VState~6_combout\ & !\vCount~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VState~6_combout\,
	datad => \vCount~0_combout\,
	combout => \VState~8_combout\);

-- Location: FF_X36_Y21_N25
\VState.Display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VState.Display~q\);

-- Location: LCCOMB_X36_Y21_N10
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\LessThan0~6_combout\ & (\LessThan0~5_combout\ & \LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X36_Y21_N6
\HState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~8_combout\ = (!\PIXEL_Horizontal:HCount[31]~q\ & ((\LessThan2~1_combout\ & (!\LessThan0~7_combout\)) # (!\LessThan2~1_combout\ & ((\LessThan3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan3~4_combout\,
	datac => \LessThan2~1_combout\,
	datad => \PIXEL_Horizontal:HCount[31]~q\,
	combout => \HState~8_combout\);

-- Location: FF_X36_Y21_N7
\HState.Display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HState.Display~q\);

-- Location: LCCOMB_X37_Y21_N12
\Red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red~2_combout\ = (\Red_Data[0]~input_o\ & (!\VState.Display~q\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Red_Data[0]~input_o\,
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	combout => \Red~2_combout\);

-- Location: FF_X37_Y21_N13
\Red[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Red~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[0]~reg0_q\);

-- Location: IOIBUF_X45_Y34_N15
\Red_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Red_Data(1),
	o => \Red_Data[1]~input_o\);

-- Location: LCCOMB_X37_Y21_N18
\Red~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red~3_combout\ = (\Red_Data[1]~input_o\ & (!\VState.Display~q\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Red_Data[1]~input_o\,
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	combout => \Red~3_combout\);

-- Location: FF_X37_Y21_N19
\Red[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Red~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[1]~reg0_q\);

-- Location: IOIBUF_X53_Y12_N1
\Red_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Red_Data(2),
	o => \Red_Data[2]~input_o\);

-- Location: LCCOMB_X37_Y21_N28
\Red~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red~4_combout\ = (!\VState.Display~q\ & (!\HState.Display~q\ & \Red_Data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	datad => \Red_Data[2]~input_o\,
	combout => \Red~4_combout\);

-- Location: FF_X37_Y21_N29
\Red[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Red~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[2]~reg0_q\);

-- Location: IOIBUF_X53_Y15_N8
\Green_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Green_Data(0),
	o => \Green_Data[0]~input_o\);

-- Location: LCCOMB_X37_Y21_N2
\Green~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Green~0_combout\ = (!\VState.Display~q\ & (!\HState.Display~q\ & \Green_Data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	datad => \Green_Data[0]~input_o\,
	combout => \Green~0_combout\);

-- Location: FF_X37_Y21_N3
\Green[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Green~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[0]~reg0_q\);

-- Location: IOIBUF_X40_Y34_N1
\Green_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Green_Data(1),
	o => \Green_Data[1]~input_o\);

-- Location: LCCOMB_X37_Y21_N0
\Green~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Green~1_combout\ = (!\VState.Display~q\ & (!\HState.Display~q\ & \Green_Data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	datad => \Green_Data[1]~input_o\,
	combout => \Green~1_combout\);

-- Location: FF_X37_Y21_N1
\Green[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Green~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[1]~reg0_q\);

-- Location: IOIBUF_X53_Y25_N1
\Green_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Green_Data(2),
	o => \Green_Data[2]~input_o\);

-- Location: LCCOMB_X37_Y21_N22
\Green~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Green~2_combout\ = (!\VState.Display~q\ & (!\HState.Display~q\ & \Green_Data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	datad => \Green_Data[2]~input_o\,
	combout => \Green~2_combout\);

-- Location: FF_X37_Y21_N23
\Green[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[2]~reg0_q\);

-- Location: IOIBUF_X53_Y21_N22
\Blue_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Blue_Data(0),
	o => \Blue_Data[0]~input_o\);

-- Location: LCCOMB_X36_Y21_N20
\Blue~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Blue~0_combout\ = (!\HState.Display~q\ & (!\VState.Display~q\ & \Blue_Data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState.Display~q\,
	datab => \VState.Display~q\,
	datac => \Blue_Data[0]~input_o\,
	combout => \Blue~0_combout\);

-- Location: FF_X36_Y21_N21
\Blue[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Blue~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blue[0]~reg0_q\);

-- Location: IOIBUF_X38_Y34_N1
\Blue_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Blue_Data(1),
	o => \Blue_Data[1]~input_o\);

-- Location: LCCOMB_X37_Y21_N24
\Blue~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Blue~1_combout\ = (!\VState.Display~q\ & (!\HState.Display~q\ & \Blue_Data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	datad => \Blue_Data[1]~input_o\,
	combout => \Blue~1_combout\);

-- Location: FF_X37_Y21_N25
\Blue[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Blue~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blue[1]~reg0_q\);

-- Location: LCCOMB_X36_Y21_N8
\HState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~9_combout\ = (\LessThan2~1_combout\ & (\HState~7_combout\ & ((!\HState~6_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan0~5_combout\,
	datac => \HState~6_combout\,
	datad => \HState~7_combout\,
	combout => \HState~9_combout\);

-- Location: FF_X36_Y21_N9
\HState.H_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HState.H_sync~q\);

-- Location: FF_X36_Y21_N3
\Hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \HState.H_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hsync~reg0_q\);

-- Location: LCCOMB_X35_Y20_N24
\VState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~9_combout\ = (\LessThan4~6_combout\ & (!\LessThan5~1_combout\ & (\VState~7_combout\ & \VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~6_combout\,
	datab => \LessThan5~1_combout\,
	datac => \VState~7_combout\,
	datad => \VState~6_combout\,
	combout => \VState~9_combout\);

-- Location: FF_X35_Y20_N25
\VState.V_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VState.V_sync~q\);

-- Location: LCCOMB_X32_Y20_N24
\Vsync~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vsync~reg0feeder_combout\ = \VState.V_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VState.V_sync~q\,
	combout => \Vsync~reg0feeder_combout\);

-- Location: FF_X32_Y20_N25
\Vsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Vsync~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vsync~reg0_q\);

-- Location: LCCOMB_X36_Y21_N4
\HState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~10_combout\ = (\LessThan3~4_combout\ & (!\LessThan2~1_combout\ & !\PIXEL_Horizontal:HCount[31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~4_combout\,
	datac => \LessThan2~1_combout\,
	datad => \PIXEL_Horizontal:HCount[31]~q\,
	combout => \HState~10_combout\);

-- Location: FF_X36_Y21_N5
\HState.BackPorch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HState.BackPorch~q\);

-- Location: LCCOMB_X36_Y21_N18
\HAddress~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~3_combout\ = (\PIXEL_Horizontal:HCount[31]~q\) # (((!\LessThan0~6_combout\ & \LessThan0~5_combout\)) # (!\LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \PIXEL_Horizontal:HCount[31]~q\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan1~1_combout\,
	combout => \HAddress~3_combout\);

-- Location: LCCOMB_X36_Y21_N30
\HAddress~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~4_combout\ = (\HAddress~3_combout\ & ((\HState.BackPorch~q\) # ((\VState.Display~q\) # (\HState.H_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState.BackPorch~q\,
	datab => \VState.Display~q\,
	datac => \HState.H_sync~q\,
	datad => \HAddress~3_combout\,
	combout => \HAddress~4_combout\);

-- Location: LCCOMB_X37_Y21_N14
\HAddress~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~2_combout\ = (!\HState.Display~q\ & !\VState.Display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HState.Display~q\,
	datad => \VState.Display~q\,
	combout => \HAddress~2_combout\);

-- Location: FF_X37_Y21_N27
\PIXEL_Horizontal:HAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[0]~q\);

-- Location: LCCOMB_X37_Y21_N26
\HAddress~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~5_combout\ = (\HAddress~4_combout\ & ((\PIXEL_Horizontal:HAddress[0]~q\) # ((\HAddress~2_combout\ & \HCount~1_combout\)))) # (!\HAddress~4_combout\ & (\HAddress~2_combout\ & ((\HCount~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~4_combout\,
	datab => \HAddress~2_combout\,
	datac => \PIXEL_Horizontal:HAddress[0]~q\,
	datad => \HCount~1_combout\,
	combout => \HAddress~5_combout\);

-- Location: FF_X37_Y21_N15
\H_Address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \HAddress~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[0]~reg0_q\);

-- Location: FF_X37_Y21_N17
\PIXEL_Horizontal:HAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[1]~q\);

-- Location: LCCOMB_X37_Y21_N16
\HAddress~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~6_combout\ = (\HAddress~4_combout\ & ((\PIXEL_Horizontal:HAddress[1]~q\) # ((\HAddress~2_combout\ & \HCount~2_combout\)))) # (!\HAddress~4_combout\ & (\HAddress~2_combout\ & ((\HCount~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~4_combout\,
	datab => \HAddress~2_combout\,
	datac => \PIXEL_Horizontal:HAddress[1]~q\,
	datad => \HCount~2_combout\,
	combout => \HAddress~6_combout\);

-- Location: LCCOMB_X37_Y21_N4
\H_Address[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[1]~reg0feeder_combout\ = \HAddress~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HAddress~6_combout\,
	combout => \H_Address[1]~reg0feeder_combout\);

-- Location: FF_X37_Y21_N5
\H_Address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[1]~reg0_q\);

-- Location: LCCOMB_X36_Y21_N0
\HAddress~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~7_combout\ = (!\HState.Display~q\ & (\HCount~0_combout\ & !\VState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState.Display~q\,
	datac => \HCount~0_combout\,
	datad => \VState.Display~q\,
	combout => \HAddress~7_combout\);

-- Location: FF_X36_Y21_N23
\PIXEL_Horizontal:HAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[2]~q\);

-- Location: LCCOMB_X36_Y21_N22
\HAddress~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~8_combout\ = (\HAddress~4_combout\ & ((\PIXEL_Horizontal:HAddress[2]~q\) # ((\HAddress~7_combout\ & \PIXEL_Horizontal:HCount[2]~q\)))) # (!\HAddress~4_combout\ & (\HAddress~7_combout\ & ((\PIXEL_Horizontal:HCount[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~4_combout\,
	datab => \HAddress~7_combout\,
	datac => \PIXEL_Horizontal:HAddress[2]~q\,
	datad => \PIXEL_Horizontal:HCount[2]~q\,
	combout => \HAddress~8_combout\);

-- Location: LCCOMB_X36_Y21_N28
\H_Address[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[2]~reg0feeder_combout\ = \HAddress~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HAddress~8_combout\,
	combout => \H_Address[2]~reg0feeder_combout\);

-- Location: FF_X36_Y21_N29
\H_Address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[2]~reg0_q\);

-- Location: FF_X36_Y21_N13
\PIXEL_Horizontal:HAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[3]~q\);

-- Location: LCCOMB_X36_Y21_N12
\HAddress~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~9_combout\ = (\HAddress~4_combout\ & ((\PIXEL_Horizontal:HAddress[3]~q\) # ((\PIXEL_Horizontal:HCount[3]~q\ & \HAddress~7_combout\)))) # (!\HAddress~4_combout\ & (\PIXEL_Horizontal:HCount[3]~q\ & ((\HAddress~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~4_combout\,
	datab => \PIXEL_Horizontal:HCount[3]~q\,
	datac => \PIXEL_Horizontal:HAddress[3]~q\,
	datad => \HAddress~7_combout\,
	combout => \HAddress~9_combout\);

-- Location: LCCOMB_X36_Y21_N26
\H_Address[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[3]~reg0feeder_combout\ = \HAddress~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HAddress~9_combout\,
	combout => \H_Address[3]~reg0feeder_combout\);

-- Location: FF_X36_Y21_N27
\H_Address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[3]~reg0_q\);

-- Location: FF_X39_Y20_N19
\PIXEL_Horizontal:HAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[4]~q\);

-- Location: LCCOMB_X39_Y20_N18
\HAddress~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~10_combout\ = (\HAddress~7_combout\ & ((\PIXEL_Horizontal:HCount[4]~q\) # ((\PIXEL_Horizontal:HAddress[4]~q\ & \HAddress~4_combout\)))) # (!\HAddress~7_combout\ & (((\PIXEL_Horizontal:HAddress[4]~q\ & \HAddress~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~7_combout\,
	datab => \PIXEL_Horizontal:HCount[4]~q\,
	datac => \PIXEL_Horizontal:HAddress[4]~q\,
	datad => \HAddress~4_combout\,
	combout => \HAddress~10_combout\);

-- Location: LCCOMB_X39_Y20_N24
\H_Address[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[4]~reg0feeder_combout\ = \HAddress~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HAddress~10_combout\,
	combout => \H_Address[4]~reg0feeder_combout\);

-- Location: FF_X39_Y20_N25
\H_Address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[4]~reg0_q\);

-- Location: FF_X39_Y20_N17
\PIXEL_Horizontal:HAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[5]~q\);

-- Location: LCCOMB_X39_Y20_N16
\HAddress~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~11_combout\ = (\PIXEL_Horizontal:HCount[5]~q\ & ((\HAddress~7_combout\) # ((\PIXEL_Horizontal:HAddress[5]~q\ & \HAddress~4_combout\)))) # (!\PIXEL_Horizontal:HCount[5]~q\ & (((\PIXEL_Horizontal:HAddress[5]~q\ & \HAddress~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:HCount[5]~q\,
	datab => \HAddress~7_combout\,
	datac => \PIXEL_Horizontal:HAddress[5]~q\,
	datad => \HAddress~4_combout\,
	combout => \HAddress~11_combout\);

-- Location: LCCOMB_X39_Y20_N10
\H_Address[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[5]~reg0feeder_combout\ = \HAddress~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HAddress~11_combout\,
	combout => \H_Address[5]~reg0feeder_combout\);

-- Location: FF_X39_Y20_N11
\H_Address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[5]~reg0_q\);

-- Location: FF_X39_Y20_N27
\PIXEL_Horizontal:HAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[6]~q\);

-- Location: LCCOMB_X39_Y20_N26
\HAddress~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~12_combout\ = (\HAddress~7_combout\ & ((\PIXEL_Horizontal:HCount[6]~q\) # ((\PIXEL_Horizontal:HAddress[6]~q\ & \HAddress~4_combout\)))) # (!\HAddress~7_combout\ & (((\PIXEL_Horizontal:HAddress[6]~q\ & \HAddress~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~7_combout\,
	datab => \PIXEL_Horizontal:HCount[6]~q\,
	datac => \PIXEL_Horizontal:HAddress[6]~q\,
	datad => \HAddress~4_combout\,
	combout => \HAddress~12_combout\);

-- Location: LCCOMB_X39_Y20_N28
\H_Address[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[6]~reg0feeder_combout\ = \HAddress~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HAddress~12_combout\,
	combout => \H_Address[6]~reg0feeder_combout\);

-- Location: FF_X39_Y20_N29
\H_Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[6]~reg0_q\);

-- Location: FF_X39_Y20_N5
\PIXEL_Horizontal:HAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[7]~q\);

-- Location: LCCOMB_X39_Y20_N4
\HAddress~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~13_combout\ = (\HAddress~7_combout\ & ((\PIXEL_Horizontal:HCount[7]~q\) # ((\PIXEL_Horizontal:HAddress[7]~q\ & \HAddress~4_combout\)))) # (!\HAddress~7_combout\ & (((\PIXEL_Horizontal:HAddress[7]~q\ & \HAddress~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~7_combout\,
	datab => \PIXEL_Horizontal:HCount[7]~q\,
	datac => \PIXEL_Horizontal:HAddress[7]~q\,
	datad => \HAddress~4_combout\,
	combout => \HAddress~13_combout\);

-- Location: LCCOMB_X39_Y20_N6
\H_Address[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[7]~reg0feeder_combout\ = \HAddress~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HAddress~13_combout\,
	combout => \H_Address[7]~reg0feeder_combout\);

-- Location: FF_X39_Y20_N7
\H_Address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[7]~reg0_q\);

-- Location: FF_X39_Y20_N23
\PIXEL_Horizontal:HAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[8]~q\);

-- Location: LCCOMB_X39_Y20_N22
\HAddress~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~14_combout\ = (\HAddress~7_combout\ & ((\PIXEL_Horizontal:HCount[8]~q\) # ((\PIXEL_Horizontal:HAddress[8]~q\ & \HAddress~4_combout\)))) # (!\HAddress~7_combout\ & (((\PIXEL_Horizontal:HAddress[8]~q\ & \HAddress~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~7_combout\,
	datab => \PIXEL_Horizontal:HCount[8]~q\,
	datac => \PIXEL_Horizontal:HAddress[8]~q\,
	datad => \HAddress~4_combout\,
	combout => \HAddress~14_combout\);

-- Location: LCCOMB_X39_Y20_N8
\H_Address[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[8]~reg0feeder_combout\ = \HAddress~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HAddress~14_combout\,
	combout => \H_Address[8]~reg0feeder_combout\);

-- Location: FF_X39_Y20_N9
\H_Address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[8]~reg0_q\);

-- Location: FF_X39_Y20_N13
\PIXEL_Horizontal:HAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:HAddress[9]~q\);

-- Location: LCCOMB_X39_Y20_N12
\HAddress~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress~15_combout\ = (\HAddress~7_combout\ & ((\PIXEL_Horizontal:HCount[9]~q\) # ((\PIXEL_Horizontal:HAddress[9]~q\ & \HAddress~4_combout\)))) # (!\HAddress~7_combout\ & (((\PIXEL_Horizontal:HAddress[9]~q\ & \HAddress~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HAddress~7_combout\,
	datab => \PIXEL_Horizontal:HCount[9]~q\,
	datac => \PIXEL_Horizontal:HAddress[9]~q\,
	datad => \HAddress~4_combout\,
	combout => \HAddress~15_combout\);

-- Location: LCCOMB_X39_Y20_N30
\H_Address[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[9]~reg0feeder_combout\ = \HAddress~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HAddress~15_combout\,
	combout => \H_Address[9]~reg0feeder_combout\);

-- Location: FF_X39_Y20_N31
\H_Address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[9]~reg0_q\);

-- Location: FF_X34_Y21_N17
\PIXEL_Horizontal:VAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[0]~q\);

-- Location: LCCOMB_X35_Y21_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \PIXEL_Horizontal:VAddress[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\PIXEL_Horizontal:VAddress[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:VAddress[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X35_Y19_N2
\VAddress~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~0_combout\ = (\Add0~62_combout\) # (((!\LessThan4~7_combout\ & \LessThan4~6_combout\)) # (!\LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \LessThan4~7_combout\,
	datac => \LessThan4~6_combout\,
	datad => \LessThan5~2_combout\,
	combout => \VAddress~0_combout\);

-- Location: LCCOMB_X34_Y21_N16
\VAddress~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~1_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[0]~q\))) # (!\HCount~0_combout\ & (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \HCount~0_combout\,
	datac => \PIXEL_Horizontal:VAddress[0]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~1_combout\);

-- Location: LCCOMB_X34_Y21_N12
\V_Address[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[0]~reg0feeder_combout\ = \VAddress~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~1_combout\,
	combout => \V_Address[0]~reg0feeder_combout\);

-- Location: FF_X34_Y21_N13
\V_Address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[0]~reg0_q\);

-- Location: FF_X34_Y21_N7
\PIXEL_Horizontal:VAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[1]~q\);

-- Location: LCCOMB_X35_Y21_N6
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\PIXEL_Horizontal:VAddress[1]~q\ & (!\Add1~1\)) # (!\PIXEL_Horizontal:VAddress[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\PIXEL_Horizontal:VAddress[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:VAddress[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X34_Y21_N6
\VAddress~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~2_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[1]~q\))) # (!\HCount~0_combout\ & (\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \HCount~0_combout\,
	datac => \PIXEL_Horizontal:VAddress[1]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~2_combout\);

-- Location: LCCOMB_X34_Y21_N30
\V_Address[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[1]~reg0feeder_combout\ = \VAddress~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~2_combout\,
	combout => \V_Address[1]~reg0feeder_combout\);

-- Location: FF_X34_Y21_N31
\V_Address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[1]~reg0_q\);

-- Location: FF_X35_Y21_N31
\PIXEL_Horizontal:VAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[2]~q\);

-- Location: LCCOMB_X35_Y21_N8
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\PIXEL_Horizontal:VAddress[2]~q\ & (\Add1~3\ $ (GND))) # (!\PIXEL_Horizontal:VAddress[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\PIXEL_Horizontal:VAddress[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:VAddress[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X35_Y21_N30
\VAddress~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~3_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[2]~q\))) # (!\HCount~0_combout\ & (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \HCount~0_combout\,
	datac => \PIXEL_Horizontal:VAddress[2]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~3_combout\);

-- Location: LCCOMB_X35_Y21_N0
\V_Address[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[2]~reg0feeder_combout\ = \VAddress~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VAddress~3_combout\,
	combout => \V_Address[2]~reg0feeder_combout\);

-- Location: FF_X35_Y21_N1
\V_Address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[2]~reg0_q\);

-- Location: FF_X34_Y21_N29
\PIXEL_Horizontal:VAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[3]~q\);

-- Location: LCCOMB_X35_Y21_N10
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\PIXEL_Horizontal:VAddress[3]~q\ & (!\Add1~5\)) # (!\PIXEL_Horizontal:VAddress[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\PIXEL_Horizontal:VAddress[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:VAddress[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X34_Y21_N28
\VAddress~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~4_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[3]~q\))) # (!\HCount~0_combout\ & (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \Add1~6_combout\,
	datac => \PIXEL_Horizontal:VAddress[3]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~4_combout\);

-- Location: LCCOMB_X34_Y21_N0
\V_Address[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[3]~reg0feeder_combout\ = \VAddress~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~4_combout\,
	combout => \V_Address[3]~reg0feeder_combout\);

-- Location: FF_X34_Y21_N1
\V_Address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[3]~reg0_q\);

-- Location: FF_X34_Y21_N3
\PIXEL_Horizontal:VAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[4]~q\);

-- Location: LCCOMB_X35_Y21_N12
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\PIXEL_Horizontal:VAddress[4]~q\ & (\Add1~7\ $ (GND))) # (!\PIXEL_Horizontal:VAddress[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\PIXEL_Horizontal:VAddress[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:VAddress[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X34_Y21_N2
\VAddress~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~5_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[4]~q\))) # (!\HCount~0_combout\ & (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \Add1~8_combout\,
	datac => \PIXEL_Horizontal:VAddress[4]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~5_combout\);

-- Location: LCCOMB_X34_Y21_N14
\V_Address[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[4]~reg0feeder_combout\ = \VAddress~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~5_combout\,
	combout => \V_Address[4]~reg0feeder_combout\);

-- Location: FF_X34_Y21_N15
\V_Address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[4]~reg0_q\);

-- Location: FF_X34_Y21_N21
\PIXEL_Horizontal:VAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[5]~q\);

-- Location: LCCOMB_X35_Y21_N14
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\PIXEL_Horizontal:VAddress[5]~q\ & (!\Add1~9\)) # (!\PIXEL_Horizontal:VAddress[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\PIXEL_Horizontal:VAddress[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:VAddress[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X34_Y21_N20
\VAddress~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~6_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[5]~q\))) # (!\HCount~0_combout\ & (\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \Add1~10_combout\,
	datac => \PIXEL_Horizontal:VAddress[5]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~6_combout\);

-- Location: LCCOMB_X34_Y21_N24
\V_Address[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[5]~reg0feeder_combout\ = \VAddress~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~6_combout\,
	combout => \V_Address[5]~reg0feeder_combout\);

-- Location: FF_X34_Y21_N25
\V_Address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[5]~reg0_q\);

-- Location: FF_X34_Y21_N19
\PIXEL_Horizontal:VAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[6]~q\);

-- Location: LCCOMB_X35_Y21_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\PIXEL_Horizontal:VAddress[6]~q\ & (\Add1~11\ $ (GND))) # (!\PIXEL_Horizontal:VAddress[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\PIXEL_Horizontal:VAddress[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:VAddress[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X34_Y21_N18
\VAddress~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~7_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[6]~q\))) # (!\HCount~0_combout\ & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \Add1~12_combout\,
	datac => \PIXEL_Horizontal:VAddress[6]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~7_combout\);

-- Location: LCCOMB_X34_Y21_N26
\V_Address[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[6]~reg0feeder_combout\ = \VAddress~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~7_combout\,
	combout => \V_Address[6]~reg0feeder_combout\);

-- Location: FF_X34_Y21_N27
\V_Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[6]~reg0_q\);

-- Location: FF_X35_Y21_N25
\PIXEL_Horizontal:VAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[7]~q\);

-- Location: LCCOMB_X35_Y21_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\PIXEL_Horizontal:VAddress[7]~q\ & (!\Add1~13\)) # (!\PIXEL_Horizontal:VAddress[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\PIXEL_Horizontal:VAddress[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIXEL_Horizontal:VAddress[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X35_Y21_N24
\VAddress~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~8_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[7]~q\))) # (!\HCount~0_combout\ & (\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \HCount~0_combout\,
	datac => \PIXEL_Horizontal:VAddress[7]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~8_combout\);

-- Location: LCCOMB_X35_Y21_N26
\V_Address[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[7]~reg0feeder_combout\ = \VAddress~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~8_combout\,
	combout => \V_Address[7]~reg0feeder_combout\);

-- Location: FF_X35_Y21_N27
\V_Address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[7]~reg0_q\);

-- Location: FF_X35_Y21_N3
\PIXEL_Horizontal:VAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[8]~q\);

-- Location: LCCOMB_X35_Y21_N20
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\PIXEL_Horizontal:VAddress[8]~q\ & (\Add1~15\ $ (GND))) # (!\PIXEL_Horizontal:VAddress[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\PIXEL_Horizontal:VAddress[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIXEL_Horizontal:VAddress[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X35_Y21_N2
\VAddress~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~9_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[8]~q\))) # (!\HCount~0_combout\ & (\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~0_combout\,
	datab => \Add1~16_combout\,
	datac => \PIXEL_Horizontal:VAddress[8]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~9_combout\);

-- Location: LCCOMB_X35_Y21_N28
\V_Address[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[8]~reg0feeder_combout\ = \VAddress~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VAddress~9_combout\,
	combout => \V_Address[8]~reg0feeder_combout\);

-- Location: FF_X35_Y21_N29
\V_Address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \V_Address[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[8]~reg0_q\);

-- Location: FF_X37_Y20_N27
\PIXEL_Horizontal:VAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIXEL_Horizontal:VAddress[9]~q\);

-- Location: LCCOMB_X35_Y21_N22
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (\PIXEL_Horizontal:VAddress[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PIXEL_Horizontal:VAddress[9]~q\,
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X37_Y20_N26
\VAddress~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~10_combout\ = (\VAddress~0_combout\ & ((\HCount~0_combout\ & ((\PIXEL_Horizontal:VAddress[9]~q\))) # (!\HCount~0_combout\ & (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \HCount~0_combout\,
	datac => \PIXEL_Horizontal:VAddress[9]~q\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~10_combout\);

-- Location: FF_X37_Y20_N3
\V_Address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \VAddress~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[9]~reg0_q\);

ww_Red(0) <= \Red[0]~output_o\;

ww_Red(1) <= \Red[1]~output_o\;

ww_Red(2) <= \Red[2]~output_o\;

ww_Green(0) <= \Green[0]~output_o\;

ww_Green(1) <= \Green[1]~output_o\;

ww_Green(2) <= \Green[2]~output_o\;

ww_Blue(0) <= \Blue[0]~output_o\;

ww_Blue(1) <= \Blue[1]~output_o\;

ww_Hsync <= \Hsync~output_o\;

ww_Vsync <= \Vsync~output_o\;

ww_H_Address(0) <= \H_Address[0]~output_o\;

ww_H_Address(1) <= \H_Address[1]~output_o\;

ww_H_Address(2) <= \H_Address[2]~output_o\;

ww_H_Address(3) <= \H_Address[3]~output_o\;

ww_H_Address(4) <= \H_Address[4]~output_o\;

ww_H_Address(5) <= \H_Address[5]~output_o\;

ww_H_Address(6) <= \H_Address[6]~output_o\;

ww_H_Address(7) <= \H_Address[7]~output_o\;

ww_H_Address(8) <= \H_Address[8]~output_o\;

ww_H_Address(9) <= \H_Address[9]~output_o\;

ww_V_Address(0) <= \V_Address[0]~output_o\;

ww_V_Address(1) <= \V_Address[1]~output_o\;

ww_V_Address(2) <= \V_Address[2]~output_o\;

ww_V_Address(3) <= \V_Address[3]~output_o\;

ww_V_Address(4) <= \V_Address[4]~output_o\;

ww_V_Address(5) <= \V_Address[5]~output_o\;

ww_V_Address(6) <= \V_Address[6]~output_o\;

ww_V_Address(7) <= \V_Address[7]~output_o\;

ww_V_Address(8) <= \V_Address[8]~output_o\;

ww_V_Address(9) <= \V_Address[9]~output_o\;
END structure;


