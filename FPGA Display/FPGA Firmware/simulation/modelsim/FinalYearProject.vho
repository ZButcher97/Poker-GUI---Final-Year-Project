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

-- DATE "05/24/2020 21:10:26"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalYearProject IS
    PORT (
	VGA_Hsync_OUT : OUT std_logic;
	CLOCK_50 : IN std_logic;
	CS_QSPI_n : IN std_logic;
	CLK_QPSI : IN std_logic;
	IO_QSPI : IN std_logic_vector(3 DOWNTO 0);
	VGA_Vsync_OUT : OUT std_logic;
	PIXEL_CLOCK : OUT std_logic;
	VGA_B_OUT : OUT std_logic_vector(1 DOWNTO 0);
	VGA_G_OUT : OUT std_logic_vector(2 DOWNTO 0);
	VGA_R_OUT : OUT std_logic_vector(2 DOWNTO 0)
	);
END FinalYearProject;

-- Design Ports Information
-- VGA_Hsync_OUT	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_QSPI[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_QSPI[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_QSPI[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_QSPI[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_Vsync_OUT	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL_CLOCK	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B_OUT[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B_OUT[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G_OUT[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G_OUT[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G_OUT[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R_OUT[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R_OUT[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R_OUT[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_QSPI_n	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_QPSI	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_VGA_Hsync_OUT : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CS_QSPI_n : std_logic;
SIGNAL ww_CLK_QPSI : std_logic;
SIGNAL ww_IO_QSPI : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_Vsync_OUT : std_logic;
SIGNAL ww_PIXEL_CLOCK : std_logic;
SIGNAL ww_VGA_B_OUT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA_G_OUT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_VGA_R_OUT : std_logic_vector(2 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IO_QSPI[3]~input_o\ : std_logic;
SIGNAL \IO_QSPI[2]~input_o\ : std_logic;
SIGNAL \IO_QSPI[1]~input_o\ : std_logic;
SIGNAL \IO_QSPI[0]~input_o\ : std_logic;
SIGNAL \CS_QSPI_n~input_o\ : std_logic;
SIGNAL \CLK_QPSI~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|HState~10_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan3~3_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|HState~11_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|HCount~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|HState~12_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|HState~13_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|HState~14_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|HState.H_sync~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Hsync~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|Hsync~q\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[31]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~12_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[5]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~17_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[0]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~1\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~2_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~16_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[1]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~3\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~4_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~15_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[2]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~5\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~6_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~14_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[3]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~7\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~8_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~13_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[4]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~9\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~10_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~18_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[6]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~11\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~12_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~19_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[7]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~13\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~14_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~20_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[8]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~15\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~16_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan6~3_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~17\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~18_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~21_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[9]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~19\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~20_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~38_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[10]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~21\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~22_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~37_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[11]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~23\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~24_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~36_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[12]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~25\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~26_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~35_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[13]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~27\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~28_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~34_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[14]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~29\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~30_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~33_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[15]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~31\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~32_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~32_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[16]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~33\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~34_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~31_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[17]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~35\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~36_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~30_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[18]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~37\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~38_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~29_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[19]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~39\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~40_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~28_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[20]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~41\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~43\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~44_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~26_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[22]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~45\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~46_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~25_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[23]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~47\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~48_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~24_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[24]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~49\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~50_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~23_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[25]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~51\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~52_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~22_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[26]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~53\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~54_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~39_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[27]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~55\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~56_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~40_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[28]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~57\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~58_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~41_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[29]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~59\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~61\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~62_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~42_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[30]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~60_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~7_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~8_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~9_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~10_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~11_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~27_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|PIXEL_Horizontal:VCount[21]~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Add0~42_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~3_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~4_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~2_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~5_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VCount~6_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VState~6_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VState~7_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|VState.V_sync~q\ : std_logic;
SIGNAL \VGA_Controller_inst|Vsync~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller_inst|Vsync~q\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK_outclk\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

VGA_Hsync_OUT <= ww_VGA_Hsync_OUT;
ww_CLOCK_50 <= CLOCK_50;
ww_CS_QSPI_n <= CS_QSPI_n;
ww_CLK_QPSI <= CLK_QPSI;
ww_IO_QSPI <= IO_QSPI;
VGA_Vsync_OUT <= ww_VGA_Vsync_OUT;
PIXEL_CLOCK <= ww_PIXEL_CLOCK;
VGA_B_OUT <= ww_VGA_B_OUT;
VGA_G_OUT <= ww_VGA_G_OUT;
VGA_R_OUT <= ww_VGA_R_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X23_Y34_N23
\VGA_Hsync_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Controller_inst|Hsync~q\,
	devoe => ww_devoe,
	o => ww_VGA_Hsync_OUT);

-- Location: IOOBUF_X25_Y0_N16
\VGA_Vsync_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Controller_inst|Vsync~q\,
	devoe => ww_devoe,
	o => ww_VGA_Vsync_OUT);

-- Location: IOOBUF_X5_Y0_N23
\PIXEL_CLOCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK_outclk\,
	devoe => ww_devoe,
	o => ww_PIXEL_CLOCK);

-- Location: IOOBUF_X40_Y0_N23
\VGA_B_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B_OUT(1));

-- Location: IOOBUF_X18_Y0_N9
\VGA_B_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B_OUT(0));

-- Location: IOOBUF_X53_Y11_N2
\VGA_G_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G_OUT(2));

-- Location: IOOBUF_X11_Y34_N2
\VGA_G_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G_OUT(1));

-- Location: IOOBUF_X34_Y0_N2
\VGA_G_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G_OUT(0));

-- Location: IOOBUF_X34_Y34_N2
\VGA_R_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R_OUT(2));

-- Location: IOOBUF_X0_Y15_N9
\VGA_R_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R_OUT(1));

-- Location: IOOBUF_X18_Y34_N23
\VGA_R_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R_OUT(0));

-- Location: IOIBUF_X0_Y16_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\PLL_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y22_N12
\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\);

-- Location: LCCOMB_X24_Y22_N14
\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\);

-- Location: FF_X24_Y22_N15
\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\);

-- Location: LCCOMB_X24_Y22_N16
\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\ & (((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\)) # (!\VGA_Controller_inst|HCount~0_combout\))) # 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\ & (((\VGA_Controller_inst|HCount~0_combout\ & \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\)) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\ = CARRY(((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\)) # (!\VGA_Controller_inst|HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|HCount~0_combout\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\);

-- Location: FF_X24_Y22_N17
\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\);

-- Location: LCCOMB_X24_Y22_N18
\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\ & (\VGA_Controller_inst|HCount~0_combout\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\ & VCC))) # 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\ & ((((\VGA_Controller_inst|HCount~0_combout\ & \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\)))))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\ = CARRY((\VGA_Controller_inst|HCount~0_combout\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|HCount~0_combout\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\);

-- Location: FF_X24_Y22_N19
\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\);

-- Location: LCCOMB_X24_Y22_N20
\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\);

-- Location: FF_X24_Y22_N21
\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\);

-- Location: LCCOMB_X24_Y22_N22
\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\);

-- Location: FF_X24_Y22_N23
\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\);

-- Location: LCCOMB_X24_Y22_N24
\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\);

-- Location: FF_X24_Y22_N25
\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\);

-- Location: LCCOMB_X24_Y22_N26
\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\);

-- Location: FF_X24_Y22_N27
\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\);

-- Location: LCCOMB_X24_Y22_N28
\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\);

-- Location: FF_X24_Y22_N29
\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\);

-- Location: LCCOMB_X24_Y22_N30
\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\);

-- Location: FF_X24_Y22_N31
\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\);

-- Location: LCCOMB_X24_Y21_N0
\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\);

-- Location: FF_X24_Y21_N1
\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\);

-- Location: LCCOMB_X24_Y21_N2
\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\);

-- Location: FF_X24_Y21_N3
\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\);

-- Location: LCCOMB_X24_Y21_N4
\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\);

-- Location: FF_X24_Y21_N5
\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\);

-- Location: LCCOMB_X24_Y21_N6
\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\);

-- Location: FF_X24_Y21_N7
\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\);

-- Location: LCCOMB_X24_Y21_N8
\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\);

-- Location: FF_X24_Y21_N9
\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\);

-- Location: LCCOMB_X24_Y21_N10
\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\);

-- Location: FF_X24_Y21_N11
\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\);

-- Location: LCCOMB_X24_Y21_N12
\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\);

-- Location: FF_X24_Y21_N13
\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\);

-- Location: LCCOMB_X24_Y21_N14
\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\);

-- Location: FF_X24_Y21_N15
\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\);

-- Location: LCCOMB_X24_Y21_N16
\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\);

-- Location: FF_X24_Y21_N17
\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\);

-- Location: LCCOMB_X24_Y21_N18
\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\);

-- Location: FF_X24_Y21_N19
\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\);

-- Location: LCCOMB_X24_Y21_N20
\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\);

-- Location: FF_X24_Y21_N21
\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\);

-- Location: LCCOMB_X24_Y21_N22
\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\);

-- Location: FF_X24_Y21_N23
\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\);

-- Location: LCCOMB_X24_Y21_N24
\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\);

-- Location: FF_X24_Y21_N25
\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\);

-- Location: LCCOMB_X24_Y21_N26
\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\);

-- Location: FF_X24_Y21_N27
\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\);

-- Location: LCCOMB_X23_Y21_N12
\VGA_Controller_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~6_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[28]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[27]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[26]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~q\,
	combout => \VGA_Controller_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X24_Y21_N28
\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[29]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~2\);

-- Location: FF_X24_Y21_N29
\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\);

-- Location: LCCOMB_X23_Y22_N12
\VGA_Controller_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~2_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[16]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[17]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[15]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[14]~q\,
	combout => \VGA_Controller_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y21_N10
\VGA_Controller_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~4_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[25]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[22]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[23]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[24]~q\,
	combout => \VGA_Controller_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y22_N0
\VGA_Controller_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~1_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[13]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[12]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[11]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[10]~q\,
	combout => \VGA_Controller_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y21_N0
\VGA_Controller_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~3_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[19]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[21]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[20]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[18]~q\,
	combout => \VGA_Controller_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y22_N22
\VGA_Controller_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~5_combout\ = (\VGA_Controller_inst|LessThan0~2_combout\ & (\VGA_Controller_inst|LessThan0~4_combout\ & (\VGA_Controller_inst|LessThan0~1_combout\ & \VGA_Controller_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan0~2_combout\,
	datab => \VGA_Controller_inst|LessThan0~4_combout\,
	datac => \VGA_Controller_inst|LessThan0~1_combout\,
	datad => \VGA_Controller_inst|LessThan0~3_combout\,
	combout => \VGA_Controller_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X25_Y21_N0
\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~0_combout\ = !\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~0_combout\);

-- Location: FF_X25_Y21_N1
\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\);

-- Location: LCCOMB_X24_Y22_N2
\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\ & VCC)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\ & 
-- (\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\ $ (VCC)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\ & \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\,
	datad => VCC,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\);

-- Location: FF_X24_Y22_N3
\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\);

-- Location: LCCOMB_X24_Y22_N4
\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\);

-- Location: FF_X24_Y22_N5
\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\);

-- Location: LCCOMB_X24_Y22_N6
\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\ & 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\ & VCC))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\);

-- Location: FF_X24_Y22_N7
\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\);

-- Location: LCCOMB_X24_Y22_N8
\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\ & 
-- ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\) # (GND)))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\);

-- Location: FF_X24_Y22_N9
\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\);

-- Location: LCCOMB_X24_Y22_N10
\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\ & (\VGA_Controller_inst|HCount~0_combout\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\ & VCC))) # 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\ & ((((\VGA_Controller_inst|HCount~0_combout\ & \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\)))))
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\ = CARRY((\VGA_Controller_inst|HCount~0_combout\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|HCount~0_combout\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~1_combout\,
	cout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~2\);

-- Location: FF_X24_Y22_N11
\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\);

-- Location: LCCOMB_X25_Y22_N24
\VGA_Controller_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Equal0~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[3]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\,
	combout => \VGA_Controller_inst|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y22_N6
\VGA_Controller_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Equal0~0_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\ & (\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[2]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[1]~q\,
	combout => \VGA_Controller_inst|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y22_N26
\VGA_Controller_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Equal0~2_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ & (\VGA_Controller_inst|Equal0~1_combout\ & \VGA_Controller_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datab => \VGA_Controller_inst|Equal0~1_combout\,
	datad => \VGA_Controller_inst|Equal0~0_combout\,
	combout => \VGA_Controller_inst|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y22_N30
\VGA_Controller_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Equal0~3_combout\ = (\VGA_Controller_inst|LessThan0~6_combout\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\ & (\VGA_Controller_inst|LessThan0~5_combout\ & \VGA_Controller_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan0~6_combout\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\,
	datac => \VGA_Controller_inst|LessThan0~5_combout\,
	datad => \VGA_Controller_inst|Equal0~2_combout\,
	combout => \VGA_Controller_inst|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y22_N0
\VGA_Controller_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan1~0_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\ & 
-- !\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\,
	combout => \VGA_Controller_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y22_N2
\VGA_Controller_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan1~1_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\ & (!\VGA_Controller_inst|LessThan1~0_combout\ & ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\) # (\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	datad => \VGA_Controller_inst|LessThan1~0_combout\,
	combout => \VGA_Controller_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y22_N16
\VGA_Controller_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~7_combout\ = (\VGA_Controller_inst|LessThan0~6_combout\ & (\VGA_Controller_inst|LessThan0~5_combout\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan0~6_combout\,
	datac => \VGA_Controller_inst|LessThan0~5_combout\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\,
	combout => \VGA_Controller_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X23_Y22_N26
\VGA_Controller_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan0~0_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\ & ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\) # (\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	combout => \VGA_Controller_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~1_combout\ = \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\ $ (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\,
	cin => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~2\,
	combout => \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~1_combout\);

-- Location: FF_X24_Y21_N31
\VGA_Controller_inst|PIXEL_Horizontal:HCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\);

-- Location: LCCOMB_X23_Y22_N18
\VGA_Controller_inst|HState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|HState~10_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\ & (((\VGA_Controller_inst|LessThan1~1_combout\ & \VGA_Controller_inst|LessThan0~0_combout\)) # (!\VGA_Controller_inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan1~1_combout\,
	datab => \VGA_Controller_inst|LessThan0~7_combout\,
	datac => \VGA_Controller_inst|LessThan0~0_combout\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\,
	combout => \VGA_Controller_inst|HState~10_combout\);

-- Location: LCCOMB_X23_Y22_N10
\VGA_Controller_inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan3~2_combout\ = (\VGA_Controller_inst|LessThan0~3_combout\ & \VGA_Controller_inst|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|LessThan0~3_combout\,
	datac => \VGA_Controller_inst|LessThan0~1_combout\,
	combout => \VGA_Controller_inst|LessThan3~2_combout\);

-- Location: LCCOMB_X25_Y22_N12
\VGA_Controller_inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan3~0_combout\ = ((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\))) # 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\,
	combout => \VGA_Controller_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y22_N8
\VGA_Controller_inst|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan3~1_combout\ = (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\ & (\VGA_Controller_inst|LessThan0~4_combout\ & ((\VGA_Controller_inst|LessThan3~0_combout\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[30]~q\,
	datac => \VGA_Controller_inst|LessThan0~4_combout\,
	datad => \VGA_Controller_inst|LessThan3~0_combout\,
	combout => \VGA_Controller_inst|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y22_N28
\VGA_Controller_inst|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan3~3_combout\ = (\VGA_Controller_inst|LessThan3~2_combout\ & (\VGA_Controller_inst|LessThan0~6_combout\ & (\VGA_Controller_inst|LessThan3~1_combout\ & \VGA_Controller_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan3~2_combout\,
	datab => \VGA_Controller_inst|LessThan0~6_combout\,
	datac => \VGA_Controller_inst|LessThan3~1_combout\,
	datad => \VGA_Controller_inst|LessThan0~2_combout\,
	combout => \VGA_Controller_inst|LessThan3~3_combout\);

-- Location: LCCOMB_X23_Y22_N6
\VGA_Controller_inst|HState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|HState~11_combout\ = (!\VGA_Controller_inst|LessThan3~3_combout\ & (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\ & ((!\VGA_Controller_inst|Equal0~3_combout\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[0]~q\,
	datab => \VGA_Controller_inst|LessThan3~3_combout\,
	datac => \VGA_Controller_inst|Equal0~3_combout\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[31]~q\,
	combout => \VGA_Controller_inst|HState~11_combout\);

-- Location: LCCOMB_X23_Y22_N2
\VGA_Controller_inst|HCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|HCount~0_combout\ = (((\VGA_Controller_inst|LessThan2~1_combout\) # (!\VGA_Controller_inst|HState~11_combout\)) # (!\VGA_Controller_inst|HState~10_combout\)) # (!\VGA_Controller_inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Equal0~3_combout\,
	datab => \VGA_Controller_inst|HState~10_combout\,
	datac => \VGA_Controller_inst|LessThan2~1_combout\,
	datad => \VGA_Controller_inst|HState~11_combout\,
	combout => \VGA_Controller_inst|HCount~0_combout\);

-- Location: FF_X24_Y22_N13
\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\);

-- Location: LCCOMB_X25_Y22_N4
\VGA_Controller_inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan2~0_combout\ = (((!\VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\)) # 
-- (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[6]~q\,
	datab => \VGA_Controller_inst|PIXEL_Horizontal:HCount[5]~q\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[4]~q\,
	combout => \VGA_Controller_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y22_N4
\VGA_Controller_inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan2~1_combout\ = (\VGA_Controller_inst|LessThan0~7_combout\ & (((\VGA_Controller_inst|LessThan2~0_combout\ & !\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan2~0_combout\,
	datab => \VGA_Controller_inst|LessThan0~7_combout\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[9]~q\,
	datad => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	combout => \VGA_Controller_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X25_Y22_N14
\VGA_Controller_inst|HState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|HState~12_combout\ = (!\VGA_Controller_inst|LessThan1~0_combout\ & ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\) # ((\VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\ & !\VGA_Controller_inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:HCount[7]~q\,
	datab => \VGA_Controller_inst|LessThan1~0_combout\,
	datac => \VGA_Controller_inst|PIXEL_Horizontal:HCount[8]~q\,
	datad => \VGA_Controller_inst|LessThan2~0_combout\,
	combout => \VGA_Controller_inst|HState~12_combout\);

-- Location: LCCOMB_X23_Y22_N0
\VGA_Controller_inst|HState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|HState~13_combout\ = (\VGA_Controller_inst|HState~11_combout\ & (((\VGA_Controller_inst|LessThan0~0_combout\ & \VGA_Controller_inst|HState~12_combout\)) # (!\VGA_Controller_inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|HState~11_combout\,
	datab => \VGA_Controller_inst|LessThan0~7_combout\,
	datac => \VGA_Controller_inst|LessThan0~0_combout\,
	datad => \VGA_Controller_inst|HState~12_combout\,
	combout => \VGA_Controller_inst|HState~13_combout\);

-- Location: LCCOMB_X23_Y22_N24
\VGA_Controller_inst|HState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|HState~14_combout\ = (\VGA_Controller_inst|HState~13_combout\ & (((\VGA_Controller_inst|HState.H_sync~q\)))) # (!\VGA_Controller_inst|HState~13_combout\ & (\VGA_Controller_inst|LessThan2~1_combout\ & 
-- (\VGA_Controller_inst|HState~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan2~1_combout\,
	datab => \VGA_Controller_inst|HState~10_combout\,
	datac => \VGA_Controller_inst|HState.H_sync~q\,
	datad => \VGA_Controller_inst|HState~13_combout\,
	combout => \VGA_Controller_inst|HState~14_combout\);

-- Location: FF_X23_Y22_N25
\VGA_Controller_inst|HState.H_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|HState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|HState.H_sync~q\);

-- Location: LCCOMB_X23_Y29_N0
\VGA_Controller_inst|Hsync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Hsync~feeder_combout\ = \VGA_Controller_inst|HState.H_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller_inst|HState.H_sync~q\,
	combout => \VGA_Controller_inst|Hsync~feeder_combout\);

-- Location: FF_X23_Y29_N1
\VGA_Controller_inst|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|Hsync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|Hsync~q\);

-- Location: FF_X28_Y13_N31
\VGA_Controller_inst|PIXEL_Horizontal:VCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[31]~q\);

-- Location: LCCOMB_X27_Y14_N24
\VGA_Controller_inst|VCount~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~12_combout\ = (\VGA_Controller_inst|Add0~10_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|Add0~10_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~12_combout\);

-- Location: FF_X27_Y14_N25
\VGA_Controller_inst|PIXEL_Horizontal:VCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[5]~q\);

-- Location: LCCOMB_X28_Y14_N0
\VGA_Controller_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~0_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[0]~q\ & (!\VGA_Controller_inst|HCount~0_combout\ & VCC)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[0]~q\ & (\VGA_Controller_inst|HCount~0_combout\ $ (GND)))
-- \VGA_Controller_inst|Add0~1\ = CARRY((!\VGA_Controller_inst|PIXEL_Horizontal:VCount[0]~q\ & !\VGA_Controller_inst|HCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[0]~q\,
	datab => \VGA_Controller_inst|HCount~0_combout\,
	datad => VCC,
	combout => \VGA_Controller_inst|Add0~0_combout\,
	cout => \VGA_Controller_inst|Add0~1\);

-- Location: LCCOMB_X27_Y14_N2
\VGA_Controller_inst|VCount~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~17_combout\ = ((!\VGA_Controller_inst|VCount~11_combout\ & (\VGA_Controller_inst|LessThan6~3_combout\ & \VGA_Controller_inst|VState~6_combout\))) # (!\VGA_Controller_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|Add0~0_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~17_combout\);

-- Location: FF_X27_Y14_N3
\VGA_Controller_inst|PIXEL_Horizontal:VCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[0]~q\);

-- Location: LCCOMB_X28_Y14_N2
\VGA_Controller_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~2_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[1]~q\ & (!\VGA_Controller_inst|Add0~1\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[1]~q\ & ((\VGA_Controller_inst|Add0~1\) # (GND)))
-- \VGA_Controller_inst|Add0~3\ = CARRY((!\VGA_Controller_inst|Add0~1\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[1]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~1\,
	combout => \VGA_Controller_inst|Add0~2_combout\,
	cout => \VGA_Controller_inst|Add0~3\);

-- Location: LCCOMB_X27_Y14_N16
\VGA_Controller_inst|VCount~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~16_combout\ = (\VGA_Controller_inst|Add0~2_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VState~6_combout\,
	datad => \VGA_Controller_inst|Add0~2_combout\,
	combout => \VGA_Controller_inst|VCount~16_combout\);

-- Location: FF_X27_Y14_N17
\VGA_Controller_inst|PIXEL_Horizontal:VCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[1]~q\);

-- Location: LCCOMB_X28_Y14_N4
\VGA_Controller_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~4_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[2]~q\ & (\VGA_Controller_inst|Add0~3\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[2]~q\ & (!\VGA_Controller_inst|Add0~3\ & VCC))
-- \VGA_Controller_inst|Add0~5\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[2]~q\ & !\VGA_Controller_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[2]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~3\,
	combout => \VGA_Controller_inst|Add0~4_combout\,
	cout => \VGA_Controller_inst|Add0~5\);

-- Location: LCCOMB_X27_Y14_N6
\VGA_Controller_inst|VCount~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~15_combout\ = (\VGA_Controller_inst|Add0~4_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VState~6_combout\,
	datad => \VGA_Controller_inst|Add0~4_combout\,
	combout => \VGA_Controller_inst|VCount~15_combout\);

-- Location: FF_X27_Y14_N7
\VGA_Controller_inst|PIXEL_Horizontal:VCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[2]~q\);

-- Location: LCCOMB_X28_Y14_N6
\VGA_Controller_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~6_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[3]~q\ & (!\VGA_Controller_inst|Add0~5\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[3]~q\ & ((\VGA_Controller_inst|Add0~5\) # (GND)))
-- \VGA_Controller_inst|Add0~7\ = CARRY((!\VGA_Controller_inst|Add0~5\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[3]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~5\,
	combout => \VGA_Controller_inst|Add0~6_combout\,
	cout => \VGA_Controller_inst|Add0~7\);

-- Location: LCCOMB_X27_Y14_N12
\VGA_Controller_inst|VCount~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~14_combout\ = (\VGA_Controller_inst|Add0~6_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VState~6_combout\,
	datad => \VGA_Controller_inst|Add0~6_combout\,
	combout => \VGA_Controller_inst|VCount~14_combout\);

-- Location: FF_X27_Y14_N13
\VGA_Controller_inst|PIXEL_Horizontal:VCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[3]~q\);

-- Location: LCCOMB_X28_Y14_N8
\VGA_Controller_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~8_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[4]~q\ & (\VGA_Controller_inst|Add0~7\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[4]~q\ & (!\VGA_Controller_inst|Add0~7\ & VCC))
-- \VGA_Controller_inst|Add0~9\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[4]~q\ & !\VGA_Controller_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[4]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~7\,
	combout => \VGA_Controller_inst|Add0~8_combout\,
	cout => \VGA_Controller_inst|Add0~9\);

-- Location: LCCOMB_X27_Y14_N10
\VGA_Controller_inst|VCount~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~13_combout\ = (\VGA_Controller_inst|Add0~8_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|Add0~8_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~13_combout\);

-- Location: FF_X27_Y14_N11
\VGA_Controller_inst|PIXEL_Horizontal:VCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[4]~q\);

-- Location: LCCOMB_X28_Y14_N10
\VGA_Controller_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~10_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[5]~q\ & (!\VGA_Controller_inst|Add0~9\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[5]~q\ & ((\VGA_Controller_inst|Add0~9\) # (GND)))
-- \VGA_Controller_inst|Add0~11\ = CARRY((!\VGA_Controller_inst|Add0~9\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[5]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~9\,
	combout => \VGA_Controller_inst|Add0~10_combout\,
	cout => \VGA_Controller_inst|Add0~11\);

-- Location: LCCOMB_X29_Y14_N0
\VGA_Controller_inst|VCount~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~18_combout\ = (\VGA_Controller_inst|Add0~12_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~12_combout\,
	combout => \VGA_Controller_inst|VCount~18_combout\);

-- Location: FF_X29_Y14_N1
\VGA_Controller_inst|PIXEL_Horizontal:VCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[6]~q\);

-- Location: LCCOMB_X28_Y14_N12
\VGA_Controller_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~12_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[6]~q\ & (\VGA_Controller_inst|Add0~11\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[6]~q\ & (!\VGA_Controller_inst|Add0~11\ & VCC))
-- \VGA_Controller_inst|Add0~13\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[6]~q\ & !\VGA_Controller_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[6]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~11\,
	combout => \VGA_Controller_inst|Add0~12_combout\,
	cout => \VGA_Controller_inst|Add0~13\);

-- Location: LCCOMB_X27_Y14_N4
\VGA_Controller_inst|VCount~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~19_combout\ = (\VGA_Controller_inst|Add0~14_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|Add0~14_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~19_combout\);

-- Location: FF_X27_Y14_N5
\VGA_Controller_inst|PIXEL_Horizontal:VCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[7]~q\);

-- Location: LCCOMB_X28_Y14_N14
\VGA_Controller_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~14_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[7]~q\ & (!\VGA_Controller_inst|Add0~13\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[7]~q\ & ((\VGA_Controller_inst|Add0~13\) # (GND)))
-- \VGA_Controller_inst|Add0~15\ = CARRY((!\VGA_Controller_inst|Add0~13\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[7]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~13\,
	combout => \VGA_Controller_inst|Add0~14_combout\,
	cout => \VGA_Controller_inst|Add0~15\);

-- Location: LCCOMB_X29_Y14_N2
\VGA_Controller_inst|VCount~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~20_combout\ = (\VGA_Controller_inst|Add0~16_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|VState~6_combout\)) # (!\VGA_Controller_inst|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan6~3_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~16_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~20_combout\);

-- Location: FF_X29_Y14_N3
\VGA_Controller_inst|PIXEL_Horizontal:VCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[8]~q\);

-- Location: LCCOMB_X28_Y14_N16
\VGA_Controller_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~16_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[8]~q\ & (\VGA_Controller_inst|Add0~15\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[8]~q\ & (!\VGA_Controller_inst|Add0~15\ & VCC))
-- \VGA_Controller_inst|Add0~17\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[8]~q\ & !\VGA_Controller_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[8]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~15\,
	combout => \VGA_Controller_inst|Add0~16_combout\,
	cout => \VGA_Controller_inst|Add0~17\);

-- Location: LCCOMB_X27_Y15_N8
\VGA_Controller_inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan4~0_combout\ = (\VGA_Controller_inst|Add0~10_combout\ & (\VGA_Controller_inst|Add0~12_combout\ & (\VGA_Controller_inst|Add0~14_combout\ & \VGA_Controller_inst|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~10_combout\,
	datab => \VGA_Controller_inst|Add0~12_combout\,
	datac => \VGA_Controller_inst|Add0~14_combout\,
	datad => \VGA_Controller_inst|Add0~16_combout\,
	combout => \VGA_Controller_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X27_Y13_N30
\VGA_Controller_inst|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan6~2_combout\ = (\VGA_Controller_inst|Add0~4_combout\ & (\VGA_Controller_inst|Add0~2_combout\ & \VGA_Controller_inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|Add0~4_combout\,
	datac => \VGA_Controller_inst|Add0~2_combout\,
	datad => \VGA_Controller_inst|Add0~6_combout\,
	combout => \VGA_Controller_inst|LessThan6~2_combout\);

-- Location: LCCOMB_X27_Y13_N0
\VGA_Controller_inst|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan6~3_combout\ = ((\VGA_Controller_inst|LessThan4~0_combout\ & ((\VGA_Controller_inst|LessThan6~2_combout\) # (\VGA_Controller_inst|Add0~8_combout\)))) # (!\VGA_Controller_inst|LessThan6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan6~1_combout\,
	datab => \VGA_Controller_inst|LessThan4~0_combout\,
	datac => \VGA_Controller_inst|LessThan6~2_combout\,
	datad => \VGA_Controller_inst|Add0~8_combout\,
	combout => \VGA_Controller_inst|LessThan6~3_combout\);

-- Location: LCCOMB_X28_Y14_N18
\VGA_Controller_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~18_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[9]~q\ & (!\VGA_Controller_inst|Add0~17\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[9]~q\ & ((\VGA_Controller_inst|Add0~17\) # (GND)))
-- \VGA_Controller_inst|Add0~19\ = CARRY((!\VGA_Controller_inst|Add0~17\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[9]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~17\,
	combout => \VGA_Controller_inst|Add0~18_combout\,
	cout => \VGA_Controller_inst|Add0~19\);

-- Location: LCCOMB_X29_Y14_N20
\VGA_Controller_inst|VCount~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~21_combout\ = (\VGA_Controller_inst|Add0~18_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~18_combout\,
	combout => \VGA_Controller_inst|VCount~21_combout\);

-- Location: FF_X29_Y14_N21
\VGA_Controller_inst|PIXEL_Horizontal:VCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[9]~q\);

-- Location: LCCOMB_X28_Y14_N20
\VGA_Controller_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~20_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[10]~q\ & (\VGA_Controller_inst|Add0~19\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[10]~q\ & (!\VGA_Controller_inst|Add0~19\ & VCC))
-- \VGA_Controller_inst|Add0~21\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[10]~q\ & !\VGA_Controller_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[10]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~19\,
	combout => \VGA_Controller_inst|Add0~20_combout\,
	cout => \VGA_Controller_inst|Add0~21\);

-- Location: LCCOMB_X27_Y14_N28
\VGA_Controller_inst|VCount~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~38_combout\ = (\VGA_Controller_inst|Add0~20_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|Add0~20_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~38_combout\);

-- Location: FF_X27_Y14_N29
\VGA_Controller_inst|PIXEL_Horizontal:VCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[10]~q\);

-- Location: LCCOMB_X28_Y14_N22
\VGA_Controller_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~22_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[11]~q\ & (!\VGA_Controller_inst|Add0~21\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[11]~q\ & ((\VGA_Controller_inst|Add0~21\) # (GND)))
-- \VGA_Controller_inst|Add0~23\ = CARRY((!\VGA_Controller_inst|Add0~21\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[11]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~21\,
	combout => \VGA_Controller_inst|Add0~22_combout\,
	cout => \VGA_Controller_inst|Add0~23\);

-- Location: LCCOMB_X27_Y14_N26
\VGA_Controller_inst|VCount~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~37_combout\ = (\VGA_Controller_inst|Add0~22_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VState~6_combout\,
	datad => \VGA_Controller_inst|Add0~22_combout\,
	combout => \VGA_Controller_inst|VCount~37_combout\);

-- Location: FF_X27_Y14_N27
\VGA_Controller_inst|PIXEL_Horizontal:VCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[11]~q\);

-- Location: LCCOMB_X28_Y14_N24
\VGA_Controller_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~24_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[12]~q\ & (\VGA_Controller_inst|Add0~23\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[12]~q\ & (!\VGA_Controller_inst|Add0~23\ & VCC))
-- \VGA_Controller_inst|Add0~25\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[12]~q\ & !\VGA_Controller_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[12]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~23\,
	combout => \VGA_Controller_inst|Add0~24_combout\,
	cout => \VGA_Controller_inst|Add0~25\);

-- Location: LCCOMB_X27_Y14_N8
\VGA_Controller_inst|VCount~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~36_combout\ = (\VGA_Controller_inst|Add0~24_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|Add0~24_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~36_combout\);

-- Location: FF_X27_Y14_N9
\VGA_Controller_inst|PIXEL_Horizontal:VCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[12]~q\);

-- Location: LCCOMB_X28_Y14_N26
\VGA_Controller_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~26_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[13]~q\ & (!\VGA_Controller_inst|Add0~25\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[13]~q\ & ((\VGA_Controller_inst|Add0~25\) # (GND)))
-- \VGA_Controller_inst|Add0~27\ = CARRY((!\VGA_Controller_inst|Add0~25\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[13]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~25\,
	combout => \VGA_Controller_inst|Add0~26_combout\,
	cout => \VGA_Controller_inst|Add0~27\);

-- Location: LCCOMB_X27_Y14_N14
\VGA_Controller_inst|VCount~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~35_combout\ = (\VGA_Controller_inst|Add0~26_combout\ & ((\VGA_Controller_inst|VCount~11_combout\) # ((!\VGA_Controller_inst|VState~6_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~11_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VState~6_combout\,
	datad => \VGA_Controller_inst|Add0~26_combout\,
	combout => \VGA_Controller_inst|VCount~35_combout\);

-- Location: FF_X27_Y14_N15
\VGA_Controller_inst|PIXEL_Horizontal:VCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[13]~q\);

-- Location: LCCOMB_X28_Y14_N28
\VGA_Controller_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~28_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[14]~q\ & (\VGA_Controller_inst|Add0~27\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[14]~q\ & (!\VGA_Controller_inst|Add0~27\ & VCC))
-- \VGA_Controller_inst|Add0~29\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[14]~q\ & !\VGA_Controller_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[14]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~27\,
	combout => \VGA_Controller_inst|Add0~28_combout\,
	cout => \VGA_Controller_inst|Add0~29\);

-- Location: LCCOMB_X29_Y14_N24
\VGA_Controller_inst|VCount~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~34_combout\ = (\VGA_Controller_inst|Add0~28_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~28_combout\,
	combout => \VGA_Controller_inst|VCount~34_combout\);

-- Location: FF_X29_Y14_N25
\VGA_Controller_inst|PIXEL_Horizontal:VCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[14]~q\);

-- Location: LCCOMB_X28_Y14_N30
\VGA_Controller_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~30_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[15]~q\ & (!\VGA_Controller_inst|Add0~29\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[15]~q\ & ((\VGA_Controller_inst|Add0~29\) # (GND)))
-- \VGA_Controller_inst|Add0~31\ = CARRY((!\VGA_Controller_inst|Add0~29\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[15]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~29\,
	combout => \VGA_Controller_inst|Add0~30_combout\,
	cout => \VGA_Controller_inst|Add0~31\);

-- Location: LCCOMB_X29_Y14_N6
\VGA_Controller_inst|VCount~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~33_combout\ = (\VGA_Controller_inst|Add0~30_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~30_combout\,
	combout => \VGA_Controller_inst|VCount~33_combout\);

-- Location: FF_X29_Y14_N7
\VGA_Controller_inst|PIXEL_Horizontal:VCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[15]~q\);

-- Location: LCCOMB_X28_Y13_N0
\VGA_Controller_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~32_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[16]~q\ & (\VGA_Controller_inst|Add0~31\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[16]~q\ & (!\VGA_Controller_inst|Add0~31\ & VCC))
-- \VGA_Controller_inst|Add0~33\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[16]~q\ & !\VGA_Controller_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[16]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~31\,
	combout => \VGA_Controller_inst|Add0~32_combout\,
	cout => \VGA_Controller_inst|Add0~33\);

-- Location: LCCOMB_X29_Y13_N2
\VGA_Controller_inst|VCount~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~32_combout\ = (\VGA_Controller_inst|Add0~32_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~32_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~32_combout\);

-- Location: FF_X29_Y13_N3
\VGA_Controller_inst|PIXEL_Horizontal:VCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[16]~q\);

-- Location: LCCOMB_X28_Y13_N2
\VGA_Controller_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~34_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[17]~q\ & (!\VGA_Controller_inst|Add0~33\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[17]~q\ & ((\VGA_Controller_inst|Add0~33\) # (GND)))
-- \VGA_Controller_inst|Add0~35\ = CARRY((!\VGA_Controller_inst|Add0~33\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[17]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~33\,
	combout => \VGA_Controller_inst|Add0~34_combout\,
	cout => \VGA_Controller_inst|Add0~35\);

-- Location: LCCOMB_X29_Y13_N0
\VGA_Controller_inst|VCount~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~31_combout\ = (\VGA_Controller_inst|Add0~34_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~34_combout\,
	combout => \VGA_Controller_inst|VCount~31_combout\);

-- Location: FF_X29_Y13_N1
\VGA_Controller_inst|PIXEL_Horizontal:VCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[17]~q\);

-- Location: LCCOMB_X28_Y13_N4
\VGA_Controller_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~36_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[18]~q\ & (\VGA_Controller_inst|Add0~35\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[18]~q\ & (!\VGA_Controller_inst|Add0~35\ & VCC))
-- \VGA_Controller_inst|Add0~37\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[18]~q\ & !\VGA_Controller_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[18]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~35\,
	combout => \VGA_Controller_inst|Add0~36_combout\,
	cout => \VGA_Controller_inst|Add0~37\);

-- Location: LCCOMB_X29_Y13_N6
\VGA_Controller_inst|VCount~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~30_combout\ = (\VGA_Controller_inst|Add0~36_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~36_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~30_combout\);

-- Location: FF_X29_Y13_N7
\VGA_Controller_inst|PIXEL_Horizontal:VCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[18]~q\);

-- Location: LCCOMB_X28_Y13_N6
\VGA_Controller_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~38_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[19]~q\ & (!\VGA_Controller_inst|Add0~37\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[19]~q\ & ((\VGA_Controller_inst|Add0~37\) # (GND)))
-- \VGA_Controller_inst|Add0~39\ = CARRY((!\VGA_Controller_inst|Add0~37\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[19]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~37\,
	combout => \VGA_Controller_inst|Add0~38_combout\,
	cout => \VGA_Controller_inst|Add0~39\);

-- Location: LCCOMB_X27_Y13_N20
\VGA_Controller_inst|VCount~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~29_combout\ = (\VGA_Controller_inst|Add0~38_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VCount~11_combout\,
	datad => \VGA_Controller_inst|Add0~38_combout\,
	combout => \VGA_Controller_inst|VCount~29_combout\);

-- Location: FF_X27_Y13_N21
\VGA_Controller_inst|PIXEL_Horizontal:VCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[19]~q\);

-- Location: LCCOMB_X28_Y13_N8
\VGA_Controller_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~40_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[20]~q\ & (\VGA_Controller_inst|Add0~39\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[20]~q\ & (!\VGA_Controller_inst|Add0~39\ & VCC))
-- \VGA_Controller_inst|Add0~41\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[20]~q\ & !\VGA_Controller_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[20]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~39\,
	combout => \VGA_Controller_inst|Add0~40_combout\,
	cout => \VGA_Controller_inst|Add0~41\);

-- Location: LCCOMB_X29_Y13_N20
\VGA_Controller_inst|VCount~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~28_combout\ = (\VGA_Controller_inst|Add0~40_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~40_combout\,
	combout => \VGA_Controller_inst|VCount~28_combout\);

-- Location: FF_X29_Y13_N21
\VGA_Controller_inst|PIXEL_Horizontal:VCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[20]~q\);

-- Location: LCCOMB_X28_Y13_N10
\VGA_Controller_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~42_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[21]~q\ & (!\VGA_Controller_inst|Add0~41\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[21]~q\ & ((\VGA_Controller_inst|Add0~41\) # (GND)))
-- \VGA_Controller_inst|Add0~43\ = CARRY((!\VGA_Controller_inst|Add0~41\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[21]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~41\,
	combout => \VGA_Controller_inst|Add0~42_combout\,
	cout => \VGA_Controller_inst|Add0~43\);

-- Location: LCCOMB_X28_Y13_N12
\VGA_Controller_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~44_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[22]~q\ & (\VGA_Controller_inst|Add0~43\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[22]~q\ & (!\VGA_Controller_inst|Add0~43\ & VCC))
-- \VGA_Controller_inst|Add0~45\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[22]~q\ & !\VGA_Controller_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[22]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~43\,
	combout => \VGA_Controller_inst|Add0~44_combout\,
	cout => \VGA_Controller_inst|Add0~45\);

-- Location: LCCOMB_X29_Y13_N8
\VGA_Controller_inst|VCount~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~26_combout\ = (\VGA_Controller_inst|Add0~44_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~44_combout\,
	combout => \VGA_Controller_inst|VCount~26_combout\);

-- Location: FF_X29_Y13_N9
\VGA_Controller_inst|PIXEL_Horizontal:VCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[22]~q\);

-- Location: LCCOMB_X28_Y13_N14
\VGA_Controller_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~46_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[23]~q\ & (!\VGA_Controller_inst|Add0~45\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[23]~q\ & ((\VGA_Controller_inst|Add0~45\) # (GND)))
-- \VGA_Controller_inst|Add0~47\ = CARRY((!\VGA_Controller_inst|Add0~45\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[23]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~45\,
	combout => \VGA_Controller_inst|Add0~46_combout\,
	cout => \VGA_Controller_inst|Add0~47\);

-- Location: LCCOMB_X29_Y13_N22
\VGA_Controller_inst|VCount~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~25_combout\ = (\VGA_Controller_inst|Add0~46_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~46_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~25_combout\);

-- Location: FF_X29_Y13_N23
\VGA_Controller_inst|PIXEL_Horizontal:VCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[23]~q\);

-- Location: LCCOMB_X28_Y13_N16
\VGA_Controller_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~48_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[24]~q\ & (\VGA_Controller_inst|Add0~47\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[24]~q\ & (!\VGA_Controller_inst|Add0~47\ & VCC))
-- \VGA_Controller_inst|Add0~49\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[24]~q\ & !\VGA_Controller_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[24]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~47\,
	combout => \VGA_Controller_inst|Add0~48_combout\,
	cout => \VGA_Controller_inst|Add0~49\);

-- Location: LCCOMB_X29_Y13_N4
\VGA_Controller_inst|VCount~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~24_combout\ = (\VGA_Controller_inst|Add0~48_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~48_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~24_combout\);

-- Location: FF_X29_Y13_N5
\VGA_Controller_inst|PIXEL_Horizontal:VCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[24]~q\);

-- Location: LCCOMB_X28_Y13_N18
\VGA_Controller_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~50_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[25]~q\ & (!\VGA_Controller_inst|Add0~49\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[25]~q\ & ((\VGA_Controller_inst|Add0~49\) # (GND)))
-- \VGA_Controller_inst|Add0~51\ = CARRY((!\VGA_Controller_inst|Add0~49\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[25]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~49\,
	combout => \VGA_Controller_inst|Add0~50_combout\,
	cout => \VGA_Controller_inst|Add0~51\);

-- Location: LCCOMB_X29_Y13_N26
\VGA_Controller_inst|VCount~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~23_combout\ = (\VGA_Controller_inst|Add0~50_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|Add0~50_combout\,
	datac => \VGA_Controller_inst|VCount~11_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~23_combout\);

-- Location: FF_X29_Y13_N27
\VGA_Controller_inst|PIXEL_Horizontal:VCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[25]~q\);

-- Location: LCCOMB_X28_Y13_N20
\VGA_Controller_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~52_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[26]~q\ & (\VGA_Controller_inst|Add0~51\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[26]~q\ & (!\VGA_Controller_inst|Add0~51\ & VCC))
-- \VGA_Controller_inst|Add0~53\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[26]~q\ & !\VGA_Controller_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[26]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~51\,
	combout => \VGA_Controller_inst|Add0~52_combout\,
	cout => \VGA_Controller_inst|Add0~53\);

-- Location: LCCOMB_X27_Y13_N2
\VGA_Controller_inst|VCount~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~22_combout\ = (\VGA_Controller_inst|Add0~52_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|VState~6_combout\)) # (!\VGA_Controller_inst|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~52_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VCount~11_combout\,
	datad => \VGA_Controller_inst|VState~6_combout\,
	combout => \VGA_Controller_inst|VCount~22_combout\);

-- Location: FF_X27_Y13_N3
\VGA_Controller_inst|PIXEL_Horizontal:VCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[26]~q\);

-- Location: LCCOMB_X28_Y13_N22
\VGA_Controller_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~54_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[27]~q\ & (!\VGA_Controller_inst|Add0~53\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[27]~q\ & ((\VGA_Controller_inst|Add0~53\) # (GND)))
-- \VGA_Controller_inst|Add0~55\ = CARRY((!\VGA_Controller_inst|Add0~53\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[27]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~53\,
	combout => \VGA_Controller_inst|Add0~54_combout\,
	cout => \VGA_Controller_inst|Add0~55\);

-- Location: LCCOMB_X27_Y13_N6
\VGA_Controller_inst|VCount~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~39_combout\ = (\VGA_Controller_inst|Add0~54_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~54_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~39_combout\);

-- Location: FF_X27_Y13_N7
\VGA_Controller_inst|PIXEL_Horizontal:VCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[27]~q\);

-- Location: LCCOMB_X28_Y13_N24
\VGA_Controller_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~56_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[28]~q\ & (\VGA_Controller_inst|Add0~55\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[28]~q\ & (!\VGA_Controller_inst|Add0~55\ & VCC))
-- \VGA_Controller_inst|Add0~57\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[28]~q\ & !\VGA_Controller_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[28]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~55\,
	combout => \VGA_Controller_inst|Add0~56_combout\,
	cout => \VGA_Controller_inst|Add0~57\);

-- Location: LCCOMB_X29_Y13_N12
\VGA_Controller_inst|VCount~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~40_combout\ = (\VGA_Controller_inst|Add0~56_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|Add0~56_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VCount~40_combout\);

-- Location: FF_X29_Y13_N13
\VGA_Controller_inst|PIXEL_Horizontal:VCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[28]~q\);

-- Location: LCCOMB_X28_Y13_N26
\VGA_Controller_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~58_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[29]~q\ & (!\VGA_Controller_inst|Add0~57\)) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[29]~q\ & ((\VGA_Controller_inst|Add0~57\) # (GND)))
-- \VGA_Controller_inst|Add0~59\ = CARRY((!\VGA_Controller_inst|Add0~57\) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[29]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~57\,
	combout => \VGA_Controller_inst|Add0~58_combout\,
	cout => \VGA_Controller_inst|Add0~59\);

-- Location: LCCOMB_X27_Y13_N16
\VGA_Controller_inst|VCount~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~41_combout\ = (\VGA_Controller_inst|Add0~58_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|LessThan6~3_combout\,
	datac => \VGA_Controller_inst|VCount~11_combout\,
	datad => \VGA_Controller_inst|Add0~58_combout\,
	combout => \VGA_Controller_inst|VCount~41_combout\);

-- Location: FF_X27_Y13_N17
\VGA_Controller_inst|PIXEL_Horizontal:VCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[29]~q\);

-- Location: LCCOMB_X28_Y13_N28
\VGA_Controller_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~60_combout\ = (\VGA_Controller_inst|PIXEL_Horizontal:VCount[30]~q\ & (\VGA_Controller_inst|Add0~59\ $ (GND))) # (!\VGA_Controller_inst|PIXEL_Horizontal:VCount[30]~q\ & (!\VGA_Controller_inst|Add0~59\ & VCC))
-- \VGA_Controller_inst|Add0~61\ = CARRY((\VGA_Controller_inst|PIXEL_Horizontal:VCount[30]~q\ & !\VGA_Controller_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|PIXEL_Horizontal:VCount[30]~q\,
	datad => VCC,
	cin => \VGA_Controller_inst|Add0~59\,
	combout => \VGA_Controller_inst|Add0~60_combout\,
	cout => \VGA_Controller_inst|Add0~61\);

-- Location: LCCOMB_X28_Y13_N30
\VGA_Controller_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Add0~62_combout\ = \VGA_Controller_inst|PIXEL_Horizontal:VCount[31]~q\ $ (\VGA_Controller_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|PIXEL_Horizontal:VCount[31]~q\,
	cin => \VGA_Controller_inst|Add0~61\,
	combout => \VGA_Controller_inst|Add0~62_combout\);

-- Location: LCCOMB_X29_Y13_N28
\VGA_Controller_inst|VCount~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~42_combout\ = (\VGA_Controller_inst|Add0~62_combout\ & \VGA_Controller_inst|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller_inst|Add0~62_combout\,
	datad => \VGA_Controller_inst|Add0~60_combout\,
	combout => \VGA_Controller_inst|VCount~42_combout\);

-- Location: FF_X29_Y13_N29
\VGA_Controller_inst|PIXEL_Horizontal:VCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[30]~q\);

-- Location: LCCOMB_X27_Y13_N10
\VGA_Controller_inst|VCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~0_combout\ = (!\VGA_Controller_inst|Add0~54_combout\ & (!\VGA_Controller_inst|Add0~58_combout\ & (!\VGA_Controller_inst|Add0~52_combout\ & !\VGA_Controller_inst|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~54_combout\,
	datab => \VGA_Controller_inst|Add0~58_combout\,
	datac => \VGA_Controller_inst|Add0~52_combout\,
	datad => \VGA_Controller_inst|Add0~56_combout\,
	combout => \VGA_Controller_inst|VCount~0_combout\);

-- Location: LCCOMB_X27_Y14_N20
\VGA_Controller_inst|VCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~7_combout\ = (((!\VGA_Controller_inst|Add0~2_combout\ & !\VGA_Controller_inst|Add0~0_combout\)) # (!\VGA_Controller_inst|Add0~6_combout\)) # (!\VGA_Controller_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~4_combout\,
	datab => \VGA_Controller_inst|Add0~2_combout\,
	datac => \VGA_Controller_inst|Add0~0_combout\,
	datad => \VGA_Controller_inst|Add0~6_combout\,
	combout => \VGA_Controller_inst|VCount~7_combout\);

-- Location: LCCOMB_X27_Y14_N22
\VGA_Controller_inst|VCount~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~8_combout\ = (!\VGA_Controller_inst|Add0~8_combout\ & (!\VGA_Controller_inst|Add0~10_combout\ & (!\VGA_Controller_inst|Add0~14_combout\ & !\VGA_Controller_inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~8_combout\,
	datab => \VGA_Controller_inst|Add0~10_combout\,
	datac => \VGA_Controller_inst|Add0~14_combout\,
	datad => \VGA_Controller_inst|Add0~12_combout\,
	combout => \VGA_Controller_inst|VCount~8_combout\);

-- Location: LCCOMB_X27_Y13_N18
\VGA_Controller_inst|VCount~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~9_combout\ = ((\VGA_Controller_inst|VCount~7_combout\ & (\VGA_Controller_inst|VCount~8_combout\ & !\VGA_Controller_inst|Add0~16_combout\))) # (!\VGA_Controller_inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~7_combout\,
	datab => \VGA_Controller_inst|Add0~18_combout\,
	datac => \VGA_Controller_inst|VCount~8_combout\,
	datad => \VGA_Controller_inst|Add0~16_combout\,
	combout => \VGA_Controller_inst|VCount~9_combout\);

-- Location: LCCOMB_X27_Y13_N28
\VGA_Controller_inst|VCount~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~10_combout\ = (\VGA_Controller_inst|VCount~0_combout\ & (\VGA_Controller_inst|VCount~9_combout\ & \VGA_Controller_inst|VCount~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~0_combout\,
	datab => \VGA_Controller_inst|VCount~9_combout\,
	datad => \VGA_Controller_inst|VCount~5_combout\,
	combout => \VGA_Controller_inst|VCount~10_combout\);

-- Location: LCCOMB_X27_Y13_N8
\VGA_Controller_inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan5~0_combout\ = (\VGA_Controller_inst|LessThan4~0_combout\ & ((\VGA_Controller_inst|Add0~8_combout\) # ((\VGA_Controller_inst|Add0~4_combout\ & \VGA_Controller_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~8_combout\,
	datab => \VGA_Controller_inst|LessThan4~0_combout\,
	datac => \VGA_Controller_inst|Add0~4_combout\,
	datad => \VGA_Controller_inst|Add0~6_combout\,
	combout => \VGA_Controller_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X27_Y13_N22
\VGA_Controller_inst|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan5~1_combout\ = ((\VGA_Controller_inst|Add0~18_combout\) # ((\VGA_Controller_inst|LessThan5~0_combout\) # (!\VGA_Controller_inst|VCount~5_combout\))) # (!\VGA_Controller_inst|VCount~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~0_combout\,
	datab => \VGA_Controller_inst|Add0~18_combout\,
	datac => \VGA_Controller_inst|LessThan5~0_combout\,
	datad => \VGA_Controller_inst|VCount~5_combout\,
	combout => \VGA_Controller_inst|LessThan5~1_combout\);

-- Location: LCCOMB_X27_Y13_N14
\VGA_Controller_inst|VCount~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~11_combout\ = (!\VGA_Controller_inst|Add0~60_combout\ & ((\VGA_Controller_inst|VCount~10_combout\) # (!\VGA_Controller_inst|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~60_combout\,
	datab => \VGA_Controller_inst|VCount~10_combout\,
	datac => \VGA_Controller_inst|LessThan5~1_combout\,
	combout => \VGA_Controller_inst|VCount~11_combout\);

-- Location: LCCOMB_X29_Y13_N18
\VGA_Controller_inst|VCount~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~27_combout\ = (\VGA_Controller_inst|Add0~42_combout\ & (((\VGA_Controller_inst|VCount~11_combout\) # (!\VGA_Controller_inst|LessThan6~3_combout\)) # (!\VGA_Controller_inst|VState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datab => \VGA_Controller_inst|VCount~11_combout\,
	datac => \VGA_Controller_inst|LessThan6~3_combout\,
	datad => \VGA_Controller_inst|Add0~42_combout\,
	combout => \VGA_Controller_inst|VCount~27_combout\);

-- Location: FF_X29_Y13_N19
\VGA_Controller_inst|PIXEL_Horizontal:VCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VCount~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|PIXEL_Horizontal:VCount[21]~q\);

-- Location: LCCOMB_X29_Y13_N24
\VGA_Controller_inst|VCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~3_combout\ = (!\VGA_Controller_inst|Add0~42_combout\ & (!\VGA_Controller_inst|Add0~38_combout\ & (!\VGA_Controller_inst|Add0~36_combout\ & !\VGA_Controller_inst|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~42_combout\,
	datab => \VGA_Controller_inst|Add0~38_combout\,
	datac => \VGA_Controller_inst|Add0~36_combout\,
	datad => \VGA_Controller_inst|Add0~40_combout\,
	combout => \VGA_Controller_inst|VCount~3_combout\);

-- Location: LCCOMB_X29_Y13_N10
\VGA_Controller_inst|VCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~4_combout\ = (!\VGA_Controller_inst|Add0~46_combout\ & (!\VGA_Controller_inst|Add0~50_combout\ & (!\VGA_Controller_inst|Add0~48_combout\ & !\VGA_Controller_inst|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~46_combout\,
	datab => \VGA_Controller_inst|Add0~50_combout\,
	datac => \VGA_Controller_inst|Add0~48_combout\,
	datad => \VGA_Controller_inst|Add0~44_combout\,
	combout => \VGA_Controller_inst|VCount~4_combout\);

-- Location: LCCOMB_X27_Y14_N30
\VGA_Controller_inst|VCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~1_combout\ = (!\VGA_Controller_inst|Add0~24_combout\ & (!\VGA_Controller_inst|Add0~26_combout\ & (!\VGA_Controller_inst|Add0~20_combout\ & !\VGA_Controller_inst|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~24_combout\,
	datab => \VGA_Controller_inst|Add0~26_combout\,
	datac => \VGA_Controller_inst|Add0~20_combout\,
	datad => \VGA_Controller_inst|Add0~22_combout\,
	combout => \VGA_Controller_inst|VCount~1_combout\);

-- Location: LCCOMB_X29_Y13_N30
\VGA_Controller_inst|VCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~2_combout\ = (!\VGA_Controller_inst|Add0~34_combout\ & (!\VGA_Controller_inst|Add0~28_combout\ & (!\VGA_Controller_inst|Add0~32_combout\ & !\VGA_Controller_inst|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~34_combout\,
	datab => \VGA_Controller_inst|Add0~28_combout\,
	datac => \VGA_Controller_inst|Add0~32_combout\,
	datad => \VGA_Controller_inst|Add0~30_combout\,
	combout => \VGA_Controller_inst|VCount~2_combout\);

-- Location: LCCOMB_X27_Y13_N12
\VGA_Controller_inst|VCount~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~5_combout\ = (\VGA_Controller_inst|VCount~3_combout\ & (\VGA_Controller_inst|VCount~4_combout\ & (\VGA_Controller_inst|VCount~1_combout\ & \VGA_Controller_inst|VCount~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~3_combout\,
	datab => \VGA_Controller_inst|VCount~4_combout\,
	datac => \VGA_Controller_inst|VCount~1_combout\,
	datad => \VGA_Controller_inst|VCount~2_combout\,
	combout => \VGA_Controller_inst|VCount~5_combout\);

-- Location: LCCOMB_X27_Y13_N24
\VGA_Controller_inst|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan6~0_combout\ = (!\VGA_Controller_inst|Add0~54_combout\ & (!\VGA_Controller_inst|Add0~56_combout\ & (!\VGA_Controller_inst|Add0~52_combout\ & !\VGA_Controller_inst|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~54_combout\,
	datab => \VGA_Controller_inst|Add0~56_combout\,
	datac => \VGA_Controller_inst|Add0~52_combout\,
	datad => \VGA_Controller_inst|Add0~18_combout\,
	combout => \VGA_Controller_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X27_Y13_N26
\VGA_Controller_inst|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan6~1_combout\ = (\VGA_Controller_inst|VCount~5_combout\ & (\VGA_Controller_inst|LessThan6~0_combout\ & (!\VGA_Controller_inst|Add0~60_combout\ & !\VGA_Controller_inst|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VCount~5_combout\,
	datab => \VGA_Controller_inst|LessThan6~0_combout\,
	datac => \VGA_Controller_inst|Add0~60_combout\,
	datad => \VGA_Controller_inst|Add0~58_combout\,
	combout => \VGA_Controller_inst|LessThan6~1_combout\);

-- Location: LCCOMB_X27_Y14_N0
\VGA_Controller_inst|VCount~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VCount~6_combout\ = (!\VGA_Controller_inst|Add0~0_combout\ & !\VGA_Controller_inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller_inst|Add0~0_combout\,
	datad => \VGA_Controller_inst|Add0~2_combout\,
	combout => \VGA_Controller_inst|VCount~6_combout\);

-- Location: LCCOMB_X27_Y14_N18
\VGA_Controller_inst|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|LessThan4~1_combout\ = (\VGA_Controller_inst|Add0~6_combout\) # (((\VGA_Controller_inst|Add0~8_combout\) # (\VGA_Controller_inst|Add0~4_combout\)) # (!\VGA_Controller_inst|VCount~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|Add0~6_combout\,
	datab => \VGA_Controller_inst|VCount~6_combout\,
	datac => \VGA_Controller_inst|Add0~8_combout\,
	datad => \VGA_Controller_inst|Add0~4_combout\,
	combout => \VGA_Controller_inst|LessThan4~1_combout\);

-- Location: LCCOMB_X27_Y13_N4
\VGA_Controller_inst|VState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VState~6_combout\ = (!\VGA_Controller_inst|Add0~62_combout\ & (((\VGA_Controller_inst|LessThan4~0_combout\ & \VGA_Controller_inst|LessThan4~1_combout\)) # (!\VGA_Controller_inst|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|LessThan6~1_combout\,
	datab => \VGA_Controller_inst|LessThan4~0_combout\,
	datac => \VGA_Controller_inst|LessThan4~1_combout\,
	datad => \VGA_Controller_inst|Add0~62_combout\,
	combout => \VGA_Controller_inst|VState~6_combout\);

-- Location: LCCOMB_X29_Y13_N16
\VGA_Controller_inst|VState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|VState~7_combout\ = (\VGA_Controller_inst|VState~6_combout\ & (\VGA_Controller_inst|LessThan5~1_combout\ & !\VGA_Controller_inst|LessThan6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller_inst|VState~6_combout\,
	datac => \VGA_Controller_inst|LessThan5~1_combout\,
	datad => \VGA_Controller_inst|LessThan6~3_combout\,
	combout => \VGA_Controller_inst|VState~7_combout\);

-- Location: FF_X29_Y13_N17
\VGA_Controller_inst|VState.V_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|VState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|VState.V_sync~q\);

-- Location: LCCOMB_X27_Y4_N24
\VGA_Controller_inst|Vsync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_Controller_inst|Vsync~feeder_combout\ = \VGA_Controller_inst|VState.V_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller_inst|VState.V_sync~q\,
	combout => \VGA_Controller_inst|Vsync~feeder_combout\);

-- Location: FF_X27_Y4_N25
\VGA_Controller_inst|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Controller_inst|Vsync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller_inst|Vsync~q\);

-- Location: CLKCTRL_PLL1E0
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_PIXEL_CLOCK_outclk\);

-- Location: IOIBUF_X14_Y0_N15
\IO_QSPI[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_QSPI(3),
	o => \IO_QSPI[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\IO_QSPI[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_QSPI(2),
	o => \IO_QSPI[2]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\IO_QSPI[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_QSPI(1),
	o => \IO_QSPI[1]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\IO_QSPI[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_QSPI(0),
	o => \IO_QSPI[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\CS_QSPI_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS_QSPI_n,
	o => \CS_QSPI_n~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\CLK_QPSI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_QPSI,
	o => \CLK_QPSI~input_o\);
END structure;


