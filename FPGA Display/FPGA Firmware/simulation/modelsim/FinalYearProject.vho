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

-- DATE "05/25/2020 23:13:55"

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

ENTITY 	QSPI_Slave_Controller IS
    PORT (
	CS_n : IN std_logic;
	CLK : IN std_logic;
	IO : IN std_logic_vector(3 DOWNTO 0);
	DataOut : OUT std_logic_vector(7 DOWNTO 0);
	Address_H : OUT std_logic_vector(9 DOWNTO 0);
	Address_V : OUT std_logic_vector(9 DOWNTO 0);
	WriteData : OUT std_logic
	);
END QSPI_Slave_Controller;

-- Design Ports Information
-- DataOut[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[1]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_n	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF QSPI_Slave_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CS_n : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_IO : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Address_H : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Address_V : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_WriteData : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DataOut[0]~output_o\ : std_logic;
SIGNAL \DataOut[1]~output_o\ : std_logic;
SIGNAL \DataOut[2]~output_o\ : std_logic;
SIGNAL \DataOut[3]~output_o\ : std_logic;
SIGNAL \DataOut[4]~output_o\ : std_logic;
SIGNAL \DataOut[5]~output_o\ : std_logic;
SIGNAL \DataOut[6]~output_o\ : std_logic;
SIGNAL \DataOut[7]~output_o\ : std_logic;
SIGNAL \Address_H[0]~output_o\ : std_logic;
SIGNAL \Address_H[1]~output_o\ : std_logic;
SIGNAL \Address_H[2]~output_o\ : std_logic;
SIGNAL \Address_H[3]~output_o\ : std_logic;
SIGNAL \Address_H[4]~output_o\ : std_logic;
SIGNAL \Address_H[5]~output_o\ : std_logic;
SIGNAL \Address_H[6]~output_o\ : std_logic;
SIGNAL \Address_H[7]~output_o\ : std_logic;
SIGNAL \Address_H[8]~output_o\ : std_logic;
SIGNAL \Address_H[9]~output_o\ : std_logic;
SIGNAL \Address_V[0]~output_o\ : std_logic;
SIGNAL \Address_V[1]~output_o\ : std_logic;
SIGNAL \Address_V[2]~output_o\ : std_logic;
SIGNAL \Address_V[3]~output_o\ : std_logic;
SIGNAL \Address_V[4]~output_o\ : std_logic;
SIGNAL \Address_V[5]~output_o\ : std_logic;
SIGNAL \Address_V[6]~output_o\ : std_logic;
SIGNAL \Address_V[7]~output_o\ : std_logic;
SIGNAL \Address_V[8]~output_o\ : std_logic;
SIGNAL \Address_V[9]~output_o\ : std_logic;
SIGNAL \WriteData~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \IO[0]~input_o\ : std_logic;
SIGNAL \DataOut[0]~reg0feeder_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[0]~0_combout\ : std_logic;
SIGNAL \CS_n~input_o\ : std_logic;
SIGNAL \State_Controller:Clock_Count[0]~q\ : std_logic;
SIGNAL \State~19_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[9]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[10]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[10]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[10]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[11]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[11]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[11]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[12]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[12]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[12]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[13]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[13]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[13]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[14]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[14]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[14]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[15]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[15]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[15]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[16]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[16]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[16]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[17]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[17]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[17]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[18]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[18]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[18]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[19]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[19]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[19]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[20]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[20]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[20]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[21]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[21]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[21]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[22]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[22]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[22]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[23]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[23]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[23]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[24]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[24]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[24]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[25]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[25]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[25]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[26]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[26]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[26]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[27]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[27]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[27]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[28]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[28]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[28]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[29]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[29]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \State~20_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \Clock_Count~0_combout\ : std_logic;
SIGNAL \Clock_Count~3_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[1]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[1]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[29]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[30]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[31]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[31]~q\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \Clock_Count~2_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[1]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[2]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[2]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[2]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[3]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[3]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[3]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[4]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[4]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[4]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[5]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[5]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[5]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[6]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[6]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[6]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[7]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[7]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[7]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[8]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[8]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[8]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[9]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[9]~q\ : std_logic;
SIGNAL \State~8_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \Clock_Count~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[30]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[30]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \State~17_combout\ : std_logic;
SIGNAL \State.Address~q\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.Instruction~q\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State.Alternate~q\ : std_logic;
SIGNAL \State~9_combout\ : std_logic;
SIGNAL \State~10_combout\ : std_logic;
SIGNAL \State~11_combout\ : std_logic;
SIGNAL \State.Data~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \State~18_combout\ : std_logic;
SIGNAL \State~21_combout\ : std_logic;
SIGNAL \State.Dummy~q\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~4_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~1_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~0_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~5_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~2_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~q\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[0]~q\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~6_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~7_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~q\ : std_logic;
SIGNAL \DataOut[0]~0_combout\ : std_logic;
SIGNAL \DataOut[0]~reg0_q\ : std_logic;
SIGNAL \IO[1]~input_o\ : std_logic;
SIGNAL \DataOut[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[1]~reg0_q\ : std_logic;
SIGNAL \IO[2]~input_o\ : std_logic;
SIGNAL \DataOut[2]~reg0_q\ : std_logic;
SIGNAL \IO[3]~input_o\ : std_logic;
SIGNAL \DataOut[3]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[3]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[4]~feeder_combout\ : std_logic;
SIGNAL \State~16_combout\ : std_logic;
SIGNAL \State.Waiting~q\ : std_logic;
SIGNAL \Output_Controller:InReg[6]~0_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[6]~1_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[6]~2_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[4]~q\ : std_logic;
SIGNAL \DataOut[4]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[4]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[5]~feeder_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[5]~q\ : std_logic;
SIGNAL \DataOut[5]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[5]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[6]~q\ : std_logic;
SIGNAL \DataOut[6]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[6]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[7]~q\ : std_logic;
SIGNAL \DataOut[7]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[7]~reg0_q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[1]~q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[2]~q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[3]~q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[4]~q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[5]~q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[6]~q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[7]~q\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[8]~q\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[9]~q\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[10]~q\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[11]~q\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[12]~q\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[13]~q\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[14]~q\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[15]~q\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[16]~q\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[17]~q\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[18]~q\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[19]~q\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[20]~q\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[21]~q\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[22]~q\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[23]~q\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[24]~q\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[25]~q\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[26]~q\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[27]~q\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[28]~q\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[29]~q\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[30]~q\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[31]~q\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[0]~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Data_H~0_combout\ : std_logic;
SIGNAL \Address_H[0]~reg0_q\ : std_logic;
SIGNAL \Address_H[1]~reg0_q\ : std_logic;
SIGNAL \Address_H[2]~reg0_q\ : std_logic;
SIGNAL \Address_H[3]~reg0_q\ : std_logic;
SIGNAL \Address_H[4]~reg0_q\ : std_logic;
SIGNAL \Address_H[5]~reg0_q\ : std_logic;
SIGNAL \Address_H[6]~reg0_q\ : std_logic;
SIGNAL \Data_H~1_combout\ : std_logic;
SIGNAL \Address_H[7]~reg0_q\ : std_logic;
SIGNAL \Address_H[8]~reg0_q\ : std_logic;
SIGNAL \Data_H~2_combout\ : std_logic;
SIGNAL \Address_H[9]~reg0_q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[4]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[5]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[7]~q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[8]~q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[9]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[10]~q\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[11]~q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[12]~q\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[13]~q\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[14]~q\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[15]~q\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[16]~q\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[17]~q\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[18]~q\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[19]~q\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[20]~q\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[21]~q\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[22]~q\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[23]~q\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[24]~q\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[25]~q\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[26]~q\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[27]~q\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[28]~q\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[29]~q\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[30]~q\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[31]~q\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[2]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[3]~q\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \Data_V~0_combout\ : std_logic;
SIGNAL \Address_V[0]~reg0_q\ : std_logic;
SIGNAL \Data_V~1_combout\ : std_logic;
SIGNAL \Address_V[1]~reg0_q\ : std_logic;
SIGNAL \Data_V~2_combout\ : std_logic;
SIGNAL \Address_V[2]~reg0_q\ : std_logic;
SIGNAL \Data_V~3_combout\ : std_logic;
SIGNAL \Address_V[3]~reg0_q\ : std_logic;
SIGNAL \Data_V~4_combout\ : std_logic;
SIGNAL \Address_V[4]~reg0_q\ : std_logic;
SIGNAL \Data_V~5_combout\ : std_logic;
SIGNAL \Address_V[5]~reg0_q\ : std_logic;
SIGNAL \Data_V~6_combout\ : std_logic;
SIGNAL \Address_V[6]~reg0_q\ : std_logic;
SIGNAL \Data_V~7_combout\ : std_logic;
SIGNAL \Address_V[7]~reg0_q\ : std_logic;
SIGNAL \Data_V~8_combout\ : std_logic;
SIGNAL \Address_V[8]~reg0_q\ : std_logic;
SIGNAL \Data_V~9_combout\ : std_logic;
SIGNAL \Address_V[9]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~8_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \WriteData~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CS_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CS_n <= CS_n;
ww_CLK <= CLK;
ww_IO <= IO;
DataOut <= ww_DataOut;
Address_H <= ww_Address_H;
Address_V <= ww_Address_V;
WriteData <= ww_WriteData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CS_n~input_o\ <= NOT \CS_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y0_N2
\DataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\DataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\DataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\DataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\DataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\DataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\DataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => \DataOut[7]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\Address_H[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Address_H[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\Address_H[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\Address_H[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[3]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\Address_H[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[4]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\Address_H[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[5]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Address_H[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Address_H[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Address_H[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[8]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Address_H[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_H[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_H[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Address_V[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\Address_V[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Address_V[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Address_V[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\Address_V[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Address_V[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Address_V[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Address_V[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Address_V[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Address_V[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_V[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_V[9]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\WriteData~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WriteData~reg0_q\,
	devoe => ww_devoe,
	o => \WriteData~output_o\);

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

-- Location: IOIBUF_X20_Y0_N1
\IO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(0),
	o => \IO[0]~input_o\);

-- Location: LCCOMB_X39_Y3_N28
\DataOut[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[0]~reg0feeder_combout\ = \IO[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[0]~input_o\,
	combout => \DataOut[0]~reg0feeder_combout\);

-- Location: LCCOMB_X49_Y7_N12
\State_Controller:Clock_Count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[0]~0_combout\ = !\Clock_Count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Count~2_combout\,
	combout => \State_Controller:Clock_Count[0]~0_combout\);

-- Location: IOIBUF_X53_Y7_N8
\CS_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS_n,
	o => \CS_n~input_o\);

-- Location: FF_X49_Y7_N13
\State_Controller:Clock_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[0]~0_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[0]~q\);

-- Location: LCCOMB_X49_Y7_N6
\State~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~19_combout\ = (!\State_Controller:Clock_Count[9]~q\ & !\State_Controller:Clock_Count[30]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State_Controller:Clock_Count[9]~q\,
	datad => \State_Controller:Clock_Count[30]~q\,
	combout => \State~19_combout\);

-- Location: LCCOMB_X48_Y7_N18
\State_Controller:Clock_Count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[9]~1_combout\ = (\State_Controller:Clock_Count[8]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[9]~q\ & VCC))) # (!\State_Controller:Clock_Count[8]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[9]~q\)))))
-- \State_Controller:Clock_Count[9]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[9]~q\ & !\State_Controller:Clock_Count[8]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[9]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[8]~2\,
	combout => \State_Controller:Clock_Count[9]~1_combout\,
	cout => \State_Controller:Clock_Count[9]~2\);

-- Location: LCCOMB_X48_Y7_N20
\State_Controller:Clock_Count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[10]~1_combout\ = (\State_Controller:Clock_Count[9]~2\ & (((!\State_Controller:Clock_Count[10]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[9]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[10]~q\)) # (GND)))
-- \State_Controller:Clock_Count[10]~2\ = CARRY(((!\State_Controller:Clock_Count[9]~2\) # (!\State_Controller:Clock_Count[10]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[10]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[9]~2\,
	combout => \State_Controller:Clock_Count[10]~1_combout\,
	cout => \State_Controller:Clock_Count[10]~2\);

-- Location: FF_X48_Y7_N21
\State_Controller:Clock_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[10]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[10]~q\);

-- Location: LCCOMB_X48_Y7_N22
\State_Controller:Clock_Count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[11]~1_combout\ = (\State_Controller:Clock_Count[10]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[11]~q\ & VCC))) # (!\State_Controller:Clock_Count[10]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[11]~q\)))))
-- \State_Controller:Clock_Count[11]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[11]~q\ & !\State_Controller:Clock_Count[10]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[11]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[10]~2\,
	combout => \State_Controller:Clock_Count[11]~1_combout\,
	cout => \State_Controller:Clock_Count[11]~2\);

-- Location: FF_X48_Y7_N23
\State_Controller:Clock_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[11]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[11]~q\);

-- Location: LCCOMB_X48_Y7_N24
\State_Controller:Clock_Count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[12]~1_combout\ = (\State_Controller:Clock_Count[11]~2\ & (((!\State_Controller:Clock_Count[12]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[11]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[12]~q\)) # (GND)))
-- \State_Controller:Clock_Count[12]~2\ = CARRY(((!\State_Controller:Clock_Count[11]~2\) # (!\State_Controller:Clock_Count[12]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[12]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[11]~2\,
	combout => \State_Controller:Clock_Count[12]~1_combout\,
	cout => \State_Controller:Clock_Count[12]~2\);

-- Location: FF_X48_Y7_N25
\State_Controller:Clock_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[12]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[12]~q\);

-- Location: LCCOMB_X48_Y7_N26
\State_Controller:Clock_Count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[13]~1_combout\ = (\State_Controller:Clock_Count[12]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[13]~q\ & VCC))) # (!\State_Controller:Clock_Count[12]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[13]~q\)))))
-- \State_Controller:Clock_Count[13]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[13]~q\ & !\State_Controller:Clock_Count[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[13]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[12]~2\,
	combout => \State_Controller:Clock_Count[13]~1_combout\,
	cout => \State_Controller:Clock_Count[13]~2\);

-- Location: FF_X48_Y7_N27
\State_Controller:Clock_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[13]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[13]~q\);

-- Location: LCCOMB_X48_Y7_N28
\State_Controller:Clock_Count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[14]~1_combout\ = (\State_Controller:Clock_Count[13]~2\ & (((!\State_Controller:Clock_Count[14]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[13]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[14]~q\)) # (GND)))
-- \State_Controller:Clock_Count[14]~2\ = CARRY(((!\State_Controller:Clock_Count[13]~2\) # (!\State_Controller:Clock_Count[14]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[14]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[13]~2\,
	combout => \State_Controller:Clock_Count[14]~1_combout\,
	cout => \State_Controller:Clock_Count[14]~2\);

-- Location: FF_X48_Y7_N29
\State_Controller:Clock_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[14]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[14]~q\);

-- Location: LCCOMB_X48_Y7_N30
\State_Controller:Clock_Count[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[15]~1_combout\ = (\State_Controller:Clock_Count[14]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[15]~q\ & VCC))) # (!\State_Controller:Clock_Count[14]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[15]~q\)))))
-- \State_Controller:Clock_Count[15]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[15]~q\ & !\State_Controller:Clock_Count[14]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[15]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[14]~2\,
	combout => \State_Controller:Clock_Count[15]~1_combout\,
	cout => \State_Controller:Clock_Count[15]~2\);

-- Location: FF_X48_Y7_N31
\State_Controller:Clock_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[15]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[15]~q\);

-- Location: LCCOMB_X48_Y6_N0
\State_Controller:Clock_Count[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[16]~1_combout\ = (\State_Controller:Clock_Count[15]~2\ & (((!\State_Controller:Clock_Count[16]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[15]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[16]~q\)) # (GND)))
-- \State_Controller:Clock_Count[16]~2\ = CARRY(((!\State_Controller:Clock_Count[15]~2\) # (!\State_Controller:Clock_Count[16]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[16]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[15]~2\,
	combout => \State_Controller:Clock_Count[16]~1_combout\,
	cout => \State_Controller:Clock_Count[16]~2\);

-- Location: FF_X48_Y6_N1
\State_Controller:Clock_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[16]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[16]~q\);

-- Location: LCCOMB_X48_Y6_N2
\State_Controller:Clock_Count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[17]~1_combout\ = (\State_Controller:Clock_Count[16]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[17]~q\ & VCC))) # (!\State_Controller:Clock_Count[16]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[17]~q\)))))
-- \State_Controller:Clock_Count[17]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[17]~q\ & !\State_Controller:Clock_Count[16]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[17]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[16]~2\,
	combout => \State_Controller:Clock_Count[17]~1_combout\,
	cout => \State_Controller:Clock_Count[17]~2\);

-- Location: FF_X48_Y6_N3
\State_Controller:Clock_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[17]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[17]~q\);

-- Location: LCCOMB_X48_Y6_N4
\State_Controller:Clock_Count[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[18]~1_combout\ = (\State_Controller:Clock_Count[17]~2\ & (((!\State_Controller:Clock_Count[18]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[17]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[18]~q\)) # (GND)))
-- \State_Controller:Clock_Count[18]~2\ = CARRY(((!\State_Controller:Clock_Count[17]~2\) # (!\State_Controller:Clock_Count[18]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[18]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[17]~2\,
	combout => \State_Controller:Clock_Count[18]~1_combout\,
	cout => \State_Controller:Clock_Count[18]~2\);

-- Location: FF_X48_Y6_N5
\State_Controller:Clock_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[18]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[18]~q\);

-- Location: LCCOMB_X48_Y6_N6
\State_Controller:Clock_Count[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[19]~1_combout\ = (\State_Controller:Clock_Count[18]~2\ & (\State_Controller:Clock_Count[19]~q\ & (\Clock_Count~1_combout\ & VCC))) # (!\State_Controller:Clock_Count[18]~2\ & ((((\State_Controller:Clock_Count[19]~q\ & 
-- \Clock_Count~1_combout\)))))
-- \State_Controller:Clock_Count[19]~2\ = CARRY((\State_Controller:Clock_Count[19]~q\ & (\Clock_Count~1_combout\ & !\State_Controller:Clock_Count[18]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[19]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[18]~2\,
	combout => \State_Controller:Clock_Count[19]~1_combout\,
	cout => \State_Controller:Clock_Count[19]~2\);

-- Location: FF_X48_Y6_N7
\State_Controller:Clock_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[19]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[19]~q\);

-- Location: LCCOMB_X48_Y6_N8
\State_Controller:Clock_Count[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[20]~1_combout\ = (\State_Controller:Clock_Count[19]~2\ & (((!\State_Controller:Clock_Count[20]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[19]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[20]~q\)) # (GND)))
-- \State_Controller:Clock_Count[20]~2\ = CARRY(((!\State_Controller:Clock_Count[19]~2\) # (!\State_Controller:Clock_Count[20]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[20]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[19]~2\,
	combout => \State_Controller:Clock_Count[20]~1_combout\,
	cout => \State_Controller:Clock_Count[20]~2\);

-- Location: FF_X48_Y6_N9
\State_Controller:Clock_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[20]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[20]~q\);

-- Location: LCCOMB_X48_Y6_N10
\State_Controller:Clock_Count[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[21]~1_combout\ = (\State_Controller:Clock_Count[20]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[21]~q\ & VCC))) # (!\State_Controller:Clock_Count[20]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[21]~q\)))))
-- \State_Controller:Clock_Count[21]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[21]~q\ & !\State_Controller:Clock_Count[20]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[21]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[20]~2\,
	combout => \State_Controller:Clock_Count[21]~1_combout\,
	cout => \State_Controller:Clock_Count[21]~2\);

-- Location: FF_X48_Y6_N11
\State_Controller:Clock_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[21]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[21]~q\);

-- Location: LCCOMB_X48_Y6_N12
\State_Controller:Clock_Count[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[22]~1_combout\ = (\State_Controller:Clock_Count[21]~2\ & (((!\State_Controller:Clock_Count[22]~q\)) # (!\Clock_Count~1_combout\))) # (!\State_Controller:Clock_Count[21]~2\ & (((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[22]~q\)) # (GND)))
-- \State_Controller:Clock_Count[22]~2\ = CARRY(((!\State_Controller:Clock_Count[21]~2\) # (!\State_Controller:Clock_Count[22]~q\)) # (!\Clock_Count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[22]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[21]~2\,
	combout => \State_Controller:Clock_Count[22]~1_combout\,
	cout => \State_Controller:Clock_Count[22]~2\);

-- Location: FF_X48_Y6_N13
\State_Controller:Clock_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[22]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[22]~q\);

-- Location: LCCOMB_X48_Y6_N14
\State_Controller:Clock_Count[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[23]~1_combout\ = (\State_Controller:Clock_Count[22]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[23]~q\ & VCC))) # (!\State_Controller:Clock_Count[22]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[23]~q\)))))
-- \State_Controller:Clock_Count[23]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[23]~q\ & !\State_Controller:Clock_Count[22]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[23]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[22]~2\,
	combout => \State_Controller:Clock_Count[23]~1_combout\,
	cout => \State_Controller:Clock_Count[23]~2\);

-- Location: FF_X48_Y6_N15
\State_Controller:Clock_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[23]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[23]~q\);

-- Location: LCCOMB_X48_Y6_N16
\State_Controller:Clock_Count[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[24]~1_combout\ = (\State_Controller:Clock_Count[23]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[24]~q\))) # (!\State_Controller:Clock_Count[23]~2\ & (((\State_Controller:Clock_Count[24]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[24]~2\ = CARRY(((!\State_Controller:Clock_Count[23]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[24]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[23]~2\,
	combout => \State_Controller:Clock_Count[24]~1_combout\,
	cout => \State_Controller:Clock_Count[24]~2\);

-- Location: FF_X48_Y6_N17
\State_Controller:Clock_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[24]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[24]~q\);

-- Location: LCCOMB_X48_Y6_N18
\State_Controller:Clock_Count[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[25]~1_combout\ = (\State_Controller:Clock_Count[24]~2\ & (\State_Controller:Clock_Count[25]~q\ & (\Clock_Count~1_combout\ & VCC))) # (!\State_Controller:Clock_Count[24]~2\ & ((((\State_Controller:Clock_Count[25]~q\ & 
-- \Clock_Count~1_combout\)))))
-- \State_Controller:Clock_Count[25]~2\ = CARRY((\State_Controller:Clock_Count[25]~q\ & (\Clock_Count~1_combout\ & !\State_Controller:Clock_Count[24]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[25]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[24]~2\,
	combout => \State_Controller:Clock_Count[25]~1_combout\,
	cout => \State_Controller:Clock_Count[25]~2\);

-- Location: FF_X48_Y6_N19
\State_Controller:Clock_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[25]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[25]~q\);

-- Location: LCCOMB_X48_Y6_N20
\State_Controller:Clock_Count[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[26]~1_combout\ = (\State_Controller:Clock_Count[25]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[26]~q\))) # (!\State_Controller:Clock_Count[25]~2\ & (((\State_Controller:Clock_Count[26]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[26]~2\ = CARRY(((!\State_Controller:Clock_Count[25]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[26]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[25]~2\,
	combout => \State_Controller:Clock_Count[26]~1_combout\,
	cout => \State_Controller:Clock_Count[26]~2\);

-- Location: FF_X48_Y6_N21
\State_Controller:Clock_Count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[26]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[26]~q\);

-- Location: LCCOMB_X48_Y6_N22
\State_Controller:Clock_Count[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[27]~1_combout\ = (\State_Controller:Clock_Count[26]~2\ & (\State_Controller:Clock_Count[27]~q\ & (\Clock_Count~1_combout\ & VCC))) # (!\State_Controller:Clock_Count[26]~2\ & ((((\State_Controller:Clock_Count[27]~q\ & 
-- \Clock_Count~1_combout\)))))
-- \State_Controller:Clock_Count[27]~2\ = CARRY((\State_Controller:Clock_Count[27]~q\ & (\Clock_Count~1_combout\ & !\State_Controller:Clock_Count[26]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[27]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[26]~2\,
	combout => \State_Controller:Clock_Count[27]~1_combout\,
	cout => \State_Controller:Clock_Count[27]~2\);

-- Location: FF_X48_Y6_N23
\State_Controller:Clock_Count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[27]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[27]~q\);

-- Location: LCCOMB_X48_Y6_N24
\State_Controller:Clock_Count[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[28]~1_combout\ = (\State_Controller:Clock_Count[27]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[28]~q\))) # (!\State_Controller:Clock_Count[27]~2\ & (((\State_Controller:Clock_Count[28]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[28]~2\ = CARRY(((!\State_Controller:Clock_Count[27]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[28]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[27]~2\,
	combout => \State_Controller:Clock_Count[28]~1_combout\,
	cout => \State_Controller:Clock_Count[28]~2\);

-- Location: FF_X48_Y6_N25
\State_Controller:Clock_Count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[28]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[28]~q\);

-- Location: LCCOMB_X48_Y6_N26
\State_Controller:Clock_Count[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[29]~1_combout\ = (\State_Controller:Clock_Count[28]~2\ & (\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[29]~q\ & VCC))) # (!\State_Controller:Clock_Count[28]~2\ & ((((\Clock_Count~1_combout\ & 
-- \State_Controller:Clock_Count[29]~q\)))))
-- \State_Controller:Clock_Count[29]~2\ = CARRY((\Clock_Count~1_combout\ & (\State_Controller:Clock_Count[29]~q\ & !\State_Controller:Clock_Count[28]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~1_combout\,
	datab => \State_Controller:Clock_Count[29]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[28]~2\,
	combout => \State_Controller:Clock_Count[29]~1_combout\,
	cout => \State_Controller:Clock_Count[29]~2\);

-- Location: FF_X48_Y6_N27
\State_Controller:Clock_Count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[29]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[29]~q\);

-- Location: LCCOMB_X49_Y7_N20
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\State_Controller:Clock_Count[27]~q\ & (!\State_Controller:Clock_Count[28]~q\ & (!\State_Controller:Clock_Count[29]~q\ & !\State_Controller:Clock_Count[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[27]~q\,
	datab => \State_Controller:Clock_Count[28]~q\,
	datac => \State_Controller:Clock_Count[29]~q\,
	datad => \State_Controller:Clock_Count[26]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y7_N4
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\State_Controller:Clock_Count[5]~q\ & (!\State_Controller:Clock_Count[7]~q\ & (!\State_Controller:Clock_Count[4]~q\ & !\State_Controller:Clock_Count[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[5]~q\,
	datab => \State_Controller:Clock_Count[7]~q\,
	datac => \State_Controller:Clock_Count[4]~q\,
	datad => \State_Controller:Clock_Count[6]~q\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X47_Y7_N30
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!\State_Controller:Clock_Count[8]~q\ & (\LessThan4~0_combout\ & ((!\State_Controller:Clock_Count[3]~q\) # (!\State_Controller:Clock_Count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[2]~q\,
	datab => \State_Controller:Clock_Count[8]~q\,
	datac => \LessThan4~0_combout\,
	datad => \State_Controller:Clock_Count[3]~q\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X47_Y7_N12
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\State_Controller:Clock_Count[10]~q\ & (!\State_Controller:Clock_Count[13]~q\ & (!\State_Controller:Clock_Count[11]~q\ & !\State_Controller:Clock_Count[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[10]~q\,
	datab => \State_Controller:Clock_Count[13]~q\,
	datac => \State_Controller:Clock_Count[11]~q\,
	datad => \State_Controller:Clock_Count[12]~q\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X47_Y7_N14
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\State_Controller:Clock_Count[15]~q\ & (!\State_Controller:Clock_Count[14]~q\ & (!\State_Controller:Clock_Count[17]~q\ & !\State_Controller:Clock_Count[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[15]~q\,
	datab => \State_Controller:Clock_Count[14]~q\,
	datac => \State_Controller:Clock_Count[17]~q\,
	datad => \State_Controller:Clock_Count[16]~q\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X47_Y7_N8
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!\State_Controller:Clock_Count[20]~q\ & (!\State_Controller:Clock_Count[18]~q\ & (!\State_Controller:Clock_Count[19]~q\ & !\State_Controller:Clock_Count[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[20]~q\,
	datab => \State_Controller:Clock_Count[18]~q\,
	datac => \State_Controller:Clock_Count[19]~q\,
	datad => \State_Controller:Clock_Count[21]~q\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X47_Y7_N6
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!\State_Controller:Clock_Count[22]~q\ & (!\State_Controller:Clock_Count[24]~q\ & (!\State_Controller:Clock_Count[23]~q\ & !\State_Controller:Clock_Count[25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[22]~q\,
	datab => \State_Controller:Clock_Count[24]~q\,
	datac => \State_Controller:Clock_Count[23]~q\,
	datad => \State_Controller:Clock_Count[25]~q\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X47_Y7_N16
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\LessThan2~1_combout\ & (\LessThan2~2_combout\ & (\LessThan2~3_combout\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X49_Y7_N8
\State~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~20_combout\ = (\State~19_combout\ & (\LessThan2~0_combout\ & (\LessThan4~1_combout\ & \LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~19_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan2~5_combout\,
	combout => \State~20_combout\);

-- Location: LCCOMB_X49_Y7_N26
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!\State_Controller:Clock_Count[7]~q\ & (!\State_Controller:Clock_Count[5]~q\ & !\State_Controller:Clock_Count[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[7]~q\,
	datac => \State_Controller:Clock_Count[5]~q\,
	datad => \State_Controller:Clock_Count[4]~q\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X49_Y7_N4
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!\State_Controller:Clock_Count[8]~q\ & (!\State_Controller:Clock_Count[9]~q\ & (\LessThan2~6_combout\ & !\State_Controller:Clock_Count[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[8]~q\,
	datab => \State_Controller:Clock_Count[9]~q\,
	datac => \LessThan2~6_combout\,
	datad => \State_Controller:Clock_Count[6]~q\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X49_Y7_N18
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~0_combout\ & (\LessThan2~7_combout\ & \LessThan2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X49_Y7_N22
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~8_combout\ & (((!\State_Controller:Clock_Count[1]~q\ & !\State_Controller:Clock_Count[2]~q\)) # (!\State_Controller:Clock_Count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[1]~q\,
	datab => \State_Controller:Clock_Count[3]~q\,
	datac => \State_Controller:Clock_Count[2]~q\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X49_Y7_N28
\Clock_Count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~0_combout\ = (\State~20_combout\) # (((!\State_Controller:Clock_Count[30]~q\ & \LessThan2~9_combout\)) # (!\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \State~20_combout\,
	datac => \LessThan2~9_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Clock_Count~0_combout\);

-- Location: LCCOMB_X48_Y7_N0
\Clock_Count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~3_combout\ = (\State_Controller:Clock_Count[1]~q\ & ((\LessThan4~2_combout\) # ((\Clock_Count~0_combout\) # (!\State~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \State_Controller:Clock_Count[1]~q\,
	datac => \State~12_combout\,
	datad => \Clock_Count~0_combout\,
	combout => \Clock_Count~3_combout\);

-- Location: LCCOMB_X48_Y7_N2
\State_Controller:Clock_Count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[1]~1_combout\ = (\Clock_Count~2_combout\ & (\Clock_Count~3_combout\ $ (VCC))) # (!\Clock_Count~2_combout\ & (\Clock_Count~3_combout\ & VCC))
-- \State_Controller:Clock_Count[1]~2\ = CARRY((\Clock_Count~2_combout\ & \Clock_Count~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~2_combout\,
	datab => \Clock_Count~3_combout\,
	datad => VCC,
	combout => \State_Controller:Clock_Count[1]~1_combout\,
	cout => \State_Controller:Clock_Count[1]~2\);

-- Location: FF_X48_Y7_N3
\State_Controller:Clock_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[1]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[1]~q\);

-- Location: LCCOMB_X49_Y7_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\State_Controller:Clock_Count[3]~q\) # ((\State_Controller:Clock_Count[2]~q\) # (\State_Controller:Clock_Count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State_Controller:Clock_Count[3]~q\,
	datac => \State_Controller:Clock_Count[2]~q\,
	datad => \State_Controller:Clock_Count[1]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y6_N28
\State_Controller:Clock_Count[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[30]~1_combout\ = (\State_Controller:Clock_Count[29]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[30]~q\))) # (!\State_Controller:Clock_Count[29]~2\ & (((\State_Controller:Clock_Count[30]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[30]~2\ = CARRY(((!\State_Controller:Clock_Count[29]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[29]~2\,
	combout => \State_Controller:Clock_Count[30]~1_combout\,
	cout => \State_Controller:Clock_Count[30]~2\);

-- Location: LCCOMB_X48_Y6_N30
\State_Controller:Clock_Count[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[31]~1_combout\ = \State_Controller:Clock_Count[31]~q\ $ (!\State_Controller:Clock_Count[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[31]~q\,
	cin => \State_Controller:Clock_Count[30]~2\,
	combout => \State_Controller:Clock_Count[31]~1_combout\);

-- Location: FF_X48_Y6_N31
\State_Controller:Clock_Count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[31]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[31]~q\);

-- Location: LCCOMB_X49_Y7_N14
\State~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~12_combout\ = (!\State_Controller:Clock_Count[31]~q\ & ((\State_Controller:Clock_Count[30]~q\) # ((\LessThan0~0_combout\) # (!\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \LessThan0~0_combout\,
	datac => \State_Controller:Clock_Count[31]~q\,
	datad => \LessThan2~8_combout\,
	combout => \State~12_combout\);

-- Location: LCCOMB_X49_Y7_N30
\Clock_Count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~2_combout\ = (\State_Controller:Clock_Count[0]~q\ & ((\LessThan4~2_combout\) # ((\Clock_Count~0_combout\) # (!\State~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[0]~q\,
	datab => \LessThan4~2_combout\,
	datac => \State~12_combout\,
	datad => \Clock_Count~0_combout\,
	combout => \Clock_Count~2_combout\);

-- Location: LCCOMB_X48_Y7_N4
\State_Controller:Clock_Count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[2]~1_combout\ = (\State_Controller:Clock_Count[1]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[2]~q\))) # (!\State_Controller:Clock_Count[1]~2\ & (((\State_Controller:Clock_Count[2]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[2]~2\ = CARRY(((!\State_Controller:Clock_Count[1]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[2]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[1]~2\,
	combout => \State_Controller:Clock_Count[2]~1_combout\,
	cout => \State_Controller:Clock_Count[2]~2\);

-- Location: FF_X48_Y7_N5
\State_Controller:Clock_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[2]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[2]~q\);

-- Location: LCCOMB_X48_Y7_N6
\State_Controller:Clock_Count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[3]~1_combout\ = (\State_Controller:Clock_Count[2]~2\ & (\State_Controller:Clock_Count[3]~q\ & (\Clock_Count~1_combout\ & VCC))) # (!\State_Controller:Clock_Count[2]~2\ & ((((\State_Controller:Clock_Count[3]~q\ & 
-- \Clock_Count~1_combout\)))))
-- \State_Controller:Clock_Count[3]~2\ = CARRY((\State_Controller:Clock_Count[3]~q\ & (\Clock_Count~1_combout\ & !\State_Controller:Clock_Count[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[3]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[2]~2\,
	combout => \State_Controller:Clock_Count[3]~1_combout\,
	cout => \State_Controller:Clock_Count[3]~2\);

-- Location: FF_X48_Y7_N7
\State_Controller:Clock_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[3]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[3]~q\);

-- Location: LCCOMB_X48_Y7_N8
\State_Controller:Clock_Count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[4]~1_combout\ = (\State_Controller:Clock_Count[3]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[4]~q\))) # (!\State_Controller:Clock_Count[3]~2\ & (((\State_Controller:Clock_Count[4]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[4]~2\ = CARRY(((!\State_Controller:Clock_Count[3]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[4]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[3]~2\,
	combout => \State_Controller:Clock_Count[4]~1_combout\,
	cout => \State_Controller:Clock_Count[4]~2\);

-- Location: FF_X48_Y7_N9
\State_Controller:Clock_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[4]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[4]~q\);

-- Location: LCCOMB_X48_Y7_N10
\State_Controller:Clock_Count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[5]~1_combout\ = (\State_Controller:Clock_Count[4]~2\ & (\State_Controller:Clock_Count[5]~q\ & (\Clock_Count~1_combout\ & VCC))) # (!\State_Controller:Clock_Count[4]~2\ & ((((\State_Controller:Clock_Count[5]~q\ & 
-- \Clock_Count~1_combout\)))))
-- \State_Controller:Clock_Count[5]~2\ = CARRY((\State_Controller:Clock_Count[5]~q\ & (\Clock_Count~1_combout\ & !\State_Controller:Clock_Count[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[5]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[4]~2\,
	combout => \State_Controller:Clock_Count[5]~1_combout\,
	cout => \State_Controller:Clock_Count[5]~2\);

-- Location: FF_X48_Y7_N11
\State_Controller:Clock_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[5]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[5]~q\);

-- Location: LCCOMB_X48_Y7_N12
\State_Controller:Clock_Count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[6]~1_combout\ = (\State_Controller:Clock_Count[5]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[6]~q\))) # (!\State_Controller:Clock_Count[5]~2\ & (((\State_Controller:Clock_Count[6]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[6]~2\ = CARRY(((!\State_Controller:Clock_Count[5]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[6]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[5]~2\,
	combout => \State_Controller:Clock_Count[6]~1_combout\,
	cout => \State_Controller:Clock_Count[6]~2\);

-- Location: FF_X48_Y7_N13
\State_Controller:Clock_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[6]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[6]~q\);

-- Location: LCCOMB_X48_Y7_N14
\State_Controller:Clock_Count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[7]~1_combout\ = (\State_Controller:Clock_Count[6]~2\ & (\State_Controller:Clock_Count[7]~q\ & (\Clock_Count~1_combout\ & VCC))) # (!\State_Controller:Clock_Count[6]~2\ & ((((\State_Controller:Clock_Count[7]~q\ & 
-- \Clock_Count~1_combout\)))))
-- \State_Controller:Clock_Count[7]~2\ = CARRY((\State_Controller:Clock_Count[7]~q\ & (\Clock_Count~1_combout\ & !\State_Controller:Clock_Count[6]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[7]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[6]~2\,
	combout => \State_Controller:Clock_Count[7]~1_combout\,
	cout => \State_Controller:Clock_Count[7]~2\);

-- Location: FF_X48_Y7_N15
\State_Controller:Clock_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[7]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[7]~q\);

-- Location: LCCOMB_X48_Y7_N16
\State_Controller:Clock_Count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[8]~1_combout\ = (\State_Controller:Clock_Count[7]~2\ & (((!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[8]~q\))) # (!\State_Controller:Clock_Count[7]~2\ & (((\State_Controller:Clock_Count[8]~q\ & 
-- \Clock_Count~1_combout\)) # (GND)))
-- \State_Controller:Clock_Count[8]~2\ = CARRY(((!\State_Controller:Clock_Count[7]~2\) # (!\Clock_Count~1_combout\)) # (!\State_Controller:Clock_Count[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[8]~q\,
	datab => \Clock_Count~1_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[7]~2\,
	combout => \State_Controller:Clock_Count[8]~1_combout\,
	cout => \State_Controller:Clock_Count[8]~2\);

-- Location: FF_X48_Y7_N17
\State_Controller:Clock_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[8]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[8]~q\);

-- Location: FF_X48_Y7_N19
\State_Controller:Clock_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[9]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[9]~q\);

-- Location: LCCOMB_X47_Y7_N2
\State~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~8_combout\ = (!\State_Controller:Clock_Count[30]~q\ & (\LessThan2~0_combout\ & \LessThan2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~5_combout\,
	combout => \State~8_combout\);

-- Location: LCCOMB_X47_Y7_N0
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\State~8_combout\ & ((\LessThan4~1_combout\) # (!\State_Controller:Clock_Count[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[9]~q\,
	datac => \LessThan4~1_combout\,
	datad => \State~8_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X49_Y7_N10
\Clock_Count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~1_combout\ = (\LessThan4~2_combout\) # ((\Clock_Count~0_combout\) # (!\State~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => \State~12_combout\,
	datad => \Clock_Count~0_combout\,
	combout => \Clock_Count~1_combout\);

-- Location: FF_X48_Y6_N29
\State_Controller:Clock_Count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State_Controller:Clock_Count[30]~1_combout\,
	ena => \ALT_INV_CS_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State_Controller:Clock_Count[30]~q\);

-- Location: LCCOMB_X49_Y7_N16
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\State_Controller:Clock_Count[30]~q\) # ((\State_Controller:Clock_Count[3]~q\) # (!\LessThan2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datac => \State_Controller:Clock_Count[3]~q\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y7_N24
\State~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~17_combout\ = (!\LessThan1~0_combout\ & (\State~12_combout\ & !\CS_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datac => \State~12_combout\,
	datad => \CS_n~input_o\,
	combout => \State~17_combout\);

-- Location: FF_X49_Y7_N25
\State.Address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Address~q\);

-- Location: LCCOMB_X45_Y7_N14
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Output_Controller:State_Count[0]~q\ & (!\Output_Controller:State_Count[2]~q\ & !\Output_Controller:State_Count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~q\,
	datad => \Output_Controller:State_Count[1]~q\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X45_Y7_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Output_Controller:State_Count[0]~q\ & (!\Output_Controller:State_Count[1]~q\ & !\Output_Controller:State_Count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X47_Y7_N10
\State~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~13_combout\ = (!\CS_n~input_o\ & !\State~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS_n~input_o\,
	datad => \State~12_combout\,
	combout => \State~13_combout\);

-- Location: FF_X47_Y7_N11
\State.Instruction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Instruction~q\);

-- Location: LCCOMB_X47_Y7_N26
\State~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~14_combout\ = (\State_Controller:Clock_Count[3]~q\ & (!\State_Controller:Clock_Count[1]~q\ & (!\CS_n~input_o\ & !\State_Controller:Clock_Count[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[3]~q\,
	datab => \State_Controller:Clock_Count[1]~q\,
	datac => \CS_n~input_o\,
	datad => \State_Controller:Clock_Count[30]~q\,
	combout => \State~14_combout\);

-- Location: LCCOMB_X47_Y7_N24
\State~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~15_combout\ = (\State~14_combout\ & (\LessThan2~8_combout\ & (!\State_Controller:Clock_Count[2]~q\ & \State~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~14_combout\,
	datab => \LessThan2~8_combout\,
	datac => \State_Controller:Clock_Count[2]~q\,
	datad => \State~12_combout\,
	combout => \State~15_combout\);

-- Location: FF_X47_Y7_N25
\State.Alternate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Alternate~q\);

-- Location: LCCOMB_X47_Y7_N22
\State~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~9_combout\ = (!\State_Controller:Clock_Count[3]~q\) # (!\State_Controller:Clock_Count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State_Controller:Clock_Count[2]~q\,
	datad => \State_Controller:Clock_Count[3]~q\,
	combout => \State~9_combout\);

-- Location: LCCOMB_X47_Y7_N20
\State~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~10_combout\ = (!\State_Controller:Clock_Count[31]~q\ & ((\State_Controller:Clock_Count[30]~q\) # ((!\State~9_combout\) # (!\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \LessThan2~8_combout\,
	datac => \State~9_combout\,
	datad => \State_Controller:Clock_Count[31]~q\,
	combout => \State~10_combout\);

-- Location: LCCOMB_X47_Y7_N28
\State~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~11_combout\ = (\LessThan4~2_combout\ & (!\CS_n~input_o\ & \State~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => \CS_n~input_o\,
	datad => \State~10_combout\,
	combout => \State~11_combout\);

-- Location: FF_X47_Y7_N29
\State.Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Data~q\);

-- Location: LCCOMB_X46_Y7_N30
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\State.Instruction~q\) # ((\State.Alternate~q\) # (\State.Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Instruction~q\,
	datac => \State.Alternate~q\,
	datad => \State.Data~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X50_Y7_N24
\State~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~18_combout\ = (!\CS_n~input_o\ & \State~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CS_n~input_o\,
	datad => \State~12_combout\,
	combout => \State~18_combout\);

-- Location: LCCOMB_X49_Y7_N2
\State~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~21_combout\ = (!\LessThan2~9_combout\ & (\State~20_combout\ & (\LessThan1~0_combout\ & \State~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \State~20_combout\,
	datac => \LessThan1~0_combout\,
	datad => \State~18_combout\,
	combout => \State~21_combout\);

-- Location: FF_X49_Y7_N3
\State.Dummy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Dummy~q\);

-- Location: LCCOMB_X46_Y7_N0
\Output_Controller:State_Count[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~4_combout\ = (\State.Dummy~q\) # ((!\Equal7~0_combout\ & (!\Equal0~0_combout\ & \Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Selector36~0_combout\,
	datad => \State.Dummy~q\,
	combout => \Output_Controller:State_Count[2]~4_combout\);

-- Location: LCCOMB_X46_Y7_N12
\Output_Controller:State_Count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[1]~1_combout\ = (\Output_Controller:State_Count[2]~4_combout\) # ((!\Output_Controller:State_Count[0]~q\ & (!\Output_Controller:State_Count[2]~q\ & \State.Address~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~4_combout\,
	datac => \Output_Controller:State_Count[2]~q\,
	datad => \State.Address~q\,
	combout => \Output_Controller:State_Count[1]~1_combout\);

-- Location: LCCOMB_X45_Y7_N24
\Output_Controller:State_Count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[1]~0_combout\ = (\Output_Controller:State_Count[2]~q\ & ((\Output_Controller:State_Count[1]~q\))) # (!\Output_Controller:State_Count[2]~q\ & (\Output_Controller:State_Count[0]~q\ & !\Output_Controller:State_Count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~q\,
	datad => \Output_Controller:State_Count[1]~q\,
	combout => \Output_Controller:State_Count[1]~0_combout\);

-- Location: LCCOMB_X46_Y7_N2
\Output_Controller:State_Count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~5_combout\ = (!\Output_Controller:State_Count[2]~4_combout\ & \State.Address~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:State_Count[2]~4_combout\,
	datad => \State.Address~q\,
	combout => \Output_Controller:State_Count[2]~5_combout\);

-- Location: LCCOMB_X46_Y7_N16
\Output_Controller:State_Count[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[1]~2_combout\ = (\Output_Controller:State_Count[1]~1_combout\ & ((\Output_Controller:State_Count[1]~q\) # ((\Output_Controller:State_Count[1]~0_combout\ & \Output_Controller:State_Count[2]~5_combout\)))) # 
-- (!\Output_Controller:State_Count[1]~1_combout\ & (\Output_Controller:State_Count[1]~0_combout\ & ((\Output_Controller:State_Count[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[1]~1_combout\,
	datab => \Output_Controller:State_Count[1]~0_combout\,
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~5_combout\,
	combout => \Output_Controller:State_Count[1]~2_combout\);

-- Location: FF_X46_Y7_N17
\Output_Controller:State_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:State_Count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:State_Count[1]~q\);

-- Location: LCCOMB_X46_Y7_N22
\Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\State.Address~q\ & (\Output_Controller:State_Count[0]~q\ $ (((!\Output_Controller:State_Count[1]~q\) # (!\Output_Controller:State_Count[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[2]~q\,
	datab => \State.Address~q\,
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[0]~q\,
	combout => \Selector36~2_combout\);

-- Location: LCCOMB_X46_Y7_N20
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\Selector36~0_combout\ & ((\Equal0~0_combout\) # ((!\Equal7~0_combout\ & \Output_Controller:State_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Selector36~0_combout\,
	datad => \Output_Controller:State_Count[0]~q\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X46_Y7_N6
\Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~3_combout\ = (\Selector36~2_combout\) # ((\Selector36~1_combout\) # ((\Output_Controller:State_Count[0]~q\ & \State.Dummy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~2_combout\,
	datab => \Selector36~1_combout\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \State.Dummy~q\,
	combout => \Selector36~3_combout\);

-- Location: FF_X46_Y7_N7
\Output_Controller:State_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector36~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:State_Count[0]~q\);

-- Location: LCCOMB_X46_Y7_N18
\Output_Controller:State_Count[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~6_combout\ = (\Output_Controller:State_Count[2]~q\ & ((\Output_Controller:State_Count[2]~4_combout\) # ((!\Output_Controller:State_Count[0]~q\ & \State.Address~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~4_combout\,
	datac => \Output_Controller:State_Count[2]~q\,
	datad => \State.Address~q\,
	combout => \Output_Controller:State_Count[2]~6_combout\);

-- Location: LCCOMB_X46_Y7_N26
\Output_Controller:State_Count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~7_combout\ = (\Output_Controller:State_Count[2]~6_combout\) # ((\Output_Controller:State_Count[0]~q\ & (\Output_Controller:State_Count[1]~q\ & \Output_Controller:State_Count[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~6_combout\,
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~5_combout\,
	combout => \Output_Controller:State_Count[2]~7_combout\);

-- Location: FF_X46_Y7_N27
\Output_Controller:State_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:State_Count[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:State_Count[2]~q\);

-- Location: LCCOMB_X46_Y7_N24
\DataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[0]~0_combout\ = (!\Output_Controller:State_Count[2]~q\ & (!\Output_Controller:State_Count[1]~q\ & (\Output_Controller:State_Count[0]~q\ & \State.Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[2]~q\,
	datab => \Output_Controller:State_Count[1]~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \State.Data~q\,
	combout => \DataOut[0]~0_combout\);

-- Location: FF_X39_Y3_N29
\DataOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[0]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[0]~reg0_q\);

-- Location: IOIBUF_X43_Y0_N15
\IO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(1),
	o => \IO[1]~input_o\);

-- Location: LCCOMB_X43_Y3_N8
\DataOut[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[1]~reg0feeder_combout\ = \IO[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[1]~input_o\,
	combout => \DataOut[1]~reg0feeder_combout\);

-- Location: FF_X43_Y3_N9
\DataOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[1]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[1]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N8
\IO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(2),
	o => \IO[2]~input_o\);

-- Location: FF_X46_Y3_N29
\DataOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \IO[2]~input_o\,
	sload => VCC,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[2]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N8
\IO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(3),
	o => \IO[3]~input_o\);

-- Location: LCCOMB_X46_Y3_N26
\DataOut[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[3]~reg0feeder_combout\ = \IO[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[3]~input_o\,
	combout => \DataOut[3]~reg0feeder_combout\);

-- Location: FF_X46_Y3_N27
\DataOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[3]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[3]~reg0_q\);

-- Location: LCCOMB_X43_Y3_N0
\Output_Controller:InReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[4]~feeder_combout\ = \IO[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[0]~input_o\,
	combout => \Output_Controller:InReg[4]~feeder_combout\);

-- Location: LCCOMB_X47_Y7_N18
\State~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~16_combout\ = (!\CS_n~input_o\ & ((\LessThan4~2_combout\) # (!\State~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => \CS_n~input_o\,
	datad => \State~10_combout\,
	combout => \State~16_combout\);

-- Location: FF_X47_Y7_N19
\State.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Waiting~q\);

-- Location: LCCOMB_X46_Y7_N8
\Output_Controller:InReg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[6]~0_combout\ = (\State.Address~q\ & ((\Output_Controller:State_Count[0]~q\) # ((\Output_Controller:State_Count[1]~q\ & \Output_Controller:State_Count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[1]~q\,
	datac => \Output_Controller:State_Count[2]~q\,
	datad => \State.Address~q\,
	combout => \Output_Controller:InReg[6]~0_combout\);

-- Location: LCCOMB_X46_Y7_N10
\Output_Controller:InReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[6]~1_combout\ = (\State.Waiting~q\ & (!\Output_Controller:InReg[6]~0_combout\ & !\State.Dummy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Waiting~q\,
	datac => \Output_Controller:InReg[6]~0_combout\,
	datad => \State.Dummy~q\,
	combout => \Output_Controller:InReg[6]~1_combout\);

-- Location: LCCOMB_X46_Y7_N4
\Output_Controller:InReg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[6]~2_combout\ = (\Output_Controller:InReg[6]~1_combout\ & ((\Equal0~0_combout\) # (\State.Address~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:InReg[6]~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \State.Address~q\,
	combout => \Output_Controller:InReg[6]~2_combout\);

-- Location: FF_X43_Y3_N1
\Output_Controller:InReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:InReg[4]~feeder_combout\,
	ena => \Output_Controller:InReg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[4]~q\);

-- Location: LCCOMB_X46_Y6_N24
\DataOut[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[4]~reg0feeder_combout\ = \Output_Controller:InReg[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Controller:InReg[4]~q\,
	combout => \DataOut[4]~reg0feeder_combout\);

-- Location: FF_X46_Y6_N25
\DataOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[4]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[4]~reg0_q\);

-- Location: LCCOMB_X43_Y3_N18
\Output_Controller:InReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[5]~feeder_combout\ = \IO[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[1]~input_o\,
	combout => \Output_Controller:InReg[5]~feeder_combout\);

-- Location: FF_X43_Y3_N19
\Output_Controller:InReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:InReg[5]~feeder_combout\,
	ena => \Output_Controller:InReg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[5]~q\);

-- Location: LCCOMB_X43_Y3_N10
\DataOut[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[5]~reg0feeder_combout\ = \Output_Controller:InReg[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Controller:InReg[5]~q\,
	combout => \DataOut[5]~reg0feeder_combout\);

-- Location: FF_X43_Y3_N11
\DataOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[5]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[5]~reg0_q\);

-- Location: FF_X46_Y3_N13
\Output_Controller:InReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \IO[2]~input_o\,
	sload => VCC,
	ena => \Output_Controller:InReg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[6]~q\);

-- Location: LCCOMB_X46_Y3_N20
\DataOut[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[6]~reg0feeder_combout\ = \Output_Controller:InReg[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Controller:InReg[6]~q\,
	combout => \DataOut[6]~reg0feeder_combout\);

-- Location: FF_X46_Y3_N21
\DataOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[6]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[6]~reg0_q\);

-- Location: LCCOMB_X46_Y3_N10
\Output_Controller:InReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[7]~feeder_combout\ = \IO[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[3]~input_o\,
	combout => \Output_Controller:InReg[7]~feeder_combout\);

-- Location: FF_X46_Y3_N11
\Output_Controller:InReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:InReg[7]~feeder_combout\,
	ena => \Output_Controller:InReg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[7]~q\);

-- Location: LCCOMB_X46_Y3_N18
\DataOut[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[7]~reg0feeder_combout\ = \Output_Controller:InReg[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Controller:InReg[7]~q\,
	combout => \DataOut[7]~reg0feeder_combout\);

-- Location: FF_X46_Y3_N19
\DataOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[7]~reg0feeder_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[7]~reg0_q\);

-- Location: LCCOMB_X44_Y4_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \Output_Controller:Data_H[0]~q\ $ (VCC)
-- \Add2~1\ = CARRY(\Output_Controller:Data_H[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X44_Y4_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Output_Controller:Data_H[1]~q\ & (!\Add2~1\)) # (!\Output_Controller:Data_H[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\Output_Controller:Data_H[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X45_Y4_N6
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\Add2~2_combout\ & \DataOut[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X44_Y7_N18
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\DataOut[0]~0_combout\) # ((!\State.Data~q\ & !\State.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datac => \DataOut[0]~0_combout\,
	datad => \State.Waiting~q\,
	combout => \Selector68~1_combout\);

-- Location: FF_X45_Y4_N7
\Output_Controller:Data_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[1]~q\);

-- Location: LCCOMB_X44_Y4_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Output_Controller:Data_H[2]~q\ & (\Add2~3\ $ (GND))) # (!\Output_Controller:Data_H[2]~q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\Output_Controller:Data_H[2]~q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[2]~q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X45_Y4_N12
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\Add2~4_combout\ & \DataOut[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X45_Y4_N13
\Output_Controller:Data_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[2]~q\);

-- Location: LCCOMB_X44_Y4_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Output_Controller:Data_H[3]~q\ & (!\Add2~5\)) # (!\Output_Controller:Data_H[3]~q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\Output_Controller:Data_H[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[3]~q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X45_Y4_N30
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\Add2~6_combout\ & \DataOut[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector65~0_combout\);

-- Location: FF_X45_Y4_N31
\Output_Controller:Data_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[3]~q\);

-- Location: LCCOMB_X44_Y4_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Output_Controller:Data_H[4]~q\ & (\Add2~7\ $ (GND))) # (!\Output_Controller:Data_H[4]~q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Output_Controller:Data_H[4]~q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[4]~q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X45_Y4_N4
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataOut[0]~0_combout\,
	datad => \Add2~8_combout\,
	combout => \Selector64~0_combout\);

-- Location: FF_X45_Y4_N5
\Output_Controller:Data_H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[4]~q\);

-- Location: LCCOMB_X44_Y4_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Output_Controller:Data_H[5]~q\ & (!\Add2~9\)) # (!\Output_Controller:Data_H[5]~q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Output_Controller:Data_H[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[5]~q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X45_Y4_N10
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataOut[0]~0_combout\,
	datad => \Add2~10_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X45_Y4_N11
\Output_Controller:Data_H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[5]~q\);

-- Location: LCCOMB_X44_Y4_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Output_Controller:Data_H[6]~q\ & (\Add2~11\ $ (GND))) # (!\Output_Controller:Data_H[6]~q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Output_Controller:Data_H[6]~q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[6]~q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X45_Y4_N20
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataOut[0]~0_combout\,
	datad => \Add2~12_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X45_Y4_N21
\Output_Controller:Data_H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[6]~q\);

-- Location: LCCOMB_X44_Y4_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Output_Controller:Data_H[7]~q\ & (!\Add2~13\)) # (!\Output_Controller:Data_H[7]~q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Output_Controller:Data_H[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[7]~q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X45_Y4_N14
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\Add2~14_combout\ & (!\Equal5~10_combout\ & \DataOut[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datac => \Equal5~10_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X45_Y4_N15
\Output_Controller:Data_H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[7]~q\);

-- Location: LCCOMB_X44_Y4_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Output_Controller:Data_H[8]~q\ & (\Add2~15\ $ (GND))) # (!\Output_Controller:Data_H[8]~q\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\Output_Controller:Data_H[8]~q\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[8]~q\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X45_Y4_N18
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\Add2~16_combout\ & \DataOut[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X45_Y4_N19
\Output_Controller:Data_H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[8]~q\);

-- Location: LCCOMB_X44_Y4_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Output_Controller:Data_H[9]~q\ & (!\Add2~17\)) # (!\Output_Controller:Data_H[9]~q\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\Output_Controller:Data_H[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[9]~q\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X45_Y4_N24
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Add2~18_combout\ & (!\Equal5~10_combout\ & \DataOut[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \Equal5~10_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X45_Y4_N25
\Output_Controller:Data_H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[9]~q\);

-- Location: LCCOMB_X44_Y4_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Output_Controller:Data_H[10]~q\ & (\Add2~19\ $ (GND))) # (!\Output_Controller:Data_H[10]~q\ & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\Output_Controller:Data_H[10]~q\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[10]~q\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X45_Y4_N28
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataOut[0]~0_combout\,
	datad => \Add2~20_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X45_Y4_N29
\Output_Controller:Data_H[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[10]~q\);

-- Location: LCCOMB_X44_Y4_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Output_Controller:Data_H[11]~q\ & (!\Add2~21\)) # (!\Output_Controller:Data_H[11]~q\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\Output_Controller:Data_H[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[11]~q\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X45_Y4_N22
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataOut[0]~0_combout\,
	datad => \Add2~22_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X45_Y4_N23
\Output_Controller:Data_H[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[11]~q\);

-- Location: LCCOMB_X44_Y4_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Output_Controller:Data_H[12]~q\ & (\Add2~23\ $ (GND))) # (!\Output_Controller:Data_H[12]~q\ & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\Output_Controller:Data_H[12]~q\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[12]~q\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X45_Y3_N4
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datac => \Add2~24_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X45_Y3_N5
\Output_Controller:Data_H[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[12]~q\);

-- Location: LCCOMB_X44_Y4_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Output_Controller:Data_H[13]~q\ & (!\Add2~25\)) # (!\Output_Controller:Data_H[13]~q\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\Output_Controller:Data_H[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[13]~q\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X45_Y3_N18
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~26_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X45_Y3_N19
\Output_Controller:Data_H[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[13]~q\);

-- Location: LCCOMB_X44_Y4_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Output_Controller:Data_H[14]~q\ & (\Add2~27\ $ (GND))) # (!\Output_Controller:Data_H[14]~q\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\Output_Controller:Data_H[14]~q\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[14]~q\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X45_Y3_N12
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datac => \Add2~28_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X45_Y3_N13
\Output_Controller:Data_H[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[14]~q\);

-- Location: LCCOMB_X44_Y4_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Output_Controller:Data_H[15]~q\ & (!\Add2~29\)) # (!\Output_Controller:Data_H[15]~q\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\Output_Controller:Data_H[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[15]~q\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X45_Y3_N22
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~30_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X45_Y3_N23
\Output_Controller:Data_H[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[15]~q\);

-- Location: LCCOMB_X44_Y3_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Output_Controller:Data_H[16]~q\ & (\Add2~31\ $ (GND))) # (!\Output_Controller:Data_H[16]~q\ & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\Output_Controller:Data_H[16]~q\ & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[16]~q\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X45_Y3_N2
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datac => \Add2~32_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X45_Y3_N3
\Output_Controller:Data_H[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[16]~q\);

-- Location: LCCOMB_X44_Y3_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Output_Controller:Data_H[17]~q\ & (!\Add2~33\)) # (!\Output_Controller:Data_H[17]~q\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\Output_Controller:Data_H[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[17]~q\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X45_Y3_N16
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~34_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X45_Y3_N17
\Output_Controller:Data_H[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[17]~q\);

-- Location: LCCOMB_X44_Y3_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\Output_Controller:Data_H[18]~q\ & (\Add2~35\ $ (GND))) # (!\Output_Controller:Data_H[18]~q\ & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\Output_Controller:Data_H[18]~q\ & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[18]~q\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X45_Y3_N26
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datac => \Add2~36_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X45_Y3_N27
\Output_Controller:Data_H[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[18]~q\);

-- Location: LCCOMB_X44_Y3_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Output_Controller:Data_H[19]~q\ & (!\Add2~37\)) # (!\Output_Controller:Data_H[19]~q\ & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\Output_Controller:Data_H[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[19]~q\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X45_Y3_N28
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datad => \Add2~38_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X45_Y3_N29
\Output_Controller:Data_H[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[19]~q\);

-- Location: LCCOMB_X44_Y3_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\Output_Controller:Data_H[20]~q\ & (\Add2~39\ $ (GND))) # (!\Output_Controller:Data_H[20]~q\ & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((\Output_Controller:Data_H[20]~q\ & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[20]~q\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X45_Y3_N24
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~40_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X45_Y3_N25
\Output_Controller:Data_H[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[20]~q\);

-- Location: LCCOMB_X44_Y3_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Output_Controller:Data_H[21]~q\ & (!\Add2~41\)) # (!\Output_Controller:Data_H[21]~q\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\Output_Controller:Data_H[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[21]~q\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X45_Y3_N6
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~42_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X45_Y3_N7
\Output_Controller:Data_H[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[21]~q\);

-- Location: LCCOMB_X44_Y3_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\Output_Controller:Data_H[22]~q\ & (\Add2~43\ $ (GND))) # (!\Output_Controller:Data_H[22]~q\ & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\Output_Controller:Data_H[22]~q\ & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[22]~q\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X45_Y3_N8
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~44_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X45_Y3_N9
\Output_Controller:Data_H[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[22]~q\);

-- Location: LCCOMB_X44_Y3_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Output_Controller:Data_H[23]~q\ & (!\Add2~45\)) # (!\Output_Controller:Data_H[23]~q\ & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\Output_Controller:Data_H[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[23]~q\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X45_Y3_N14
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~46_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X45_Y3_N15
\Output_Controller:Data_H[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[23]~q\);

-- Location: LCCOMB_X44_Y3_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\Output_Controller:Data_H[24]~q\ & (\Add2~47\ $ (GND))) # (!\Output_Controller:Data_H[24]~q\ & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((\Output_Controller:Data_H[24]~q\ & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[24]~q\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X44_Y7_N20
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~48_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X44_Y7_N21
\Output_Controller:Data_H[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[24]~q\);

-- Location: LCCOMB_X44_Y3_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Output_Controller:Data_H[25]~q\ & (!\Add2~49\)) # (!\Output_Controller:Data_H[25]~q\ & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\Output_Controller:Data_H[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[25]~q\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X44_Y7_N26
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datad => \Add2~50_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X44_Y7_N27
\Output_Controller:Data_H[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[25]~q\);

-- Location: LCCOMB_X44_Y3_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\Output_Controller:Data_H[26]~q\ & (\Add2~51\ $ (GND))) # (!\Output_Controller:Data_H[26]~q\ & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\Output_Controller:Data_H[26]~q\ & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[26]~q\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X44_Y7_N24
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datad => \Add2~52_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X44_Y7_N25
\Output_Controller:Data_H[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[26]~q\);

-- Location: LCCOMB_X44_Y3_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\Output_Controller:Data_H[27]~q\ & (!\Add2~53\)) # (!\Output_Controller:Data_H[27]~q\ & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\Output_Controller:Data_H[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[27]~q\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X44_Y7_N10
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~54_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X44_Y7_N11
\Output_Controller:Data_H[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[27]~q\);

-- Location: LCCOMB_X44_Y7_N12
\Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (!\Output_Controller:Data_H[27]~q\ & (!\Output_Controller:Data_H[24]~q\ & (!\Output_Controller:Data_H[25]~q\ & !\Output_Controller:Data_H[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[27]~q\,
	datab => \Output_Controller:Data_H[24]~q\,
	datac => \Output_Controller:Data_H[25]~q\,
	datad => \Output_Controller:Data_H[26]~q\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X44_Y3_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\Output_Controller:Data_H[28]~q\ & (\Add2~55\ $ (GND))) # (!\Output_Controller:Data_H[28]~q\ & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((\Output_Controller:Data_H[28]~q\ & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[28]~q\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X44_Y7_N6
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~56_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X44_Y7_N7
\Output_Controller:Data_H[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[28]~q\);

-- Location: LCCOMB_X44_Y3_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Output_Controller:Data_H[29]~q\ & (!\Add2~57\)) # (!\Output_Controller:Data_H[29]~q\ & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!\Output_Controller:Data_H[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[29]~q\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X44_Y7_N28
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datad => \Add2~58_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X44_Y7_N29
\Output_Controller:Data_H[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[29]~q\);

-- Location: LCCOMB_X44_Y3_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (\Output_Controller:Data_H[30]~q\ & (\Add2~59\ $ (GND))) # (!\Output_Controller:Data_H[30]~q\ & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((\Output_Controller:Data_H[30]~q\ & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[30]~q\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X44_Y7_N2
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[0]~0_combout\,
	datac => \Add2~60_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X44_Y7_N3
\Output_Controller:Data_H[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[30]~q\);

-- Location: LCCOMB_X44_Y3_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (\Output_Controller:Data_H[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Output_Controller:Data_H[31]~q\,
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X44_Y7_N8
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\DataOut[0]~0_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataOut[0]~0_combout\,
	datad => \Add2~62_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X44_Y7_N9
\Output_Controller:Data_H[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[31]~q\);

-- Location: LCCOMB_X44_Y7_N14
\Equal5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (!\Output_Controller:Data_H[28]~q\ & (!\Output_Controller:Data_H[29]~q\ & (!\Output_Controller:Data_H[31]~q\ & !\Output_Controller:Data_H[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[28]~q\,
	datab => \Output_Controller:Data_H[29]~q\,
	datac => \Output_Controller:Data_H[31]~q\,
	datad => \Output_Controller:Data_H[30]~q\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X45_Y3_N30
\Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!\Output_Controller:Data_H[17]~q\ & !\Output_Controller:Data_H[16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[17]~q\,
	datad => \Output_Controller:Data_H[16]~q\,
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X45_Y3_N20
\Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!\Output_Controller:Data_H[21]~q\ & (!\Output_Controller:Data_H[23]~q\ & (!\Output_Controller:Data_H[22]~q\ & !\Output_Controller:Data_H[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[21]~q\,
	datab => \Output_Controller:Data_H[23]~q\,
	datac => \Output_Controller:Data_H[22]~q\,
	datad => \Output_Controller:Data_H[20]~q\,
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X45_Y3_N10
\Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (\Equal5~5_combout\ & (\Equal5~6_combout\ & (!\Output_Controller:Data_H[18]~q\ & !\Output_Controller:Data_H[19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datab => \Equal5~6_combout\,
	datac => \Output_Controller:Data_H[18]~q\,
	datad => \Output_Controller:Data_H[19]~q\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X45_Y4_N26
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\Output_Controller:Data_H[5]~q\ & (!\Output_Controller:Data_H[6]~q\ & (!\Output_Controller:Data_H[4]~q\ & \Output_Controller:Data_H[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[5]~q\,
	datab => \Output_Controller:Data_H[6]~q\,
	datac => \Output_Controller:Data_H[4]~q\,
	datad => \Output_Controller:Data_H[7]~q\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X45_Y4_N0
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\Output_Controller:Data_H[11]~q\ & (\Output_Controller:Data_H[9]~q\ & (!\Output_Controller:Data_H[10]~q\ & !\Output_Controller:Data_H[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[11]~q\,
	datab => \Output_Controller:Data_H[9]~q\,
	datac => \Output_Controller:Data_H[10]~q\,
	datad => \Output_Controller:Data_H[8]~q\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X45_Y4_N8
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\Output_Controller:Data_H[2]~q\ & (!\Output_Controller:Data_H[0]~q\ & (!\Output_Controller:Data_H[3]~q\ & !\Output_Controller:Data_H[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[2]~q\,
	datab => \Output_Controller:Data_H[0]~q\,
	datac => \Output_Controller:Data_H[3]~q\,
	datad => \Output_Controller:Data_H[1]~q\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X45_Y3_N0
\Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!\Output_Controller:Data_H[15]~q\ & (!\Output_Controller:Data_H[13]~q\ & (!\Output_Controller:Data_H[12]~q\ & !\Output_Controller:Data_H[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[15]~q\,
	datab => \Output_Controller:Data_H[13]~q\,
	datac => \Output_Controller:Data_H[12]~q\,
	datad => \Output_Controller:Data_H[14]~q\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X45_Y4_N2
\Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~1_combout\ & (\Equal5~2_combout\ & (\Equal5~0_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal5~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X44_Y7_N0
\Equal5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~8_combout\ & (\Equal5~9_combout\ & (\Equal5~7_combout\ & \Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~8_combout\,
	datab => \Equal5~9_combout\,
	datac => \Equal5~7_combout\,
	datad => \Equal5~4_combout\,
	combout => \Equal5~10_combout\);

-- Location: LCCOMB_X45_Y4_N16
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (!\Equal5~10_combout\ & (\Add2~0_combout\ & \DataOut[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~10_combout\,
	datac => \Add2~0_combout\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X45_Y4_N17
\Output_Controller:Data_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \Selector68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[0]~q\);

-- Location: LCCOMB_X41_Y4_N28
\Data_H~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_H~0_combout\ = (\Add2~0_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_H~0_combout\);

-- Location: FF_X41_Y4_N29
\Address_H[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_H~0_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[0]~reg0_q\);

-- Location: FF_X44_Y4_N3
\Address_H[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[1]~reg0_q\);

-- Location: FF_X44_Y4_N5
\Address_H[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[2]~reg0_q\);

-- Location: FF_X44_Y4_N7
\Address_H[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[3]~reg0_q\);

-- Location: FF_X44_Y4_N9
\Address_H[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[4]~reg0_q\);

-- Location: FF_X44_Y4_N11
\Address_H[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[5]~reg0_q\);

-- Location: FF_X44_Y4_N13
\Address_H[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[6]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N18
\Data_H~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_H~1_combout\ = (\Add2~14_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_H~1_combout\);

-- Location: FF_X41_Y4_N19
\Address_H[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_H~1_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[7]~reg0_q\);

-- Location: FF_X44_Y4_N17
\Address_H[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[8]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N12
\Data_H~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_H~2_combout\ = (\Add2~18_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_H~2_combout\);

-- Location: FF_X41_Y4_N13
\Address_H[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_H~2_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[9]~reg0_q\);

-- Location: LCCOMB_X40_Y4_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Output_Controller:Data_V[3]~q\ & (!\Add1~5\)) # (!\Output_Controller:Data_V[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Output_Controller:Data_V[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X40_Y4_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Output_Controller:Data_V[4]~q\ & (\Add1~7\ $ (GND))) # (!\Output_Controller:Data_V[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\Output_Controller:Data_V[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X41_Y4_N10
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\State.Data~q\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~8_combout\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X40_Y7_N20
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\State.Waiting~q\ & (\Equal5~10_combout\ & (\DataOut[0]~0_combout\))) # (!\State.Waiting~q\ & (((\Equal5~10_combout\ & \DataOut[0]~0_combout\)) # (!\State.Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Waiting~q\,
	datab => \Equal5~10_combout\,
	datac => \DataOut[0]~0_combout\,
	datad => \State.Data~q\,
	combout => \Selector69~0_combout\);

-- Location: FF_X41_Y4_N11
\Output_Controller:Data_V[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[4]~q\);

-- Location: LCCOMB_X40_Y4_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Output_Controller:Data_V[5]~q\ & (!\Add1~9\)) # (!\Output_Controller:Data_V[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\Output_Controller:Data_V[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X39_Y4_N8
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\Add1~10_combout\ & (\State.Data~q\ & ((!\Equal6~9_combout\) # (!\Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~4_combout\,
	datab => \Add1~10_combout\,
	datac => \Equal6~9_combout\,
	datad => \State.Data~q\,
	combout => \Selector95~0_combout\);

-- Location: FF_X39_Y4_N9
\Output_Controller:Data_V[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[5]~q\);

-- Location: LCCOMB_X40_Y4_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Output_Controller:Data_V[6]~q\ & (\Add1~11\ $ (GND))) # (!\Output_Controller:Data_V[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\Output_Controller:Data_V[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X39_Y4_N18
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\Add1~12_combout\ & (\State.Data~q\ & ((!\Equal6~9_combout\) # (!\Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~4_combout\,
	datab => \Add1~12_combout\,
	datac => \Equal6~9_combout\,
	datad => \State.Data~q\,
	combout => \Selector94~0_combout\);

-- Location: FF_X39_Y4_N19
\Output_Controller:Data_V[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[6]~q\);

-- Location: LCCOMB_X40_Y4_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Output_Controller:Data_V[7]~q\ & (!\Add1~13\)) # (!\Output_Controller:Data_V[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\Output_Controller:Data_V[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X39_Y4_N12
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\Add1~14_combout\ & (\State.Data~q\ & ((!\Equal6~9_combout\) # (!\Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~4_combout\,
	datab => \Add1~14_combout\,
	datac => \Equal6~9_combout\,
	datad => \State.Data~q\,
	combout => \Selector93~0_combout\);

-- Location: FF_X39_Y4_N13
\Output_Controller:Data_V[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[7]~q\);

-- Location: LCCOMB_X40_Y4_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Output_Controller:Data_V[8]~q\ & (\Add1~15\ $ (GND))) # (!\Output_Controller:Data_V[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\Output_Controller:Data_V[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X39_Y4_N6
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\Add1~16_combout\ & (\State.Data~q\ & ((!\Equal6~9_combout\) # (!\Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~4_combout\,
	datab => \Add1~16_combout\,
	datac => \Equal6~9_combout\,
	datad => \State.Data~q\,
	combout => \Selector92~0_combout\);

-- Location: FF_X39_Y4_N7
\Output_Controller:Data_V[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[8]~q\);

-- Location: LCCOMB_X40_Y4_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Output_Controller:Data_V[9]~q\ & (!\Add1~17\)) # (!\Output_Controller:Data_V[9]~q\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\Output_Controller:Data_V[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[9]~q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X41_Y4_N2
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\State.Data~q\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~18_combout\,
	combout => \Selector91~0_combout\);

-- Location: FF_X41_Y4_N3
\Output_Controller:Data_V[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector91~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[9]~q\);

-- Location: LCCOMB_X40_Y4_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Output_Controller:Data_V[10]~q\ & (\Add1~19\ $ (GND))) # (!\Output_Controller:Data_V[10]~q\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\Output_Controller:Data_V[10]~q\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[10]~q\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X41_Y4_N16
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\State.Data~q\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~20_combout\,
	combout => \Selector90~0_combout\);

-- Location: FF_X41_Y4_N17
\Output_Controller:Data_V[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector90~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[10]~q\);

-- Location: LCCOMB_X40_Y4_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Output_Controller:Data_V[11]~q\ & (!\Add1~21\)) # (!\Output_Controller:Data_V[11]~q\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\Output_Controller:Data_V[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[11]~q\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X41_Y4_N22
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\State.Data~q\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~22_combout\,
	combout => \Selector89~0_combout\);

-- Location: FF_X41_Y4_N23
\Output_Controller:Data_V[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector89~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[11]~q\);

-- Location: LCCOMB_X40_Y4_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Output_Controller:Data_V[12]~q\ & (\Add1~23\ $ (GND))) # (!\Output_Controller:Data_V[12]~q\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\Output_Controller:Data_V[12]~q\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[12]~q\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X41_Y4_N8
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\State.Data~q\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~24_combout\,
	combout => \Selector88~0_combout\);

-- Location: FF_X41_Y4_N9
\Output_Controller:Data_V[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector88~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[12]~q\);

-- Location: LCCOMB_X40_Y4_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Output_Controller:Data_V[13]~q\ & (!\Add1~25\)) # (!\Output_Controller:Data_V[13]~q\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\Output_Controller:Data_V[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[13]~q\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X39_Y3_N10
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\State.Data~q\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~26_combout\,
	combout => \Selector87~0_combout\);

-- Location: FF_X39_Y3_N11
\Output_Controller:Data_V[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector87~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[13]~q\);

-- Location: LCCOMB_X40_Y4_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Output_Controller:Data_V[14]~q\ & (\Add1~27\ $ (GND))) # (!\Output_Controller:Data_V[14]~q\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\Output_Controller:Data_V[14]~q\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[14]~q\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X39_Y3_N12
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\State.Data~q\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~28_combout\,
	combout => \Selector86~0_combout\);

-- Location: FF_X39_Y3_N13
\Output_Controller:Data_V[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector86~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[14]~q\);

-- Location: LCCOMB_X40_Y4_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Output_Controller:Data_V[15]~q\ & (!\Add1~29\)) # (!\Output_Controller:Data_V[15]~q\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\Output_Controller:Data_V[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[15]~q\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X41_Y4_N30
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\State.Data~q\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~30_combout\,
	combout => \Selector85~0_combout\);

-- Location: FF_X41_Y4_N31
\Output_Controller:Data_V[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector85~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[15]~q\);

-- Location: LCCOMB_X40_Y3_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Output_Controller:Data_V[16]~q\ & (\Add1~31\ $ (GND))) # (!\Output_Controller:Data_V[16]~q\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\Output_Controller:Data_V[16]~q\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[16]~q\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X41_Y3_N30
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\State.Data~q\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~32_combout\,
	combout => \Selector84~0_combout\);

-- Location: FF_X41_Y3_N31
\Output_Controller:Data_V[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector84~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[16]~q\);

-- Location: LCCOMB_X40_Y3_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Output_Controller:Data_V[17]~q\ & (!\Add1~33\)) # (!\Output_Controller:Data_V[17]~q\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\Output_Controller:Data_V[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[17]~q\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X41_Y3_N20
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\State.Data~q\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~34_combout\,
	combout => \Selector83~0_combout\);

-- Location: FF_X41_Y3_N21
\Output_Controller:Data_V[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector83~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[17]~q\);

-- Location: LCCOMB_X40_Y3_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\Output_Controller:Data_V[18]~q\ & (\Add1~35\ $ (GND))) # (!\Output_Controller:Data_V[18]~q\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\Output_Controller:Data_V[18]~q\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[18]~q\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X41_Y3_N14
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\State.Data~q\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~36_combout\,
	combout => \Selector82~0_combout\);

-- Location: FF_X41_Y3_N15
\Output_Controller:Data_V[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector82~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[18]~q\);

-- Location: LCCOMB_X40_Y3_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Output_Controller:Data_V[19]~q\ & (!\Add1~37\)) # (!\Output_Controller:Data_V[19]~q\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\Output_Controller:Data_V[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[19]~q\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X41_Y3_N24
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\State.Data~q\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~38_combout\,
	combout => \Selector81~0_combout\);

-- Location: FF_X41_Y3_N25
\Output_Controller:Data_V[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[19]~q\);

-- Location: LCCOMB_X41_Y3_N12
\Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!\Output_Controller:Data_V[16]~q\ & (!\Output_Controller:Data_V[19]~q\ & (!\Output_Controller:Data_V[18]~q\ & !\Output_Controller:Data_V[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[16]~q\,
	datab => \Output_Controller:Data_V[19]~q\,
	datac => \Output_Controller:Data_V[18]~q\,
	datad => \Output_Controller:Data_V[17]~q\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X40_Y3_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Output_Controller:Data_V[20]~q\ & (\Add1~39\ $ (GND))) # (!\Output_Controller:Data_V[20]~q\ & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((\Output_Controller:Data_V[20]~q\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[20]~q\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X41_Y3_N16
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\State.Data~q\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~40_combout\,
	combout => \Selector80~0_combout\);

-- Location: FF_X41_Y3_N17
\Output_Controller:Data_V[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector80~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[20]~q\);

-- Location: LCCOMB_X40_Y3_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Output_Controller:Data_V[21]~q\ & (!\Add1~41\)) # (!\Output_Controller:Data_V[21]~q\ & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!\Output_Controller:Data_V[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[21]~q\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X41_Y3_N22
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\State.Data~q\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~42_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X41_Y3_N23
\Output_Controller:Data_V[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[21]~q\);

-- Location: LCCOMB_X40_Y3_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Output_Controller:Data_V[22]~q\ & (\Add1~43\ $ (GND))) # (!\Output_Controller:Data_V[22]~q\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\Output_Controller:Data_V[22]~q\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[22]~q\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X41_Y3_N8
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\State.Data~q\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~44_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X41_Y3_N9
\Output_Controller:Data_V[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[22]~q\);

-- Location: LCCOMB_X40_Y3_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Output_Controller:Data_V[23]~q\ & (!\Add1~45\)) # (!\Output_Controller:Data_V[23]~q\ & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!\Output_Controller:Data_V[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[23]~q\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X41_Y3_N2
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\State.Data~q\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~46_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X41_Y3_N3
\Output_Controller:Data_V[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[23]~q\);

-- Location: LCCOMB_X40_Y3_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\Output_Controller:Data_V[24]~q\ & (\Add1~47\ $ (GND))) # (!\Output_Controller:Data_V[24]~q\ & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((\Output_Controller:Data_V[24]~q\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[24]~q\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X41_Y3_N18
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\State.Data~q\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~48_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X41_Y3_N19
\Output_Controller:Data_V[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[24]~q\);

-- Location: LCCOMB_X40_Y3_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Output_Controller:Data_V[25]~q\ & (!\Add1~49\)) # (!\Output_Controller:Data_V[25]~q\ & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!\Output_Controller:Data_V[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[25]~q\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X41_Y3_N28
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\State.Data~q\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~50_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X41_Y3_N29
\Output_Controller:Data_V[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[25]~q\);

-- Location: LCCOMB_X40_Y3_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\Output_Controller:Data_V[26]~q\ & (\Add1~51\ $ (GND))) # (!\Output_Controller:Data_V[26]~q\ & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((\Output_Controller:Data_V[26]~q\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[26]~q\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X41_Y3_N6
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\State.Data~q\ & \Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~52_combout\,
	combout => \Selector74~0_combout\);

-- Location: FF_X41_Y3_N7
\Output_Controller:Data_V[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[26]~q\);

-- Location: LCCOMB_X40_Y3_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Output_Controller:Data_V[27]~q\ & (!\Add1~53\)) # (!\Output_Controller:Data_V[27]~q\ & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!\Output_Controller:Data_V[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[27]~q\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X41_Y3_N4
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\State.Data~q\ & \Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~54_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X41_Y3_N5
\Output_Controller:Data_V[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[27]~q\);

-- Location: LCCOMB_X41_Y3_N0
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\Output_Controller:Data_V[26]~q\ & (!\Output_Controller:Data_V[25]~q\ & (!\Output_Controller:Data_V[27]~q\ & !\Output_Controller:Data_V[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[26]~q\,
	datab => \Output_Controller:Data_V[25]~q\,
	datac => \Output_Controller:Data_V[27]~q\,
	datad => \Output_Controller:Data_V[24]~q\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X40_Y3_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\Output_Controller:Data_V[28]~q\ & (\Add1~55\ $ (GND))) # (!\Output_Controller:Data_V[28]~q\ & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((\Output_Controller:Data_V[28]~q\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[28]~q\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X39_Y3_N16
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\State.Data~q\ & \Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~56_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X39_Y3_N17
\Output_Controller:Data_V[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[28]~q\);

-- Location: LCCOMB_X40_Y3_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\Output_Controller:Data_V[29]~q\ & (!\Add1~57\)) # (!\Output_Controller:Data_V[29]~q\ & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!\Output_Controller:Data_V[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[29]~q\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X39_Y3_N6
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\State.Data~q\ & \Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~58_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X39_Y3_N7
\Output_Controller:Data_V[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[29]~q\);

-- Location: LCCOMB_X40_Y3_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\Output_Controller:Data_V[30]~q\ & (\Add1~59\ $ (GND))) # (!\Output_Controller:Data_V[30]~q\ & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((\Output_Controller:Data_V[30]~q\ & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[30]~q\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X39_Y3_N4
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\State.Data~q\ & \Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~60_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X39_Y3_N5
\Output_Controller:Data_V[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[30]~q\);

-- Location: LCCOMB_X40_Y3_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (\Output_Controller:Data_V[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Output_Controller:Data_V[31]~q\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X39_Y3_N14
\Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\State.Data~q\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~62_combout\,
	combout => \Selector69~1_combout\);

-- Location: FF_X39_Y3_N15
\Output_Controller:Data_V[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector69~1_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[31]~q\);

-- Location: LCCOMB_X39_Y3_N18
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Output_Controller:Data_V[29]~q\ & (!\Output_Controller:Data_V[30]~q\ & (!\Output_Controller:Data_V[31]~q\ & !\Output_Controller:Data_V[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[29]~q\,
	datab => \Output_Controller:Data_V[30]~q\,
	datac => \Output_Controller:Data_V[31]~q\,
	datad => \Output_Controller:Data_V[28]~q\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X41_Y3_N10
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!\Output_Controller:Data_V[21]~q\ & (!\Output_Controller:Data_V[20]~q\ & (!\Output_Controller:Data_V[22]~q\ & !\Output_Controller:Data_V[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[21]~q\,
	datab => \Output_Controller:Data_V[20]~q\,
	datac => \Output_Controller:Data_V[22]~q\,
	datad => \Output_Controller:Data_V[23]~q\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X41_Y3_N26
\Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~3_combout\ & (\Equal6~1_combout\ & (\Equal6~0_combout\ & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal6~2_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X40_Y4_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Output_Controller:Data_V[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\Output_Controller:Data_V[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X39_Y4_N0
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\Add1~0_combout\ & (\State.Data~q\ & ((!\Equal6~9_combout\) # (!\Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~4_combout\,
	datab => \Add1~0_combout\,
	datac => \Equal6~9_combout\,
	datad => \State.Data~q\,
	combout => \Selector100~0_combout\);

-- Location: FF_X39_Y4_N1
\Output_Controller:Data_V[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[0]~q\);

-- Location: LCCOMB_X40_Y4_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Output_Controller:Data_V[1]~q\ & (!\Add1~1\)) # (!\Output_Controller:Data_V[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\Output_Controller:Data_V[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X41_Y4_N6
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\State.Data~q\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~2_combout\,
	combout => \Selector99~0_combout\);

-- Location: FF_X41_Y4_N7
\Output_Controller:Data_V[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[1]~q\);

-- Location: LCCOMB_X40_Y4_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Output_Controller:Data_V[2]~q\ & (\Add1~3\ $ (GND))) # (!\Output_Controller:Data_V[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\Output_Controller:Data_V[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X39_Y4_N20
\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\State.Data~q\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~4_combout\,
	combout => \Selector98~0_combout\);

-- Location: FF_X39_Y4_N21
\Output_Controller:Data_V[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[2]~q\);

-- Location: LCCOMB_X41_Y4_N4
\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\State.Data~q\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~6_combout\,
	combout => \Selector97~0_combout\);

-- Location: FF_X41_Y4_N5
\Output_Controller:Data_V[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	ena => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[3]~q\);

-- Location: LCCOMB_X39_Y4_N10
\Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!\Output_Controller:Data_V[3]~q\ & (!\Output_Controller:Data_V[2]~q\ & (!\Output_Controller:Data_V[1]~q\ & !\Output_Controller:Data_V[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[3]~q\,
	datab => \Output_Controller:Data_V[2]~q\,
	datac => \Output_Controller:Data_V[1]~q\,
	datad => \Output_Controller:Data_V[0]~q\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X39_Y3_N0
\Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!\Output_Controller:Data_V[13]~q\ & (!\Output_Controller:Data_V[14]~q\ & (!\Output_Controller:Data_V[15]~q\ & !\Output_Controller:Data_V[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[13]~q\,
	datab => \Output_Controller:Data_V[14]~q\,
	datac => \Output_Controller:Data_V[15]~q\,
	datad => \Output_Controller:Data_V[12]~q\,
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X39_Y4_N22
\Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (\Output_Controller:Data_V[7]~q\ & (\Output_Controller:Data_V[6]~q\ & (\Output_Controller:Data_V[5]~q\ & !\Output_Controller:Data_V[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[7]~q\,
	datab => \Output_Controller:Data_V[6]~q\,
	datac => \Output_Controller:Data_V[5]~q\,
	datad => \Output_Controller:Data_V[4]~q\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X41_Y4_N24
\Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (\Output_Controller:Data_V[8]~q\ & (!\Output_Controller:Data_V[10]~q\ & (!\Output_Controller:Data_V[11]~q\ & !\Output_Controller:Data_V[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[8]~q\,
	datab => \Output_Controller:Data_V[10]~q\,
	datac => \Output_Controller:Data_V[11]~q\,
	datad => \Output_Controller:Data_V[9]~q\,
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X39_Y4_N4
\Equal6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (\Equal6~8_combout\ & (\Equal6~5_combout\ & (\Equal6~7_combout\ & \Equal6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datab => \Equal6~5_combout\,
	datac => \Equal6~7_combout\,
	datad => \Equal6~6_combout\,
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X39_Y4_N26
\Equal6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~9_combout\ & \Equal6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~9_combout\,
	datad => \Equal6~4_combout\,
	combout => \Equal6~10_combout\);

-- Location: LCCOMB_X39_Y4_N28
\Data_V~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~0_combout\ = (\Equal5~10_combout\ & (!\Equal6~10_combout\ & ((\Add1~0_combout\)))) # (!\Equal5~10_combout\ & (((\Output_Controller:Data_V[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Output_Controller:Data_V[0]~q\,
	datac => \Add1~0_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~0_combout\);

-- Location: FF_X39_Y4_N29
\Address_V[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~0_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[0]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N14
\Data_V~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~1_combout\ = (\Equal5~10_combout\ & ((\Add1~2_combout\))) # (!\Equal5~10_combout\ & (\Output_Controller:Data_V[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[1]~q\,
	datac => \Equal5~10_combout\,
	datad => \Add1~2_combout\,
	combout => \Data_V~1_combout\);

-- Location: FF_X41_Y4_N15
\Address_V[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~1_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[1]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N14
\Data_V~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~2_combout\ = (\Equal5~10_combout\ & (\Add1~4_combout\)) # (!\Equal5~10_combout\ & ((\Output_Controller:Data_V[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Output_Controller:Data_V[2]~q\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~2_combout\);

-- Location: FF_X39_Y4_N15
\Address_V[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~2_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[2]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N0
\Data_V~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~3_combout\ = (\Equal5~10_combout\ & ((\Add1~6_combout\))) # (!\Equal5~10_combout\ & (\Output_Controller:Data_V[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[3]~q\,
	datac => \Add1~6_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~3_combout\);

-- Location: FF_X41_Y4_N1
\Address_V[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~3_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[3]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N26
\Data_V~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~4_combout\ = (\Equal5~10_combout\ & (\Add1~8_combout\)) # (!\Equal5~10_combout\ & ((\Output_Controller:Data_V[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datac => \Output_Controller:Data_V[4]~q\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~4_combout\);

-- Location: FF_X41_Y4_N27
\Address_V[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~4_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[4]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N24
\Data_V~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~5_combout\ = (\Equal5~10_combout\ & (!\Equal6~10_combout\ & ((\Add1~10_combout\)))) # (!\Equal5~10_combout\ & (((\Output_Controller:Data_V[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Output_Controller:Data_V[5]~q\,
	datac => \Add1~10_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~5_combout\);

-- Location: FF_X39_Y4_N25
\Address_V[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~5_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[5]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N30
\Data_V~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~6_combout\ = (\Equal5~10_combout\ & (!\Equal6~10_combout\ & ((\Add1~12_combout\)))) # (!\Equal5~10_combout\ & (((\Output_Controller:Data_V[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Output_Controller:Data_V[6]~q\,
	datac => \Add1~12_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~6_combout\);

-- Location: FF_X39_Y4_N31
\Address_V[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~6_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[6]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N16
\Data_V~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~7_combout\ = (\Equal5~10_combout\ & (((\Add1~14_combout\ & !\Equal6~10_combout\)))) # (!\Equal5~10_combout\ & (\Output_Controller:Data_V[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[7]~q\,
	datab => \Add1~14_combout\,
	datac => \Equal6~10_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~7_combout\);

-- Location: FF_X39_Y4_N17
\Address_V[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~7_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[7]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N2
\Data_V~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~8_combout\ = (\Equal5~10_combout\ & (((\Add1~16_combout\ & !\Equal6~10_combout\)))) # (!\Equal5~10_combout\ & (\Output_Controller:Data_V[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[8]~q\,
	datab => \Add1~16_combout\,
	datac => \Equal6~10_combout\,
	datad => \Equal5~10_combout\,
	combout => \Data_V~8_combout\);

-- Location: FF_X39_Y4_N3
\Address_V[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~8_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[8]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N20
\Data_V~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~9_combout\ = (\Equal5~10_combout\ & ((\Add1~18_combout\))) # (!\Equal5~10_combout\ & (\Output_Controller:Data_V[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~10_combout\,
	datab => \Output_Controller:Data_V[9]~q\,
	datad => \Add1~18_combout\,
	combout => \Data_V~9_combout\);

-- Location: FF_X41_Y4_N21
\Address_V[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~9_combout\,
	ena => \DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[9]~reg0_q\);

-- Location: LCCOMB_X46_Y7_N14
\Output_Controller:State_Count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~8_combout\ = (!\Equal0~0_combout\ & ((\State.Alternate~q\) # ((\State.Instruction~q\) # (\State.Data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Alternate~q\,
	datab => \State.Instruction~q\,
	datac => \Equal0~0_combout\,
	datad => \State.Data~q\,
	combout => \Output_Controller:State_Count[2]~8_combout\);

-- Location: LCCOMB_X46_Y7_N28
\Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\DataOut[0]~0_combout\) # ((\WriteData~reg0_q\ & ((\Output_Controller:State_Count[2]~8_combout\) # (!\Output_Controller:InReg[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:InReg[6]~1_combout\,
	datab => \Output_Controller:State_Count[2]~8_combout\,
	datac => \WriteData~reg0_q\,
	datad => \DataOut[0]~0_combout\,
	combout => \Selector105~0_combout\);

-- Location: FF_X46_Y7_N29
\WriteData~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteData~reg0_q\);

ww_DataOut(0) <= \DataOut[0]~output_o\;

ww_DataOut(1) <= \DataOut[1]~output_o\;

ww_DataOut(2) <= \DataOut[2]~output_o\;

ww_DataOut(3) <= \DataOut[3]~output_o\;

ww_DataOut(4) <= \DataOut[4]~output_o\;

ww_DataOut(5) <= \DataOut[5]~output_o\;

ww_DataOut(6) <= \DataOut[6]~output_o\;

ww_DataOut(7) <= \DataOut[7]~output_o\;

ww_Address_H(0) <= \Address_H[0]~output_o\;

ww_Address_H(1) <= \Address_H[1]~output_o\;

ww_Address_H(2) <= \Address_H[2]~output_o\;

ww_Address_H(3) <= \Address_H[3]~output_o\;

ww_Address_H(4) <= \Address_H[4]~output_o\;

ww_Address_H(5) <= \Address_H[5]~output_o\;

ww_Address_H(6) <= \Address_H[6]~output_o\;

ww_Address_H(7) <= \Address_H[7]~output_o\;

ww_Address_H(8) <= \Address_H[8]~output_o\;

ww_Address_H(9) <= \Address_H[9]~output_o\;

ww_Address_V(0) <= \Address_V[0]~output_o\;

ww_Address_V(1) <= \Address_V[1]~output_o\;

ww_Address_V(2) <= \Address_V[2]~output_o\;

ww_Address_V(3) <= \Address_V[3]~output_o\;

ww_Address_V(4) <= \Address_V[4]~output_o\;

ww_Address_V(5) <= \Address_V[5]~output_o\;

ww_Address_V(6) <= \Address_V[6]~output_o\;

ww_Address_V(7) <= \Address_V[7]~output_o\;

ww_Address_V(8) <= \Address_V[8]~output_o\;

ww_Address_V(9) <= \Address_V[9]~output_o\;

ww_WriteData <= \WriteData~output_o\;
END structure;


