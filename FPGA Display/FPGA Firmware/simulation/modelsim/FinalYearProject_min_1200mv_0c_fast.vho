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

-- DATE "05/22/2020 18:39:42"

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
-- Red[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hsync	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vsync	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_Address[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_Address[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red_Data[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red_Data[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red_Data[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green_Data[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green_Data[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green_Data[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue_Data[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blue_Data[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \HCount[0]~34_combout\ : std_logic;
SIGNAL \HCount[0]~35\ : std_logic;
SIGNAL \HCount[1]~36_combout\ : std_logic;
SIGNAL \HCount[1]~37\ : std_logic;
SIGNAL \HCount[2]~38_combout\ : std_logic;
SIGNAL \HCount[2]~39\ : std_logic;
SIGNAL \HCount[3]~40_combout\ : std_logic;
SIGNAL \HCount[3]~41\ : std_logic;
SIGNAL \HCount[4]~42_combout\ : std_logic;
SIGNAL \HCount[4]~43\ : std_logic;
SIGNAL \HCount[5]~44_combout\ : std_logic;
SIGNAL \HCount[5]~45\ : std_logic;
SIGNAL \HCount[6]~46_combout\ : std_logic;
SIGNAL \HCount[6]~47\ : std_logic;
SIGNAL \HCount[7]~48_combout\ : std_logic;
SIGNAL \HCount[7]~49\ : std_logic;
SIGNAL \HCount[8]~50_combout\ : std_logic;
SIGNAL \HCount[8]~51\ : std_logic;
SIGNAL \HCount[9]~52_combout\ : std_logic;
SIGNAL \HCount[9]~53\ : std_logic;
SIGNAL \HCount[10]~54_combout\ : std_logic;
SIGNAL \HCount[10]~55\ : std_logic;
SIGNAL \HCount[11]~56_combout\ : std_logic;
SIGNAL \HCount[11]~57\ : std_logic;
SIGNAL \HCount[12]~58_combout\ : std_logic;
SIGNAL \HCount[12]~59\ : std_logic;
SIGNAL \HCount[13]~60_combout\ : std_logic;
SIGNAL \HCount[13]~61\ : std_logic;
SIGNAL \HCount[14]~62_combout\ : std_logic;
SIGNAL \HCount[14]~63\ : std_logic;
SIGNAL \HCount[15]~64_combout\ : std_logic;
SIGNAL \HCount[15]~65\ : std_logic;
SIGNAL \HCount[16]~66_combout\ : std_logic;
SIGNAL \HCount[16]~67\ : std_logic;
SIGNAL \HCount[17]~68_combout\ : std_logic;
SIGNAL \HCount[17]~69\ : std_logic;
SIGNAL \HCount[18]~70_combout\ : std_logic;
SIGNAL \HCount[18]~71\ : std_logic;
SIGNAL \HCount[19]~72_combout\ : std_logic;
SIGNAL \HCount[19]~73\ : std_logic;
SIGNAL \HCount[20]~74_combout\ : std_logic;
SIGNAL \HCount[20]~75\ : std_logic;
SIGNAL \HCount[21]~76_combout\ : std_logic;
SIGNAL \HCount[21]~77\ : std_logic;
SIGNAL \HCount[22]~78_combout\ : std_logic;
SIGNAL \HCount[22]~79\ : std_logic;
SIGNAL \HCount[23]~80_combout\ : std_logic;
SIGNAL \HCount[23]~81\ : std_logic;
SIGNAL \HCount[24]~82_combout\ : std_logic;
SIGNAL \HCount[24]~83\ : std_logic;
SIGNAL \HCount[25]~84_combout\ : std_logic;
SIGNAL \HCount[25]~85\ : std_logic;
SIGNAL \HCount[26]~86_combout\ : std_logic;
SIGNAL \HCount[26]~87\ : std_logic;
SIGNAL \HCount[27]~88_combout\ : std_logic;
SIGNAL \HCount[27]~89\ : std_logic;
SIGNAL \HCount[28]~90_combout\ : std_logic;
SIGNAL \HCount[28]~91\ : std_logic;
SIGNAL \HCount[29]~92_combout\ : std_logic;
SIGNAL \HCount[29]~93\ : std_logic;
SIGNAL \HCount[30]~94_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \HCount[30]~95\ : std_logic;
SIGNAL \HCount[31]~96_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \HState~6_combout\ : std_logic;
SIGNAL \HCount~32_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \HCount~33_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \VAddress[10]~17_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \VAddress[11]~18_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \VAddress[12]~19_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \VAddress[13]~20_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \VAddress[14]~21_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \VAddress[15]~22_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \VAddress[16]~23_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \VAddress[17]~24_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \VAddress[18]~25_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \VAddress[19]~26_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \VAddress[20]~27_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \VAddress[21]~28_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \VAddress[22]~29_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \VAddress[23]~30_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \VAddress[24]~31_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \VAddress[25]~32_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \VAddress[26]~13_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \VAddress[27]~14_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \VAddress[28]~15_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \VAddress[29]~16_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \VAddress[30]~33_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~6_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan6~8_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \VAddress~0_combout\ : std_logic;
SIGNAL \VAddress~1_combout\ : std_logic;
SIGNAL \VAddress[13]~3_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \VAddress~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \VAddress~5_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \VAddress~7_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \VAddress[5]~8_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \VAddress[6]~9_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \VAddress[7]~10_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \VAddress[8]~11_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \VAddress[9]~12_combout\ : std_logic;
SIGNAL \LessThan6~10_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \VAddress~6_combout\ : std_logic;
SIGNAL \LessThan6~9_combout\ : std_logic;
SIGNAL \VState~7_combout\ : std_logic;
SIGNAL \LessThan6~7_combout\ : std_logic;
SIGNAL \VAddress~2_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \VAddress[31]~34_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \VState~6_combout\ : std_logic;
SIGNAL \VState~8_combout\ : std_logic;
SIGNAL \VState~9_combout\ : std_logic;
SIGNAL \VState.Display~q\ : std_logic;
SIGNAL \Red_Data[0]~input_o\ : std_logic;
SIGNAL \HState~7_combout\ : std_logic;
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
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \HState~9_combout\ : std_logic;
SIGNAL \HState.H_sync~q\ : std_logic;
SIGNAL \Hsync~reg0feeder_combout\ : std_logic;
SIGNAL \Hsync~reg0_q\ : std_logic;
SIGNAL \VState~10_combout\ : std_logic;
SIGNAL \VState.V_sync~q\ : std_logic;
SIGNAL \Vsync~reg0feeder_combout\ : std_logic;
SIGNAL \Vsync~reg0_q\ : std_logic;
SIGNAL \HAddress[0]~10_combout\ : std_logic;
SIGNAL \Red[0]~5_combout\ : std_logic;
SIGNAL \HAddress[26]~12_combout\ : std_logic;
SIGNAL \H_Address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[0]~reg0_q\ : std_logic;
SIGNAL \HAddress[0]~11\ : std_logic;
SIGNAL \HAddress[1]~13_combout\ : std_logic;
SIGNAL \H_Address[1]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[1]~reg0_q\ : std_logic;
SIGNAL \HAddress[1]~14\ : std_logic;
SIGNAL \HAddress[2]~15_combout\ : std_logic;
SIGNAL \H_Address[2]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[2]~reg0_q\ : std_logic;
SIGNAL \HAddress[2]~16\ : std_logic;
SIGNAL \HAddress[3]~17_combout\ : std_logic;
SIGNAL \H_Address[3]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[3]~reg0_q\ : std_logic;
SIGNAL \HAddress[3]~18\ : std_logic;
SIGNAL \HAddress[4]~19_combout\ : std_logic;
SIGNAL \H_Address[4]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[4]~reg0_q\ : std_logic;
SIGNAL \HAddress[4]~20\ : std_logic;
SIGNAL \HAddress[5]~21_combout\ : std_logic;
SIGNAL \H_Address[5]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[5]~reg0_q\ : std_logic;
SIGNAL \HAddress[5]~22\ : std_logic;
SIGNAL \HAddress[6]~23_combout\ : std_logic;
SIGNAL \H_Address[6]~reg0_q\ : std_logic;
SIGNAL \HAddress[6]~24\ : std_logic;
SIGNAL \HAddress[7]~25_combout\ : std_logic;
SIGNAL \H_Address[7]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[7]~reg0_q\ : std_logic;
SIGNAL \HAddress[7]~26\ : std_logic;
SIGNAL \HAddress[8]~27_combout\ : std_logic;
SIGNAL \H_Address[8]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[8]~reg0_q\ : std_logic;
SIGNAL \HAddress[8]~28\ : std_logic;
SIGNAL \HAddress[9]~29_combout\ : std_logic;
SIGNAL \H_Address[9]~reg0feeder_combout\ : std_logic;
SIGNAL \H_Address[9]~reg0_q\ : std_logic;
SIGNAL \V_Address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[0]~reg0_q\ : std_logic;
SIGNAL \V_Address[1]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[1]~reg0_q\ : std_logic;
SIGNAL \V_Address[2]~reg0_q\ : std_logic;
SIGNAL \V_Address[3]~reg0feeder_combout\ : std_logic;
SIGNAL \V_Address[3]~reg0_q\ : std_logic;
SIGNAL \V_Address[4]~reg0_q\ : std_logic;
SIGNAL \V_Address[5]~reg0_q\ : std_logic;
SIGNAL \V_Address[6]~reg0_q\ : std_logic;
SIGNAL \V_Address[7]~reg0_q\ : std_logic;
SIGNAL \V_Address[8]~reg0_q\ : std_logic;
SIGNAL \V_Address[9]~reg0_q\ : std_logic;
SIGNAL HAddress : std_logic_vector(31 DOWNTO 0);
SIGNAL HCount : std_logic_vector(31 DOWNTO 0);
SIGNAL VAddress : std_logic_vector(31 DOWNTO 0);

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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X53_Y25_N2
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

-- Location: IOOBUF_X16_Y34_N9
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

-- Location: IOOBUF_X20_Y34_N9
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

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X36_Y0_N23
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

-- Location: IOOBUF_X20_Y34_N16
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

-- Location: IOOBUF_X16_Y34_N2
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

-- Location: IOOBUF_X51_Y34_N2
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

-- Location: IOOBUF_X38_Y34_N2
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

-- Location: IOOBUF_X43_Y34_N16
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X51_Y34_N23
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

-- Location: IOOBUF_X47_Y34_N23
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X43_Y34_N23
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X49_Y34_N9
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

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X16_Y34_N16
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

-- Location: IOOBUF_X34_Y34_N16
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X18_Y34_N23
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: IOOBUF_X20_Y34_N23
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

-- Location: IOOBUF_X31_Y34_N9
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

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: LCCOMB_X37_Y30_N0
\HCount[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[0]~34_combout\ = HCount(0) $ (VCC)
-- \HCount[0]~35\ = CARRY(HCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HCount(0),
	datad => VCC,
	combout => \HCount[0]~34_combout\,
	cout => \HCount[0]~35\);

-- Location: FF_X37_Y30_N1
\HCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[0]~34_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(0));

-- Location: LCCOMB_X37_Y30_N2
\HCount[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[1]~36_combout\ = (HCount(1) & (!\HCount[0]~35\)) # (!HCount(1) & ((\HCount[0]~35\) # (GND)))
-- \HCount[1]~37\ = CARRY((!\HCount[0]~35\) # (!HCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(1),
	datad => VCC,
	cin => \HCount[0]~35\,
	combout => \HCount[1]~36_combout\,
	cout => \HCount[1]~37\);

-- Location: FF_X37_Y30_N3
\HCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[1]~36_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(1));

-- Location: LCCOMB_X37_Y30_N4
\HCount[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[2]~38_combout\ = (HCount(2) & (\HCount[1]~37\ $ (GND))) # (!HCount(2) & (!\HCount[1]~37\ & VCC))
-- \HCount[2]~39\ = CARRY((HCount(2) & !\HCount[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(2),
	datad => VCC,
	cin => \HCount[1]~37\,
	combout => \HCount[2]~38_combout\,
	cout => \HCount[2]~39\);

-- Location: FF_X37_Y30_N5
\HCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[2]~38_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(2));

-- Location: LCCOMB_X37_Y30_N6
\HCount[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[3]~40_combout\ = (HCount(3) & (!\HCount[2]~39\)) # (!HCount(3) & ((\HCount[2]~39\) # (GND)))
-- \HCount[3]~41\ = CARRY((!\HCount[2]~39\) # (!HCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(3),
	datad => VCC,
	cin => \HCount[2]~39\,
	combout => \HCount[3]~40_combout\,
	cout => \HCount[3]~41\);

-- Location: FF_X37_Y30_N7
\HCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[3]~40_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(3));

-- Location: LCCOMB_X37_Y30_N8
\HCount[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[4]~42_combout\ = (HCount(4) & (\HCount[3]~41\ $ (GND))) # (!HCount(4) & (!\HCount[3]~41\ & VCC))
-- \HCount[4]~43\ = CARRY((HCount(4) & !\HCount[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(4),
	datad => VCC,
	cin => \HCount[3]~41\,
	combout => \HCount[4]~42_combout\,
	cout => \HCount[4]~43\);

-- Location: FF_X37_Y30_N9
\HCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[4]~42_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(4));

-- Location: LCCOMB_X37_Y30_N10
\HCount[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[5]~44_combout\ = (HCount(5) & (!\HCount[4]~43\)) # (!HCount(5) & ((\HCount[4]~43\) # (GND)))
-- \HCount[5]~45\ = CARRY((!\HCount[4]~43\) # (!HCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(5),
	datad => VCC,
	cin => \HCount[4]~43\,
	combout => \HCount[5]~44_combout\,
	cout => \HCount[5]~45\);

-- Location: FF_X37_Y30_N11
\HCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[5]~44_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(5));

-- Location: LCCOMB_X37_Y30_N12
\HCount[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[6]~46_combout\ = (HCount(6) & (\HCount[5]~45\ $ (GND))) # (!HCount(6) & (!\HCount[5]~45\ & VCC))
-- \HCount[6]~47\ = CARRY((HCount(6) & !\HCount[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(6),
	datad => VCC,
	cin => \HCount[5]~45\,
	combout => \HCount[6]~46_combout\,
	cout => \HCount[6]~47\);

-- Location: FF_X37_Y30_N13
\HCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[6]~46_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(6));

-- Location: LCCOMB_X37_Y30_N14
\HCount[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[7]~48_combout\ = (HCount(7) & (!\HCount[6]~47\)) # (!HCount(7) & ((\HCount[6]~47\) # (GND)))
-- \HCount[7]~49\ = CARRY((!\HCount[6]~47\) # (!HCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(7),
	datad => VCC,
	cin => \HCount[6]~47\,
	combout => \HCount[7]~48_combout\,
	cout => \HCount[7]~49\);

-- Location: FF_X37_Y30_N15
\HCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[7]~48_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(7));

-- Location: LCCOMB_X37_Y30_N16
\HCount[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[8]~50_combout\ = (HCount(8) & (\HCount[7]~49\ $ (GND))) # (!HCount(8) & (!\HCount[7]~49\ & VCC))
-- \HCount[8]~51\ = CARRY((HCount(8) & !\HCount[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(8),
	datad => VCC,
	cin => \HCount[7]~49\,
	combout => \HCount[8]~50_combout\,
	cout => \HCount[8]~51\);

-- Location: FF_X37_Y30_N17
\HCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[8]~50_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(8));

-- Location: LCCOMB_X37_Y30_N18
\HCount[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[9]~52_combout\ = (HCount(9) & (!\HCount[8]~51\)) # (!HCount(9) & ((\HCount[8]~51\) # (GND)))
-- \HCount[9]~53\ = CARRY((!\HCount[8]~51\) # (!HCount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(9),
	datad => VCC,
	cin => \HCount[8]~51\,
	combout => \HCount[9]~52_combout\,
	cout => \HCount[9]~53\);

-- Location: FF_X37_Y30_N19
\HCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[9]~52_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(9));

-- Location: LCCOMB_X37_Y30_N20
\HCount[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[10]~54_combout\ = (HCount(10) & (\HCount[9]~53\ $ (GND))) # (!HCount(10) & (!\HCount[9]~53\ & VCC))
-- \HCount[10]~55\ = CARRY((HCount(10) & !\HCount[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(10),
	datad => VCC,
	cin => \HCount[9]~53\,
	combout => \HCount[10]~54_combout\,
	cout => \HCount[10]~55\);

-- Location: FF_X37_Y30_N21
\HCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[10]~54_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(10));

-- Location: LCCOMB_X37_Y30_N22
\HCount[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[11]~56_combout\ = (HCount(11) & (!\HCount[10]~55\)) # (!HCount(11) & ((\HCount[10]~55\) # (GND)))
-- \HCount[11]~57\ = CARRY((!\HCount[10]~55\) # (!HCount(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(11),
	datad => VCC,
	cin => \HCount[10]~55\,
	combout => \HCount[11]~56_combout\,
	cout => \HCount[11]~57\);

-- Location: FF_X37_Y30_N23
\HCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[11]~56_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(11));

-- Location: LCCOMB_X37_Y30_N24
\HCount[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[12]~58_combout\ = (HCount(12) & (\HCount[11]~57\ $ (GND))) # (!HCount(12) & (!\HCount[11]~57\ & VCC))
-- \HCount[12]~59\ = CARRY((HCount(12) & !\HCount[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(12),
	datad => VCC,
	cin => \HCount[11]~57\,
	combout => \HCount[12]~58_combout\,
	cout => \HCount[12]~59\);

-- Location: FF_X37_Y30_N25
\HCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[12]~58_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(12));

-- Location: LCCOMB_X37_Y30_N26
\HCount[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[13]~60_combout\ = (HCount(13) & (!\HCount[12]~59\)) # (!HCount(13) & ((\HCount[12]~59\) # (GND)))
-- \HCount[13]~61\ = CARRY((!\HCount[12]~59\) # (!HCount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(13),
	datad => VCC,
	cin => \HCount[12]~59\,
	combout => \HCount[13]~60_combout\,
	cout => \HCount[13]~61\);

-- Location: FF_X37_Y30_N27
\HCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[13]~60_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(13));

-- Location: LCCOMB_X37_Y30_N28
\HCount[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[14]~62_combout\ = (HCount(14) & (\HCount[13]~61\ $ (GND))) # (!HCount(14) & (!\HCount[13]~61\ & VCC))
-- \HCount[14]~63\ = CARRY((HCount(14) & !\HCount[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(14),
	datad => VCC,
	cin => \HCount[13]~61\,
	combout => \HCount[14]~62_combout\,
	cout => \HCount[14]~63\);

-- Location: FF_X37_Y30_N29
\HCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[14]~62_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(14));

-- Location: LCCOMB_X37_Y30_N30
\HCount[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[15]~64_combout\ = (HCount(15) & (!\HCount[14]~63\)) # (!HCount(15) & ((\HCount[14]~63\) # (GND)))
-- \HCount[15]~65\ = CARRY((!\HCount[14]~63\) # (!HCount(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(15),
	datad => VCC,
	cin => \HCount[14]~63\,
	combout => \HCount[15]~64_combout\,
	cout => \HCount[15]~65\);

-- Location: FF_X37_Y30_N31
\HCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[15]~64_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(15));

-- Location: LCCOMB_X37_Y29_N0
\HCount[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[16]~66_combout\ = (HCount(16) & (\HCount[15]~65\ $ (GND))) # (!HCount(16) & (!\HCount[15]~65\ & VCC))
-- \HCount[16]~67\ = CARRY((HCount(16) & !\HCount[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(16),
	datad => VCC,
	cin => \HCount[15]~65\,
	combout => \HCount[16]~66_combout\,
	cout => \HCount[16]~67\);

-- Location: FF_X37_Y29_N1
\HCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[16]~66_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(16));

-- Location: LCCOMB_X37_Y29_N2
\HCount[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[17]~68_combout\ = (HCount(17) & (!\HCount[16]~67\)) # (!HCount(17) & ((\HCount[16]~67\) # (GND)))
-- \HCount[17]~69\ = CARRY((!\HCount[16]~67\) # (!HCount(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(17),
	datad => VCC,
	cin => \HCount[16]~67\,
	combout => \HCount[17]~68_combout\,
	cout => \HCount[17]~69\);

-- Location: FF_X37_Y29_N3
\HCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[17]~68_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(17));

-- Location: LCCOMB_X37_Y29_N4
\HCount[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[18]~70_combout\ = (HCount(18) & (\HCount[17]~69\ $ (GND))) # (!HCount(18) & (!\HCount[17]~69\ & VCC))
-- \HCount[18]~71\ = CARRY((HCount(18) & !\HCount[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(18),
	datad => VCC,
	cin => \HCount[17]~69\,
	combout => \HCount[18]~70_combout\,
	cout => \HCount[18]~71\);

-- Location: FF_X37_Y29_N5
\HCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[18]~70_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(18));

-- Location: LCCOMB_X37_Y29_N6
\HCount[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[19]~72_combout\ = (HCount(19) & (!\HCount[18]~71\)) # (!HCount(19) & ((\HCount[18]~71\) # (GND)))
-- \HCount[19]~73\ = CARRY((!\HCount[18]~71\) # (!HCount(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(19),
	datad => VCC,
	cin => \HCount[18]~71\,
	combout => \HCount[19]~72_combout\,
	cout => \HCount[19]~73\);

-- Location: FF_X37_Y29_N7
\HCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[19]~72_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(19));

-- Location: LCCOMB_X37_Y29_N8
\HCount[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[20]~74_combout\ = (HCount(20) & (\HCount[19]~73\ $ (GND))) # (!HCount(20) & (!\HCount[19]~73\ & VCC))
-- \HCount[20]~75\ = CARRY((HCount(20) & !\HCount[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(20),
	datad => VCC,
	cin => \HCount[19]~73\,
	combout => \HCount[20]~74_combout\,
	cout => \HCount[20]~75\);

-- Location: FF_X37_Y29_N9
\HCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[20]~74_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(20));

-- Location: LCCOMB_X37_Y29_N10
\HCount[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[21]~76_combout\ = (HCount(21) & (!\HCount[20]~75\)) # (!HCount(21) & ((\HCount[20]~75\) # (GND)))
-- \HCount[21]~77\ = CARRY((!\HCount[20]~75\) # (!HCount(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(21),
	datad => VCC,
	cin => \HCount[20]~75\,
	combout => \HCount[21]~76_combout\,
	cout => \HCount[21]~77\);

-- Location: FF_X37_Y29_N11
\HCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[21]~76_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(21));

-- Location: LCCOMB_X37_Y29_N12
\HCount[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[22]~78_combout\ = (HCount(22) & (\HCount[21]~77\ $ (GND))) # (!HCount(22) & (!\HCount[21]~77\ & VCC))
-- \HCount[22]~79\ = CARRY((HCount(22) & !\HCount[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(22),
	datad => VCC,
	cin => \HCount[21]~77\,
	combout => \HCount[22]~78_combout\,
	cout => \HCount[22]~79\);

-- Location: FF_X37_Y29_N13
\HCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[22]~78_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(22));

-- Location: LCCOMB_X37_Y29_N14
\HCount[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[23]~80_combout\ = (HCount(23) & (!\HCount[22]~79\)) # (!HCount(23) & ((\HCount[22]~79\) # (GND)))
-- \HCount[23]~81\ = CARRY((!\HCount[22]~79\) # (!HCount(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(23),
	datad => VCC,
	cin => \HCount[22]~79\,
	combout => \HCount[23]~80_combout\,
	cout => \HCount[23]~81\);

-- Location: FF_X37_Y29_N15
\HCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[23]~80_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(23));

-- Location: LCCOMB_X37_Y29_N16
\HCount[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[24]~82_combout\ = (HCount(24) & (\HCount[23]~81\ $ (GND))) # (!HCount(24) & (!\HCount[23]~81\ & VCC))
-- \HCount[24]~83\ = CARRY((HCount(24) & !\HCount[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(24),
	datad => VCC,
	cin => \HCount[23]~81\,
	combout => \HCount[24]~82_combout\,
	cout => \HCount[24]~83\);

-- Location: FF_X37_Y29_N17
\HCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[24]~82_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(24));

-- Location: LCCOMB_X37_Y29_N18
\HCount[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[25]~84_combout\ = (HCount(25) & (!\HCount[24]~83\)) # (!HCount(25) & ((\HCount[24]~83\) # (GND)))
-- \HCount[25]~85\ = CARRY((!\HCount[24]~83\) # (!HCount(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(25),
	datad => VCC,
	cin => \HCount[24]~83\,
	combout => \HCount[25]~84_combout\,
	cout => \HCount[25]~85\);

-- Location: FF_X37_Y29_N19
\HCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[25]~84_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(25));

-- Location: LCCOMB_X37_Y29_N20
\HCount[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[26]~86_combout\ = (HCount(26) & (\HCount[25]~85\ $ (GND))) # (!HCount(26) & (!\HCount[25]~85\ & VCC))
-- \HCount[26]~87\ = CARRY((HCount(26) & !\HCount[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(26),
	datad => VCC,
	cin => \HCount[25]~85\,
	combout => \HCount[26]~86_combout\,
	cout => \HCount[26]~87\);

-- Location: FF_X37_Y29_N21
\HCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[26]~86_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(26));

-- Location: LCCOMB_X37_Y29_N22
\HCount[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[27]~88_combout\ = (HCount(27) & (!\HCount[26]~87\)) # (!HCount(27) & ((\HCount[26]~87\) # (GND)))
-- \HCount[27]~89\ = CARRY((!\HCount[26]~87\) # (!HCount(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(27),
	datad => VCC,
	cin => \HCount[26]~87\,
	combout => \HCount[27]~88_combout\,
	cout => \HCount[27]~89\);

-- Location: FF_X37_Y29_N23
\HCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[27]~88_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(27));

-- Location: LCCOMB_X37_Y29_N24
\HCount[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[28]~90_combout\ = (HCount(28) & (\HCount[27]~89\ $ (GND))) # (!HCount(28) & (!\HCount[27]~89\ & VCC))
-- \HCount[28]~91\ = CARRY((HCount(28) & !\HCount[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(28),
	datad => VCC,
	cin => \HCount[27]~89\,
	combout => \HCount[28]~90_combout\,
	cout => \HCount[28]~91\);

-- Location: FF_X37_Y29_N25
\HCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[28]~90_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(28));

-- Location: LCCOMB_X37_Y29_N26
\HCount[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[29]~92_combout\ = (HCount(29) & (!\HCount[28]~91\)) # (!HCount(29) & ((\HCount[28]~91\) # (GND)))
-- \HCount[29]~93\ = CARRY((!\HCount[28]~91\) # (!HCount(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(29),
	datad => VCC,
	cin => \HCount[28]~91\,
	combout => \HCount[29]~92_combout\,
	cout => \HCount[29]~93\);

-- Location: FF_X37_Y29_N27
\HCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[29]~92_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(29));

-- Location: LCCOMB_X37_Y29_N28
\HCount[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[30]~94_combout\ = (HCount(30) & (\HCount[29]~93\ $ (GND))) # (!HCount(30) & (!\HCount[29]~93\ & VCC))
-- \HCount[30]~95\ = CARRY((HCount(30) & !\HCount[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HCount(30),
	datad => VCC,
	cin => \HCount[29]~93\,
	combout => \HCount[30]~94_combout\,
	cout => \HCount[30]~95\);

-- Location: FF_X37_Y29_N29
\HCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[30]~94_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(30));

-- Location: LCCOMB_X36_Y30_N6
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (HCount(1) & (HCount(0) & (HCount(3) & HCount(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(1),
	datab => HCount(0),
	datac => HCount(3),
	datad => HCount(2),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X36_Y30_N28
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!\LessThan3~0_combout\) # (!HCount(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HCount(4),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X36_Y30_N2
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!HCount(5) & (!HCount(6) & (!HCount(7) & \LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(5),
	datab => HCount(6),
	datac => HCount(7),
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X38_Y29_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!HCount(29) & (!HCount(26) & (!HCount(28) & !HCount(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(29),
	datab => HCount(26),
	datac => HCount(28),
	datad => HCount(27),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y30_N22
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!HCount(13) & (!HCount(11) & (!HCount(12) & !HCount(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(13),
	datab => HCount(11),
	datac => HCount(12),
	datad => HCount(10),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y30_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!HCount(16) & (!HCount(14) & (!HCount(15) & !HCount(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(16),
	datab => HCount(14),
	datac => HCount(15),
	datad => HCount(17),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X38_Y30_N26
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!HCount(25) & (!HCount(23) & (!HCount(22) & !HCount(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(25),
	datab => HCount(23),
	datac => HCount(22),
	datad => HCount(24),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X38_Y29_N2
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!HCount(20) & (!HCount(19) & (!HCount(18) & !HCount(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(20),
	datab => HCount(19),
	datac => HCount(18),
	datad => HCount(21),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X38_Y30_N16
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~1_combout\ & (\LessThan1~2_combout\ & (\LessThan1~4_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X38_Y30_N20
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!HCount(30) & (\LessThan1~0_combout\ & \LessThan1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(30),
	datab => \LessThan1~0_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y30_N8
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\LessThan2~0_combout\ & (((\LessThan3~2_combout\) # (!HCount(9))) # (!HCount(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(8),
	datab => HCount(9),
	datac => \LessThan3~2_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X36_Y30_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (HCount(5) & HCount(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HCount(5),
	datac => HCount(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y30_N16
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!HCount(4) & !\LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HCount(4),
	datad => \LessThan3~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X36_Y30_N10
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!HCount(8) & (((\LessThan2~1_combout\) # (!HCount(7))) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => HCount(8),
	datac => HCount(7),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X37_Y29_N30
\HCount[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount[31]~96_combout\ = HCount(31) $ (\HCount[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HCount(31),
	cin => \HCount[30]~95\,
	combout => \HCount[31]~96_combout\);

-- Location: FF_X37_Y29_N31
\HCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HCount[31]~96_combout\,
	sclr => \HCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HCount(31));

-- Location: LCCOMB_X36_Y30_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!HCount(7) & (!HCount(8) & ((\LessThan3~1_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(7),
	datab => HCount(8),
	datac => \LessThan0~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y30_N6
\HState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~6_combout\ = (!HCount(31) & (((HCount(9) & !\LessThan0~1_combout\)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(31),
	datab => HCount(9),
	datac => \LessThan0~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \HState~6_combout\);

-- Location: LCCOMB_X38_Y30_N14
\HCount~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount~32_combout\ = ((\LessThan2~0_combout\ & ((\LessThan2~2_combout\) # (!HCount(9))))) # (!\HState~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(9),
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~2_combout\,
	datad => \HState~6_combout\,
	combout => \HCount~32_combout\);

-- Location: LCCOMB_X38_Y30_N18
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!HCount(5) & (!HCount(6) & (!HCount(8) & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(5),
	datab => HCount(6),
	datac => HCount(8),
	datad => \LessThan2~1_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X38_Y30_N28
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (HCount(9) & (!\LessThan1~6_combout\ & ((HCount(7)) # (HCount(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(7),
	datab => HCount(9),
	datac => HCount(8),
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X38_Y30_N24
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~0_combout\ & (\LessThan1~5_combout\ & !\LessThan1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X38_Y30_N12
\HCount~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCount~33_combout\ = (!\LessThan3~3_combout\ & (!\HCount~32_combout\ & ((HCount(30)) # (!\LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HCount(30),
	datab => \LessThan3~3_combout\,
	datac => \HCount~32_combout\,
	datad => \LessThan1~8_combout\,
	combout => \HCount~33_combout\);

-- Location: LCCOMB_X31_Y31_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = VAddress(0) $ (VCC)
-- \Add2~1\ = CARRY(VAddress(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X31_Y31_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (VAddress(9) & (!\Add2~17\)) # (!VAddress(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!VAddress(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X31_Y31_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (VAddress(10) & (\Add2~19\ $ (GND))) # (!VAddress(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((VAddress(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X30_Y30_N4
\VAddress[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[10]~17_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~20_combout\)) # (!\HCount~33_combout\ & ((VAddress(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(10),
	datad => \HCount~33_combout\,
	combout => \VAddress[10]~17_combout\);

-- Location: FF_X30_Y30_N5
\VAddress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(10));

-- Location: LCCOMB_X31_Y31_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (VAddress(11) & (!\Add2~21\)) # (!VAddress(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!VAddress(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X30_Y30_N10
\VAddress[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[11]~18_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~22_combout\)) # (!\HCount~33_combout\ & ((VAddress(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(11),
	datad => \HCount~33_combout\,
	combout => \VAddress[11]~18_combout\);

-- Location: FF_X30_Y30_N11
\VAddress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(11));

-- Location: LCCOMB_X31_Y31_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (VAddress(12) & (\Add2~23\ $ (GND))) # (!VAddress(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((VAddress(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X30_Y30_N12
\VAddress[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[12]~19_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~24_combout\)) # (!\HCount~33_combout\ & ((VAddress(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(12),
	datad => \HCount~33_combout\,
	combout => \VAddress[12]~19_combout\);

-- Location: FF_X30_Y30_N13
\VAddress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(12));

-- Location: LCCOMB_X31_Y31_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (VAddress(13) & (!\Add2~25\)) # (!VAddress(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!VAddress(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X30_Y30_N26
\VAddress[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[13]~20_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~26_combout\)) # (!\HCount~33_combout\ & ((VAddress(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(13),
	datad => \HCount~33_combout\,
	combout => \VAddress[13]~20_combout\);

-- Location: FF_X30_Y30_N27
\VAddress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[13]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(13));

-- Location: LCCOMB_X31_Y31_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (VAddress(14) & (\Add2~27\ $ (GND))) # (!VAddress(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((VAddress(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X30_Y30_N18
\VAddress[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[14]~21_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~28_combout\)) # (!\HCount~33_combout\ & ((VAddress(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(14),
	datad => \HCount~33_combout\,
	combout => \VAddress[14]~21_combout\);

-- Location: FF_X30_Y30_N19
\VAddress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(14));

-- Location: LCCOMB_X31_Y31_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (VAddress(15) & (!\Add2~29\)) # (!VAddress(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!VAddress(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X30_Y30_N0
\VAddress[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[15]~22_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~30_combout\)) # (!\HCount~33_combout\ & ((VAddress(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VAddress~2_combout\,
	datab => \Add2~30_combout\,
	datac => VAddress(15),
	datad => \HCount~33_combout\,
	combout => \VAddress[15]~22_combout\);

-- Location: FF_X30_Y30_N1
\VAddress[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(15));

-- Location: LCCOMB_X31_Y30_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (VAddress(16) & (\Add2~31\ $ (GND))) # (!VAddress(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((VAddress(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X30_Y30_N30
\VAddress[16]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[16]~23_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~32_combout\)) # (!\HCount~33_combout\ & ((VAddress(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VAddress~2_combout\,
	datab => \Add2~32_combout\,
	datac => VAddress(16),
	datad => \HCount~33_combout\,
	combout => \VAddress[16]~23_combout\);

-- Location: FF_X30_Y30_N31
\VAddress[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(16));

-- Location: LCCOMB_X31_Y30_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (VAddress(17) & (!\Add2~33\)) # (!VAddress(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!VAddress(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X30_Y30_N28
\VAddress[17]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[17]~24_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~34_combout\)) # (!\HCount~33_combout\ & ((VAddress(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(17),
	datad => \HCount~33_combout\,
	combout => \VAddress[17]~24_combout\);

-- Location: FF_X30_Y30_N29
\VAddress[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[17]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(17));

-- Location: LCCOMB_X31_Y30_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (VAddress(18) & (\Add2~35\ $ (GND))) # (!VAddress(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((VAddress(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X32_Y30_N24
\VAddress[18]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[18]~25_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~36_combout\)) # (!\HCount~33_combout\ & ((VAddress(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VAddress~2_combout\,
	datab => \Add2~36_combout\,
	datac => VAddress(18),
	datad => \HCount~33_combout\,
	combout => \VAddress[18]~25_combout\);

-- Location: FF_X32_Y30_N25
\VAddress[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[18]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(18));

-- Location: LCCOMB_X31_Y30_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (VAddress(19) & (!\Add2~37\)) # (!VAddress(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!VAddress(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X32_Y30_N2
\VAddress[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[19]~26_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~38_combout\)) # (!\HCount~33_combout\ & ((VAddress(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(19),
	datad => \HCount~33_combout\,
	combout => \VAddress[19]~26_combout\);

-- Location: FF_X32_Y30_N3
\VAddress[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(19));

-- Location: LCCOMB_X31_Y30_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (VAddress(20) & (\Add2~39\ $ (GND))) # (!VAddress(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((VAddress(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X32_Y30_N12
\VAddress[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[20]~27_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~40_combout\)) # (!\HCount~33_combout\ & ((VAddress(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(20),
	datad => \HCount~33_combout\,
	combout => \VAddress[20]~27_combout\);

-- Location: FF_X32_Y30_N13
\VAddress[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[20]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(20));

-- Location: LCCOMB_X31_Y30_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (VAddress(21) & (!\Add2~41\)) # (!VAddress(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!VAddress(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X32_Y30_N14
\VAddress[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[21]~28_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~42_combout\)) # (!\HCount~33_combout\ & ((VAddress(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(21),
	datad => \HCount~33_combout\,
	combout => \VAddress[21]~28_combout\);

-- Location: FF_X32_Y30_N15
\VAddress[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(21));

-- Location: LCCOMB_X31_Y30_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (VAddress(22) & (\Add2~43\ $ (GND))) # (!VAddress(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((VAddress(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X32_Y30_N22
\VAddress[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[22]~29_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~44_combout\)) # (!\HCount~33_combout\ & ((VAddress(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(22),
	datad => \HCount~33_combout\,
	combout => \VAddress[22]~29_combout\);

-- Location: FF_X32_Y30_N23
\VAddress[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(22));

-- Location: LCCOMB_X31_Y30_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (VAddress(23) & (!\Add2~45\)) # (!VAddress(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!VAddress(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X32_Y30_N16
\VAddress[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[23]~30_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~46_combout\)) # (!\HCount~33_combout\ & ((VAddress(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(23),
	datad => \HCount~33_combout\,
	combout => \VAddress[23]~30_combout\);

-- Location: FF_X32_Y30_N17
\VAddress[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[23]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(23));

-- Location: LCCOMB_X31_Y30_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (VAddress(24) & (\Add2~47\ $ (GND))) # (!VAddress(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((VAddress(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X32_Y30_N26
\VAddress[24]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[24]~31_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~48_combout\)) # (!\HCount~33_combout\ & ((VAddress(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(24),
	datad => \HCount~33_combout\,
	combout => \VAddress[24]~31_combout\);

-- Location: FF_X32_Y30_N27
\VAddress[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[24]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(24));

-- Location: LCCOMB_X31_Y30_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (VAddress(25) & (!\Add2~49\)) # (!VAddress(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!VAddress(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X32_Y30_N28
\VAddress[25]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[25]~32_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & ((\Add2~50_combout\))) # (!\HCount~33_combout\ & (VAddress(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~33_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(25),
	datad => \Add2~50_combout\,
	combout => \VAddress[25]~32_combout\);

-- Location: FF_X32_Y30_N29
\VAddress[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(25));

-- Location: LCCOMB_X31_Y30_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (VAddress(26) & (\Add2~51\ $ (GND))) # (!VAddress(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((VAddress(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X32_Y30_N18
\VAddress[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[26]~13_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & ((\Add2~52_combout\))) # (!\HCount~33_combout\ & (VAddress(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~33_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(26),
	datad => \Add2~52_combout\,
	combout => \VAddress[26]~13_combout\);

-- Location: FF_X32_Y30_N19
\VAddress[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(26));

-- Location: LCCOMB_X31_Y30_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (VAddress(27) & (!\Add2~53\)) # (!VAddress(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!VAddress(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X32_Y30_N4
\VAddress[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[27]~14_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & ((\Add2~54_combout\))) # (!\HCount~33_combout\ & (VAddress(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~33_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(27),
	datad => \Add2~54_combout\,
	combout => \VAddress[27]~14_combout\);

-- Location: FF_X32_Y30_N5
\VAddress[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[27]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(27));

-- Location: LCCOMB_X31_Y30_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (VAddress(28) & (\Add2~55\ $ (GND))) # (!VAddress(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((VAddress(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X32_Y30_N30
\VAddress[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[28]~15_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & ((\Add2~56_combout\))) # (!\HCount~33_combout\ & (VAddress(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~33_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(28),
	datad => \Add2~56_combout\,
	combout => \VAddress[28]~15_combout\);

-- Location: FF_X32_Y30_N31
\VAddress[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(28));

-- Location: LCCOMB_X31_Y30_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (VAddress(29) & (!\Add2~57\)) # (!VAddress(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!VAddress(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X32_Y30_N8
\VAddress[29]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[29]~16_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~58_combout\)) # (!\HCount~33_combout\ & ((VAddress(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~58_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(29),
	datad => \HCount~33_combout\,
	combout => \VAddress[29]~16_combout\);

-- Location: FF_X32_Y30_N9
\VAddress[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[29]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(29));

-- Location: LCCOMB_X31_Y30_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (VAddress(30) & (\Add2~59\ $ (GND))) # (!VAddress(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((VAddress(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X34_Y30_N14
\VAddress[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[30]~33_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & ((\Add2~60_combout\))) # (!\HCount~33_combout\ & (VAddress(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VAddress~2_combout\,
	datab => \HCount~33_combout\,
	datac => VAddress(30),
	datad => \Add2~60_combout\,
	combout => \VAddress[30]~33_combout\);

-- Location: FF_X34_Y30_N15
\VAddress[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[30]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(30));

-- Location: LCCOMB_X35_Y30_N22
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!VAddress(4) & (!VAddress(5) & ((!VAddress(2)) # (!VAddress(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(3),
	datab => VAddress(2),
	datac => VAddress(4),
	datad => VAddress(5),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X34_Y30_N22
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!VAddress(7) & (!VAddress(6) & (!VAddress(8) & \LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(7),
	datab => VAddress(6),
	datac => VAddress(8),
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y30_N20
\LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (!VAddress(20) & (!VAddress(19) & (!VAddress(21) & !VAddress(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(20),
	datab => VAddress(19),
	datac => VAddress(21),
	datad => VAddress(18),
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X32_Y30_N10
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!VAddress(28) & (!VAddress(29) & (!VAddress(27) & !VAddress(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(28),
	datab => VAddress(29),
	datac => VAddress(27),
	datad => VAddress(26),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X32_Y30_N6
\LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = (!VAddress(24) & (!VAddress(25) & (!VAddress(22) & !VAddress(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(24),
	datab => VAddress(25),
	datac => VAddress(22),
	datad => VAddress(23),
	combout => \LessThan6~5_combout\);

-- Location: LCCOMB_X30_Y30_N8
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!VAddress(12) & (!VAddress(10) & (!VAddress(13) & !VAddress(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(12),
	datab => VAddress(10),
	datac => VAddress(13),
	datad => VAddress(11),
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X30_Y30_N24
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!VAddress(15) & !VAddress(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VAddress(15),
	datad => VAddress(14),
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X30_Y30_N14
\LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (!VAddress(16) & (!VAddress(17) & (\LessThan6~1_combout\ & \LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(16),
	datab => VAddress(17),
	datac => \LessThan6~1_combout\,
	datad => \LessThan6~2_combout\,
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X34_Y30_N20
\LessThan6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~6_combout\ = (\LessThan6~4_combout\ & (\LessThan6~0_combout\ & (\LessThan6~5_combout\ & \LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~4_combout\,
	datab => \LessThan6~0_combout\,
	datac => \LessThan6~5_combout\,
	datad => \LessThan6~3_combout\,
	combout => \LessThan6~6_combout\);

-- Location: LCCOMB_X34_Y30_N4
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (!VAddress(30) & (\LessThan6~6_combout\ & ((\LessThan7~1_combout\) # (!VAddress(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => VAddress(30),
	datac => VAddress(9),
	datad => \LessThan6~6_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X34_Y30_N28
\LessThan6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~8_combout\ = (VAddress(8) & (VAddress(6) & (VAddress(5) & VAddress(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(8),
	datab => VAddress(6),
	datac => VAddress(5),
	datad => VAddress(7),
	combout => \LessThan6~8_combout\);

-- Location: LCCOMB_X35_Y30_N8
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ((!VAddress(1) & (!VAddress(0) & !VAddress(2)))) # (!VAddress(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(3),
	datab => VAddress(1),
	datac => VAddress(0),
	datad => VAddress(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X35_Y30_N20
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (!VAddress(4) & \LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(4),
	datab => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X34_Y30_N10
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!VAddress(9) & (\LessThan6~6_combout\ & ((\LessThan5~1_combout\) # (!\LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(9),
	datab => \LessThan6~8_combout\,
	datac => \LessThan5~1_combout\,
	datad => \LessThan6~6_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X34_Y30_N0
\VAddress~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~0_combout\ = (\LessThan7~2_combout\) # ((!VAddress(30) & \LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VAddress(30),
	datac => \LessThan7~2_combout\,
	datad => \LessThan5~2_combout\,
	combout => \VAddress~0_combout\);

-- Location: LCCOMB_X35_Y30_N12
\VAddress~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~1_combout\ = (\Add2~0_combout\ & ((\LessThan6~10_combout\) # ((\VAddress~0_combout\) # (!\VState~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~10_combout\,
	datab => \Add2~0_combout\,
	datac => \VState~6_combout\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~1_combout\);

-- Location: LCCOMB_X35_Y30_N16
\VAddress[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[13]~3_combout\ = (\HCount~33_combout\) # (!\VAddress~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VAddress~2_combout\,
	datad => \HCount~33_combout\,
	combout => \VAddress[13]~3_combout\);

-- Location: FF_X35_Y30_N13
\VAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~1_combout\,
	ena => \VAddress[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(0));

-- Location: LCCOMB_X31_Y31_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (VAddress(1) & (!\Add2~1\)) # (!VAddress(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!VAddress(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X35_Y30_N0
\VAddress~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~4_combout\ = (\Add2~2_combout\ & ((\LessThan6~10_combout\) # ((\VAddress~0_combout\) # (!\VState~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~10_combout\,
	datab => \Add2~2_combout\,
	datac => \VState~6_combout\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~4_combout\);

-- Location: FF_X35_Y30_N1
\VAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~4_combout\,
	ena => \VAddress[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(1));

-- Location: LCCOMB_X31_Y31_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (VAddress(2) & (\Add2~3\ $ (GND))) # (!VAddress(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((VAddress(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X35_Y30_N28
\VAddress~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~5_combout\ = (\Add2~4_combout\ & ((\LessThan6~10_combout\) # ((\VAddress~0_combout\) # (!\VState~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~10_combout\,
	datab => \Add2~4_combout\,
	datac => \VState~6_combout\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~5_combout\);

-- Location: FF_X35_Y30_N29
\VAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~5_combout\,
	ena => \VAddress[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(2));

-- Location: LCCOMB_X31_Y31_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (VAddress(3) & (!\Add2~5\)) # (!VAddress(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!VAddress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X31_Y31_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (VAddress(4) & (\Add2~7\ $ (GND))) # (!VAddress(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((VAddress(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X35_Y30_N18
\VAddress~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~7_combout\ = (\Add2~8_combout\ & ((\LessThan6~10_combout\) # ((\VAddress~0_combout\) # (!\VState~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~10_combout\,
	datab => \Add2~8_combout\,
	datac => \VState~6_combout\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~7_combout\);

-- Location: FF_X35_Y30_N19
\VAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~7_combout\,
	ena => \VAddress[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(4));

-- Location: LCCOMB_X31_Y31_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (VAddress(5) & (!\Add2~9\)) # (!VAddress(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!VAddress(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X30_Y30_N6
\VAddress[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[5]~8_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~10_combout\)) # (!\HCount~33_combout\ & ((VAddress(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(5),
	datad => \HCount~33_combout\,
	combout => \VAddress[5]~8_combout\);

-- Location: FF_X30_Y30_N7
\VAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(5));

-- Location: LCCOMB_X31_Y31_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (VAddress(6) & (\Add2~11\ $ (GND))) # (!VAddress(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((VAddress(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X35_Y30_N26
\VAddress[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[6]~9_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~12_combout\)) # (!\HCount~33_combout\ & ((VAddress(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(6),
	datad => \HCount~33_combout\,
	combout => \VAddress[6]~9_combout\);

-- Location: FF_X35_Y30_N27
\VAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(6));

-- Location: LCCOMB_X31_Y31_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (VAddress(7) & (!\Add2~13\)) # (!VAddress(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!VAddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X30_Y30_N20
\VAddress[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[7]~10_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~14_combout\)) # (!\HCount~33_combout\ & ((VAddress(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VAddress~2_combout\,
	datab => \Add2~14_combout\,
	datac => VAddress(7),
	datad => \HCount~33_combout\,
	combout => \VAddress[7]~10_combout\);

-- Location: FF_X30_Y30_N21
\VAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(7));

-- Location: LCCOMB_X31_Y31_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (VAddress(8) & (\Add2~15\ $ (GND))) # (!VAddress(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((VAddress(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAddress(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X32_Y30_N0
\VAddress[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[8]~11_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~16_combout\)) # (!\HCount~33_combout\ & ((VAddress(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(8),
	datad => \HCount~33_combout\,
	combout => \VAddress[8]~11_combout\);

-- Location: FF_X32_Y30_N1
\VAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(8));

-- Location: LCCOMB_X30_Y30_N22
\VAddress[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[9]~12_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & (\Add2~18_combout\)) # (!\HCount~33_combout\ & ((VAddress(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VAddress~2_combout\,
	datab => \Add2~18_combout\,
	datac => VAddress(9),
	datad => \HCount~33_combout\,
	combout => \VAddress[9]~12_combout\);

-- Location: FF_X30_Y30_N23
\VAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(9));

-- Location: LCCOMB_X34_Y30_N16
\LessThan6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~10_combout\ = (!VAddress(9) & (\LessThan6~6_combout\ & (!VAddress(30) & !\VState~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(9),
	datab => \LessThan6~6_combout\,
	datac => VAddress(30),
	datad => \VState~7_combout\,
	combout => \LessThan6~10_combout\);

-- Location: LCCOMB_X35_Y30_N10
\VAddress~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~6_combout\ = (\Add2~6_combout\ & ((\LessThan6~10_combout\) # ((\VAddress~0_combout\) # (!\VState~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~10_combout\,
	datab => \Add2~6_combout\,
	datac => \VState~6_combout\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~6_combout\);

-- Location: FF_X35_Y30_N11
\VAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress~6_combout\,
	ena => \VAddress[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(3));

-- Location: LCCOMB_X35_Y30_N30
\LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~9_combout\ = (!VAddress(4) & (!VAddress(2) & ((!VAddress(1)) # (!VAddress(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(4),
	datab => VAddress(2),
	datac => VAddress(0),
	datad => VAddress(1),
	combout => \LessThan6~9_combout\);

-- Location: LCCOMB_X34_Y30_N12
\VState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~7_combout\ = (!\LessThan6~9_combout\ & (\LessThan6~8_combout\ & ((VAddress(3)) # (VAddress(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(3),
	datab => VAddress(4),
	datac => \LessThan6~9_combout\,
	datad => \LessThan6~8_combout\,
	combout => \VState~7_combout\);

-- Location: LCCOMB_X34_Y30_N24
\LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~7_combout\ = (!VAddress(9) & (!VAddress(30) & \LessThan6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(9),
	datac => VAddress(30),
	datad => \LessThan6~6_combout\,
	combout => \LessThan6~7_combout\);

-- Location: LCCOMB_X34_Y30_N6
\VAddress~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress~2_combout\ = ((\VAddress~0_combout\) # ((!\VState~7_combout\ & \LessThan6~7_combout\))) # (!\VState~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VState~7_combout\,
	datab => \LessThan6~7_combout\,
	datac => \VState~6_combout\,
	datad => \VAddress~0_combout\,
	combout => \VAddress~2_combout\);

-- Location: LCCOMB_X31_Y30_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = VAddress(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X30_Y30_N16
\VAddress[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAddress[31]~34_combout\ = (\VAddress~2_combout\ & ((\HCount~33_combout\ & ((\Add2~62_combout\))) # (!\HCount~33_combout\ & (VAddress(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCount~33_combout\,
	datab => \VAddress~2_combout\,
	datac => VAddress(31),
	datad => \Add2~62_combout\,
	combout => \VAddress[31]~34_combout\);

-- Location: FF_X30_Y30_N17
\VAddress[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VAddress[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAddress(31));

-- Location: LCCOMB_X35_Y30_N2
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (((!VAddress(2)) # (!VAddress(0))) # (!VAddress(1))) # (!VAddress(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAddress(3),
	datab => VAddress(1),
	datac => VAddress(0),
	datad => VAddress(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X34_Y30_N18
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (VAddress(6) & (VAddress(8) & VAddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VAddress(6),
	datac => VAddress(8),
	datad => VAddress(7),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X34_Y30_N8
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ((!VAddress(5) & ((\LessThan4~0_combout\) # (!VAddress(4))))) # (!\LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => VAddress(4),
	datac => VAddress(5),
	datad => \LessThan4~1_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X34_Y30_N26
\VState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~6_combout\ = (!VAddress(31) & ((!\LessThan6~7_combout\) # (!\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VAddress(31),
	datac => \LessThan4~2_combout\,
	datad => \LessThan6~7_combout\,
	combout => \VState~6_combout\);

-- Location: LCCOMB_X34_Y30_N2
\VState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~8_combout\ = (VAddress(31)) # ((\LessThan6~7_combout\ & ((\LessThan5~1_combout\) # (!\VState~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VState~7_combout\,
	datab => VAddress(31),
	datac => \LessThan5~1_combout\,
	datad => \LessThan6~7_combout\,
	combout => \VState~8_combout\);

-- Location: LCCOMB_X34_Y30_N30
\VState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~9_combout\ = (\VState~8_combout\ & (\VState~6_combout\)) # (!\VState~8_combout\ & (((\LessThan7~2_combout\) # (VAddress(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VState~6_combout\,
	datab => \LessThan7~2_combout\,
	datac => VAddress(31),
	datad => \VState~8_combout\,
	combout => \VState~9_combout\);

-- Location: FF_X34_Y30_N31
\VState.Display\ : dffeas
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
	q => \VState.Display~q\);

-- Location: IOIBUF_X53_Y26_N22
\Red_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Red_Data(0),
	o => \Red_Data[0]~input_o\);

-- Location: LCCOMB_X38_Y30_N30
\HState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~7_combout\ = (\LessThan2~0_combout\ & ((\LessThan2~2_combout\) # ((\LessThan0~1_combout\) # (!\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan1~7_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \HState~7_combout\);

-- Location: LCCOMB_X38_Y30_N2
\HState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~8_combout\ = (\HState~7_combout\ & (((\HState~6_combout\)))) # (!\HState~7_combout\ & ((HCount(31) & ((\HState~6_combout\))) # (!HCount(31) & (\LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState~7_combout\,
	datab => \LessThan3~3_combout\,
	datac => \HState~6_combout\,
	datad => HCount(31),
	combout => \HState~8_combout\);

-- Location: FF_X38_Y30_N3
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

-- Location: LCCOMB_X29_Y30_N8
\Red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red~2_combout\ = (!\VState.Display~q\ & (\Red_Data[0]~input_o\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VState.Display~q\,
	datac => \Red_Data[0]~input_o\,
	datad => \HState.Display~q\,
	combout => \Red~2_combout\);

-- Location: FF_X29_Y30_N9
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

-- Location: IOIBUF_X14_Y34_N22
\Red_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Red_Data(1),
	o => \Red_Data[1]~input_o\);

-- Location: LCCOMB_X29_Y30_N30
\Red~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red~3_combout\ = (\Red_Data[1]~input_o\ & (!\VState.Display~q\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Red_Data[1]~input_o\,
	datac => \VState.Display~q\,
	datad => \HState.Display~q\,
	combout => \Red~3_combout\);

-- Location: FF_X29_Y30_N31
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

-- Location: IOIBUF_X23_Y34_N15
\Red_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Red_Data(2),
	o => \Red_Data[2]~input_o\);

-- Location: LCCOMB_X29_Y30_N0
\Red~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red~4_combout\ = (\Red_Data[2]~input_o\ & (!\VState.Display~q\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Red_Data[2]~input_o\,
	datac => \VState.Display~q\,
	datad => \HState.Display~q\,
	combout => \Red~4_combout\);

-- Location: FF_X29_Y30_N1
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

-- Location: IOIBUF_X23_Y34_N22
\Green_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Green_Data(0),
	o => \Green_Data[0]~input_o\);

-- Location: LCCOMB_X29_Y30_N22
\Green~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Green~0_combout\ = (\Green_Data[0]~input_o\ & (!\VState.Display~q\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Green_Data[0]~input_o\,
	datac => \VState.Display~q\,
	datad => \HState.Display~q\,
	combout => \Green~0_combout\);

-- Location: FF_X29_Y30_N23
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

-- Location: IOIBUF_X45_Y34_N1
\Green_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Green_Data(1),
	o => \Green_Data[1]~input_o\);

-- Location: LCCOMB_X36_Y30_N20
\Green~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Green~1_combout\ = (!\HState.Display~q\ & (\Green_Data[1]~input_o\ & !\VState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState.Display~q\,
	datac => \Green_Data[1]~input_o\,
	datad => \VState.Display~q\,
	combout => \Green~1_combout\);

-- Location: FF_X36_Y30_N21
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

-- Location: IOIBUF_X53_Y30_N1
\Green_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Green_Data(2),
	o => \Green_Data[2]~input_o\);

-- Location: LCCOMB_X36_Y30_N26
\Green~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Green~2_combout\ = (!\HState.Display~q\ & (!\VState.Display~q\ & \Green_Data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState.Display~q\,
	datab => \VState.Display~q\,
	datac => \Green_Data[2]~input_o\,
	combout => \Green~2_combout\);

-- Location: FF_X36_Y30_N27
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

-- Location: IOIBUF_X40_Y34_N8
\Blue_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Blue_Data(0),
	o => \Blue_Data[0]~input_o\);

-- Location: LCCOMB_X36_Y30_N8
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

-- Location: FF_X36_Y30_N9
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

-- Location: IOIBUF_X51_Y34_N8
\Blue_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Blue_Data(1),
	o => \Blue_Data[1]~input_o\);

-- Location: LCCOMB_X29_Y30_N24
\Blue~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Blue~1_combout\ = (!\HState.Display~q\ & (!\VState.Display~q\ & \Blue_Data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HState.Display~q\,
	datac => \VState.Display~q\,
	datad => \Blue_Data[1]~input_o\,
	combout => \Blue~1_combout\);

-- Location: FF_X29_Y30_N25
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

-- Location: LCCOMB_X36_Y30_N12
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\LessThan2~0_combout\ & ((\LessThan2~2_combout\) # (!HCount(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datac => \LessThan2~0_combout\,
	datad => HCount(9),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X38_Y30_N0
\HState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HState~9_combout\ = (\LessThan2~3_combout\ & (\HState~6_combout\ & !\LessThan1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datac => \HState~6_combout\,
	datad => \LessThan1~8_combout\,
	combout => \HState~9_combout\);

-- Location: FF_X38_Y30_N1
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

-- Location: LCCOMB_X45_Y30_N24
\Hsync~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hsync~reg0feeder_combout\ = \HState.H_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HState.H_sync~q\,
	combout => \Hsync~reg0feeder_combout\);

-- Location: FF_X45_Y30_N25
\Hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Hsync~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hsync~reg0_q\);

-- Location: LCCOMB_X35_Y30_N6
\VState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VState~10_combout\ = (\VState~6_combout\ & (\LessThan6~10_combout\ & !\LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VState~6_combout\,
	datac => \LessThan6~10_combout\,
	datad => \LessThan5~2_combout\,
	combout => \VState~10_combout\);

-- Location: FF_X35_Y30_N7
\VState.V_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \VState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VState.V_sync~q\);

-- Location: LCCOMB_X35_Y30_N4
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

-- Location: FF_X35_Y30_N5
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

-- Location: LCCOMB_X39_Y30_N4
\HAddress[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[0]~10_combout\ = HAddress(0) $ (VCC)
-- \HAddress[0]~11\ = CARRY(HAddress(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HAddress(0),
	datad => VCC,
	combout => \HAddress[0]~10_combout\,
	cout => \HAddress[0]~11\);

-- Location: LCCOMB_X36_Y30_N14
\Red[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Red[0]~5_combout\ = (\HState.Display~q\) # (\VState.Display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HState.Display~q\,
	datad => \VState.Display~q\,
	combout => \Red[0]~5_combout\);

-- Location: LCCOMB_X38_Y30_N10
\HAddress[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[26]~12_combout\ = (\HCount~33_combout\) # ((!\VState.Display~q\ & !\HState.Display~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VState.Display~q\,
	datac => \HState.Display~q\,
	datad => \HCount~33_combout\,
	combout => \HAddress[26]~12_combout\);

-- Location: FF_X38_Y30_N21
\HAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \HAddress[0]~10_combout\,
	sclr => \Red[0]~5_combout\,
	sload => VCC,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(0));

-- Location: LCCOMB_X39_Y30_N0
\H_Address[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[0]~reg0feeder_combout\ = HAddress(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HAddress(0),
	combout => \H_Address[0]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N1
\H_Address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \H_Address[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[0]~reg0_q\);

-- Location: LCCOMB_X39_Y30_N6
\HAddress[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[1]~13_combout\ = (HAddress(1) & (!\HAddress[0]~11\)) # (!HAddress(1) & ((\HAddress[0]~11\) # (GND)))
-- \HAddress[1]~14\ = CARRY((!\HAddress[0]~11\) # (!HAddress(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HAddress(1),
	datad => VCC,
	cin => \HAddress[0]~11\,
	combout => \HAddress[1]~13_combout\,
	cout => \HAddress[1]~14\);

-- Location: FF_X39_Y30_N7
\HAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[1]~13_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(1));

-- Location: LCCOMB_X43_Y30_N24
\H_Address[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[1]~reg0feeder_combout\ = HAddress(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(1),
	combout => \H_Address[1]~reg0feeder_combout\);

-- Location: FF_X43_Y30_N25
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

-- Location: LCCOMB_X39_Y30_N8
\HAddress[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[2]~15_combout\ = (HAddress(2) & (\HAddress[1]~14\ $ (GND))) # (!HAddress(2) & (!\HAddress[1]~14\ & VCC))
-- \HAddress[2]~16\ = CARRY((HAddress(2) & !\HAddress[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HAddress(2),
	datad => VCC,
	cin => \HAddress[1]~14\,
	combout => \HAddress[2]~15_combout\,
	cout => \HAddress[2]~16\);

-- Location: FF_X39_Y30_N9
\HAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[2]~15_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(2));

-- Location: LCCOMB_X43_Y30_N2
\H_Address[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[2]~reg0feeder_combout\ = HAddress(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(2),
	combout => \H_Address[2]~reg0feeder_combout\);

-- Location: FF_X43_Y30_N3
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

-- Location: LCCOMB_X39_Y30_N10
\HAddress[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[3]~17_combout\ = (HAddress(3) & (!\HAddress[2]~16\)) # (!HAddress(3) & ((\HAddress[2]~16\) # (GND)))
-- \HAddress[3]~18\ = CARRY((!\HAddress[2]~16\) # (!HAddress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HAddress(3),
	datad => VCC,
	cin => \HAddress[2]~16\,
	combout => \HAddress[3]~17_combout\,
	cout => \HAddress[3]~18\);

-- Location: FF_X39_Y30_N11
\HAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[3]~17_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(3));

-- Location: LCCOMB_X43_Y30_N12
\H_Address[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[3]~reg0feeder_combout\ = HAddress(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(3),
	combout => \H_Address[3]~reg0feeder_combout\);

-- Location: FF_X43_Y30_N13
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

-- Location: LCCOMB_X39_Y30_N12
\HAddress[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[4]~19_combout\ = (HAddress(4) & (\HAddress[3]~18\ $ (GND))) # (!HAddress(4) & (!\HAddress[3]~18\ & VCC))
-- \HAddress[4]~20\ = CARRY((HAddress(4) & !\HAddress[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HAddress(4),
	datad => VCC,
	cin => \HAddress[3]~18\,
	combout => \HAddress[4]~19_combout\,
	cout => \HAddress[4]~20\);

-- Location: FF_X39_Y30_N13
\HAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[4]~19_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(4));

-- Location: LCCOMB_X43_Y30_N10
\H_Address[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[4]~reg0feeder_combout\ = HAddress(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(4),
	combout => \H_Address[4]~reg0feeder_combout\);

-- Location: FF_X43_Y30_N11
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

-- Location: LCCOMB_X39_Y30_N14
\HAddress[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[5]~21_combout\ = (HAddress(5) & (!\HAddress[4]~20\)) # (!HAddress(5) & ((\HAddress[4]~20\) # (GND)))
-- \HAddress[5]~22\ = CARRY((!\HAddress[4]~20\) # (!HAddress(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HAddress(5),
	datad => VCC,
	cin => \HAddress[4]~20\,
	combout => \HAddress[5]~21_combout\,
	cout => \HAddress[5]~22\);

-- Location: FF_X39_Y30_N15
\HAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[5]~21_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(5));

-- Location: LCCOMB_X39_Y30_N26
\H_Address[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[5]~reg0feeder_combout\ = HAddress(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HAddress(5),
	combout => \H_Address[5]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N27
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

-- Location: LCCOMB_X39_Y30_N16
\HAddress[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[6]~23_combout\ = (HAddress(6) & (\HAddress[5]~22\ $ (GND))) # (!HAddress(6) & (!\HAddress[5]~22\ & VCC))
-- \HAddress[6]~24\ = CARRY((HAddress(6) & !\HAddress[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HAddress(6),
	datad => VCC,
	cin => \HAddress[5]~22\,
	combout => \HAddress[6]~23_combout\,
	cout => \HAddress[6]~24\);

-- Location: FF_X39_Y30_N17
\HAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[6]~23_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(6));

-- Location: FF_X40_Y30_N5
\H_Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => HAddress(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_Address[6]~reg0_q\);

-- Location: LCCOMB_X39_Y30_N18
\HAddress[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[7]~25_combout\ = (HAddress(7) & (!\HAddress[6]~24\)) # (!HAddress(7) & ((\HAddress[6]~24\) # (GND)))
-- \HAddress[7]~26\ = CARRY((!\HAddress[6]~24\) # (!HAddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HAddress(7),
	datad => VCC,
	cin => \HAddress[6]~24\,
	combout => \HAddress[7]~25_combout\,
	cout => \HAddress[7]~26\);

-- Location: FF_X39_Y30_N19
\HAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[7]~25_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(7));

-- Location: LCCOMB_X43_Y30_N4
\H_Address[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[7]~reg0feeder_combout\ = HAddress(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(7),
	combout => \H_Address[7]~reg0feeder_combout\);

-- Location: FF_X43_Y30_N5
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

-- Location: LCCOMB_X39_Y30_N20
\HAddress[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[8]~27_combout\ = (HAddress(8) & (\HAddress[7]~26\ $ (GND))) # (!HAddress(8) & (!\HAddress[7]~26\ & VCC))
-- \HAddress[8]~28\ = CARRY((HAddress(8) & !\HAddress[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HAddress(8),
	datad => VCC,
	cin => \HAddress[7]~26\,
	combout => \HAddress[8]~27_combout\,
	cout => \HAddress[8]~28\);

-- Location: FF_X39_Y30_N21
\HAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[8]~27_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(8));

-- Location: LCCOMB_X39_Y30_N24
\H_Address[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[8]~reg0feeder_combout\ = HAddress(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(8),
	combout => \H_Address[8]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N25
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

-- Location: LCCOMB_X39_Y30_N22
\HAddress[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAddress[9]~29_combout\ = HAddress(9) $ (\HAddress[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HAddress(9),
	cin => \HAddress[8]~28\,
	combout => \HAddress[9]~29_combout\);

-- Location: FF_X39_Y30_N23
\HAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \HAddress[9]~29_combout\,
	sclr => \Red[0]~5_combout\,
	ena => \HAddress[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HAddress(9));

-- Location: LCCOMB_X40_Y30_N30
\H_Address[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_Address[9]~reg0feeder_combout\ = HAddress(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => HAddress(9),
	combout => \H_Address[9]~reg0feeder_combout\);

-- Location: FF_X40_Y30_N31
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

-- Location: LCCOMB_X27_Y30_N8
\V_Address[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[0]~reg0feeder_combout\ = VAddress(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => VAddress(0),
	combout => \V_Address[0]~reg0feeder_combout\);

-- Location: FF_X27_Y30_N9
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

-- Location: LCCOMB_X35_Y30_N24
\V_Address[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[1]~reg0feeder_combout\ = VAddress(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => VAddress(1),
	combout => \V_Address[1]~reg0feeder_combout\);

-- Location: FF_X35_Y30_N25
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

-- Location: FF_X31_Y31_N19
\V_Address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[2]~reg0_q\);

-- Location: LCCOMB_X27_Y30_N26
\V_Address[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_Address[3]~reg0feeder_combout\ = VAddress(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => VAddress(3),
	combout => \V_Address[3]~reg0feeder_combout\);

-- Location: FF_X27_Y30_N27
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

-- Location: FF_X35_Y30_N15
\V_Address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[4]~reg0_q\);

-- Location: FF_X34_Y30_N29
\V_Address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[5]~reg0_q\);

-- Location: FF_X35_Y30_N21
\V_Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[6]~reg0_q\);

-- Location: FF_X30_Y30_N25
\V_Address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[7]~reg0_q\);

-- Location: FF_X34_Y30_N23
\V_Address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_Address[8]~reg0_q\);

-- Location: FF_X34_Y30_N5
\V_Address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => VAddress(9),
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


