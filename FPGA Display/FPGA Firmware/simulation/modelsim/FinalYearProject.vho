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

-- DATE "05/24/2020 11:02:25"

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
-- DataOut[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[7]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_H[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_V[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_n	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \State_Controller:Clock_Count[0]~0_combout\ : std_logic;
SIGNAL \CS_n~input_o\ : std_logic;
SIGNAL \State_Controller:Clock_Count[0]~q\ : std_logic;
SIGNAL \Clock_Count~7_combout\ : std_logic;
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
SIGNAL \State_Controller:Clock_Count[29]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[30]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[30]~q\ : std_logic;
SIGNAL \State_Controller:Clock_Count[30]~2\ : std_logic;
SIGNAL \State_Controller:Clock_Count[31]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[31]~q\ : std_logic;
SIGNAL \State~9_combout\ : std_logic;
SIGNAL \State~8_combout\ : std_logic;
SIGNAL \State~10_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \State~11_combout\ : std_logic;
SIGNAL \Clock_Count~2_combout\ : std_logic;
SIGNAL \Clock_Count~3_combout\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State~16_combout\ : std_logic;
SIGNAL \State~19_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \Clock_Count~8_combout\ : std_logic;
SIGNAL \Clock_Count~4_combout\ : std_logic;
SIGNAL \Clock_Count~5_combout\ : std_logic;
SIGNAL \Clock_Count~6_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[1]~1_combout\ : std_logic;
SIGNAL \State_Controller:Clock_Count[1]~q\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \State~18_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \State~20_combout\ : std_logic;
SIGNAL \State.Dummy~q\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State.Address~q\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~1_combout\ : std_logic;
SIGNAL \State~22_combout\ : std_logic;
SIGNAL \State.Instruction~q\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \State~23_combout\ : std_logic;
SIGNAL \State.Alternate~q\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State~21_combout\ : std_logic;
SIGNAL \State.Data~q\ : std_logic;
SIGNAL \Address_H[7]~5_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~0_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~2_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[2]~q\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~0_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~1_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[1]~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Output_Controller:State_Count[0]~q\ : std_logic;
SIGNAL \DataOut[2]~2_combout\ : std_logic;
SIGNAL \State~17_combout\ : std_logic;
SIGNAL \State.Waiting~q\ : std_logic;
SIGNAL \DataOut[2]~4_combout\ : std_logic;
SIGNAL \DataOut[0]~reg0_q\ : std_logic;
SIGNAL \IO[1]~input_o\ : std_logic;
SIGNAL \DataOut[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[1]~reg0_q\ : std_logic;
SIGNAL \IO[2]~input_o\ : std_logic;
SIGNAL \DataOut[2]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[2]~reg0_q\ : std_logic;
SIGNAL \IO[3]~input_o\ : std_logic;
SIGNAL \DataOut[3]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[3]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[5]~2_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[5]~3_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[4]~q\ : std_logic;
SIGNAL \DataOut[4]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[5]~feeder_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[5]~q\ : std_logic;
SIGNAL \DataOut[5]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[5]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[6]~feeder_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[6]~q\ : std_logic;
SIGNAL \DataOut[6]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[6]~reg0_q\ : std_logic;
SIGNAL \Output_Controller:InReg[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Controller:InReg[7]~q\ : std_logic;
SIGNAL \DataOut[7]~reg0feeder_combout\ : std_logic;
SIGNAL \DataOut[7]~reg0_q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[0]~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[1]~q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[2]~q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[3]~q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[4]~q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[5]~q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[6]~q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[7]~q\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[8]~q\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[9]~q\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[10]~q\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[11]~q\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[12]~q\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[13]~q\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[14]~q\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[15]~q\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[16]~q\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[17]~q\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[18]~q\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[19]~q\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[20]~q\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[21]~q\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[22]~q\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[23]~q\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[24]~q\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[25]~q\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[26]~q\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[27]~q\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[28]~q\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[29]~q\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[30]~q\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_H[31]~q\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Address_H[5]~2_combout\ : std_logic;
SIGNAL \Address_H[5]~3_combout\ : std_logic;
SIGNAL \Address_H[5]~4_combout\ : std_logic;
SIGNAL \Address_H[0]~reg0_q\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Address_H[1]~reg0_q\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \Address_H[2]~reg0_q\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Address_H[3]~reg0_q\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Address_H[4]~reg0_q\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Address_H[5]~reg0_q\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Address_H[6]~reg0_q\ : std_logic;
SIGNAL \Selector111~1_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Selector111~2_combout\ : std_logic;
SIGNAL \Address_H[7]~6_combout\ : std_logic;
SIGNAL \Address_H[7]~reg0_q\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Selector110~1_combout\ : std_logic;
SIGNAL \Address_H[8]~reg0_q\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Address_H[9]~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[2]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[3]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[4]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[5]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[7]~q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[8]~q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[9]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[10]~q\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[11]~q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[12]~q\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[13]~q\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[14]~q\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[15]~q\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[16]~q\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[17]~q\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[18]~q\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[19]~q\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[20]~q\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[21]~q\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[22]~q\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[23]~q\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[24]~q\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[25]~q\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[26]~q\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[27]~q\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[28]~q\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[29]~q\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[30]~q\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Output_Controller:Data_V[31]~q\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~10_combout\ : std_logic;
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
SIGNAL \DataOut[2]~3_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Selector121~1_combout\ : std_logic;
SIGNAL \Selector121~2_combout\ : std_logic;
SIGNAL \Selector121~3_combout\ : std_logic;
SIGNAL \Selector121~4_combout\ : std_logic;
SIGNAL \Address_V[7]~reg0_q\ : std_logic;
SIGNAL \Data_V~7_combout\ : std_logic;
SIGNAL \Address_V[8]~reg0_q\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Address_V[9]~reg0_q\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector108~1_combout\ : std_logic;
SIGNAL \WriteData~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CS_n~input_o\ : std_logic;
SIGNAL \ALT_INV_State.Data~q\ : std_logic;

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
\ALT_INV_State.Data~q\ <= NOT \State.Data~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y34_N2
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

-- Location: IOOBUF_X7_Y34_N9
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X7_Y34_N16
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

-- Location: IOOBUF_X3_Y34_N2
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

-- Location: IOOBUF_X16_Y34_N16
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

-- Location: IOOBUF_X16_Y34_N2
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X20_Y34_N23
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

-- Location: IOOBUF_X38_Y34_N2
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X1_Y34_N9
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

-- Location: IOOBUF_X14_Y34_N23
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

-- Location: IOOBUF_X20_Y34_N9
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

-- Location: IOOBUF_X23_Y34_N23
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X31_Y34_N9
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: IOOBUF_X23_Y34_N16
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

-- Location: IOOBUF_X18_Y34_N23
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

-- Location: IOOBUF_X16_Y34_N9
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

-- Location: IOOBUF_X34_Y34_N16
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X20_Y34_N16
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

-- Location: IOIBUF_X0_Y26_N15
\IO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(0),
	o => \IO[0]~input_o\);

-- Location: LCCOMB_X20_Y28_N20
\State_Controller:Clock_Count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[0]~0_combout\ = !\Clock_Count~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Count~6_combout\,
	combout => \State_Controller:Clock_Count[0]~0_combout\);

-- Location: IOIBUF_X14_Y34_N15
\CS_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS_n,
	o => \CS_n~input_o\);

-- Location: FF_X20_Y28_N21
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

-- Location: LCCOMB_X19_Y28_N24
\Clock_Count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~7_combout\ = (\State_Controller:Clock_Count[1]~q\ & \Clock_Count~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State_Controller:Clock_Count[1]~q\,
	datad => \Clock_Count~5_combout\,
	combout => \Clock_Count~7_combout\);

-- Location: LCCOMB_X18_Y28_N2
\State_Controller:Clock_Count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[1]~1_combout\ = (\Clock_Count~6_combout\ & (\Clock_Count~7_combout\ $ (VCC))) # (!\Clock_Count~6_combout\ & (\Clock_Count~7_combout\ & VCC))
-- \State_Controller:Clock_Count[1]~2\ = CARRY((\Clock_Count~6_combout\ & \Clock_Count~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~6_combout\,
	datab => \Clock_Count~7_combout\,
	datad => VCC,
	combout => \State_Controller:Clock_Count[1]~1_combout\,
	cout => \State_Controller:Clock_Count[1]~2\);

-- Location: LCCOMB_X18_Y28_N4
\State_Controller:Clock_Count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[2]~1_combout\ = (\State_Controller:Clock_Count[1]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[2]~q\))) # (!\State_Controller:Clock_Count[1]~2\ & (((\State_Controller:Clock_Count[2]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[2]~2\ = CARRY(((!\State_Controller:Clock_Count[1]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[2]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[1]~2\,
	combout => \State_Controller:Clock_Count[2]~1_combout\,
	cout => \State_Controller:Clock_Count[2]~2\);

-- Location: FF_X18_Y28_N5
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

-- Location: LCCOMB_X18_Y28_N6
\State_Controller:Clock_Count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[3]~1_combout\ = (\State_Controller:Clock_Count[2]~2\ & (\State_Controller:Clock_Count[3]~q\ & (\Clock_Count~5_combout\ & VCC))) # (!\State_Controller:Clock_Count[2]~2\ & ((((\State_Controller:Clock_Count[3]~q\ & 
-- \Clock_Count~5_combout\)))))
-- \State_Controller:Clock_Count[3]~2\ = CARRY((\State_Controller:Clock_Count[3]~q\ & (\Clock_Count~5_combout\ & !\State_Controller:Clock_Count[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[3]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[2]~2\,
	combout => \State_Controller:Clock_Count[3]~1_combout\,
	cout => \State_Controller:Clock_Count[3]~2\);

-- Location: FF_X18_Y28_N7
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

-- Location: LCCOMB_X18_Y28_N8
\State_Controller:Clock_Count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[4]~1_combout\ = (\State_Controller:Clock_Count[3]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[4]~q\))) # (!\State_Controller:Clock_Count[3]~2\ & (((\State_Controller:Clock_Count[4]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[4]~2\ = CARRY(((!\State_Controller:Clock_Count[3]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[4]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[3]~2\,
	combout => \State_Controller:Clock_Count[4]~1_combout\,
	cout => \State_Controller:Clock_Count[4]~2\);

-- Location: FF_X18_Y28_N9
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

-- Location: LCCOMB_X18_Y28_N10
\State_Controller:Clock_Count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[5]~1_combout\ = (\State_Controller:Clock_Count[4]~2\ & (\State_Controller:Clock_Count[5]~q\ & (\Clock_Count~5_combout\ & VCC))) # (!\State_Controller:Clock_Count[4]~2\ & ((((\State_Controller:Clock_Count[5]~q\ & 
-- \Clock_Count~5_combout\)))))
-- \State_Controller:Clock_Count[5]~2\ = CARRY((\State_Controller:Clock_Count[5]~q\ & (\Clock_Count~5_combout\ & !\State_Controller:Clock_Count[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[5]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[4]~2\,
	combout => \State_Controller:Clock_Count[5]~1_combout\,
	cout => \State_Controller:Clock_Count[5]~2\);

-- Location: FF_X18_Y28_N11
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

-- Location: LCCOMB_X18_Y28_N12
\State_Controller:Clock_Count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[6]~1_combout\ = (\State_Controller:Clock_Count[5]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[6]~q\))) # (!\State_Controller:Clock_Count[5]~2\ & (((\State_Controller:Clock_Count[6]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[6]~2\ = CARRY(((!\State_Controller:Clock_Count[5]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[6]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[5]~2\,
	combout => \State_Controller:Clock_Count[6]~1_combout\,
	cout => \State_Controller:Clock_Count[6]~2\);

-- Location: FF_X18_Y28_N13
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

-- Location: LCCOMB_X18_Y28_N14
\State_Controller:Clock_Count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[7]~1_combout\ = (\State_Controller:Clock_Count[6]~2\ & (\State_Controller:Clock_Count[7]~q\ & (\Clock_Count~5_combout\ & VCC))) # (!\State_Controller:Clock_Count[6]~2\ & ((((\State_Controller:Clock_Count[7]~q\ & 
-- \Clock_Count~5_combout\)))))
-- \State_Controller:Clock_Count[7]~2\ = CARRY((\State_Controller:Clock_Count[7]~q\ & (\Clock_Count~5_combout\ & !\State_Controller:Clock_Count[6]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[7]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[6]~2\,
	combout => \State_Controller:Clock_Count[7]~1_combout\,
	cout => \State_Controller:Clock_Count[7]~2\);

-- Location: FF_X18_Y28_N15
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

-- Location: LCCOMB_X18_Y28_N16
\State_Controller:Clock_Count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[8]~1_combout\ = (\State_Controller:Clock_Count[7]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[8]~q\))) # (!\State_Controller:Clock_Count[7]~2\ & (((\State_Controller:Clock_Count[8]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[8]~2\ = CARRY(((!\State_Controller:Clock_Count[7]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[8]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[7]~2\,
	combout => \State_Controller:Clock_Count[8]~1_combout\,
	cout => \State_Controller:Clock_Count[8]~2\);

-- Location: FF_X18_Y28_N17
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

-- Location: LCCOMB_X18_Y28_N18
\State_Controller:Clock_Count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[9]~1_combout\ = (\State_Controller:Clock_Count[8]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[9]~q\ & VCC))) # (!\State_Controller:Clock_Count[8]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[9]~q\)))))
-- \State_Controller:Clock_Count[9]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[9]~q\ & !\State_Controller:Clock_Count[8]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[9]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[8]~2\,
	combout => \State_Controller:Clock_Count[9]~1_combout\,
	cout => \State_Controller:Clock_Count[9]~2\);

-- Location: FF_X18_Y28_N19
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

-- Location: LCCOMB_X18_Y28_N20
\State_Controller:Clock_Count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[10]~1_combout\ = (\State_Controller:Clock_Count[9]~2\ & (((!\State_Controller:Clock_Count[10]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[9]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[10]~q\)) # (GND)))
-- \State_Controller:Clock_Count[10]~2\ = CARRY(((!\State_Controller:Clock_Count[9]~2\) # (!\State_Controller:Clock_Count[10]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[10]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[9]~2\,
	combout => \State_Controller:Clock_Count[10]~1_combout\,
	cout => \State_Controller:Clock_Count[10]~2\);

-- Location: FF_X18_Y28_N21
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

-- Location: LCCOMB_X18_Y28_N22
\State_Controller:Clock_Count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[11]~1_combout\ = (\State_Controller:Clock_Count[10]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[11]~q\ & VCC))) # (!\State_Controller:Clock_Count[10]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[11]~q\)))))
-- \State_Controller:Clock_Count[11]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[11]~q\ & !\State_Controller:Clock_Count[10]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[11]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[10]~2\,
	combout => \State_Controller:Clock_Count[11]~1_combout\,
	cout => \State_Controller:Clock_Count[11]~2\);

-- Location: FF_X18_Y28_N23
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

-- Location: LCCOMB_X18_Y28_N24
\State_Controller:Clock_Count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[12]~1_combout\ = (\State_Controller:Clock_Count[11]~2\ & (((!\State_Controller:Clock_Count[12]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[11]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[12]~q\)) # (GND)))
-- \State_Controller:Clock_Count[12]~2\ = CARRY(((!\State_Controller:Clock_Count[11]~2\) # (!\State_Controller:Clock_Count[12]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[12]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[11]~2\,
	combout => \State_Controller:Clock_Count[12]~1_combout\,
	cout => \State_Controller:Clock_Count[12]~2\);

-- Location: FF_X18_Y28_N25
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

-- Location: LCCOMB_X18_Y28_N26
\State_Controller:Clock_Count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[13]~1_combout\ = (\State_Controller:Clock_Count[12]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[13]~q\ & VCC))) # (!\State_Controller:Clock_Count[12]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[13]~q\)))))
-- \State_Controller:Clock_Count[13]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[13]~q\ & !\State_Controller:Clock_Count[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[13]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[12]~2\,
	combout => \State_Controller:Clock_Count[13]~1_combout\,
	cout => \State_Controller:Clock_Count[13]~2\);

-- Location: FF_X18_Y28_N27
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

-- Location: LCCOMB_X18_Y28_N28
\State_Controller:Clock_Count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[14]~1_combout\ = (\State_Controller:Clock_Count[13]~2\ & (((!\State_Controller:Clock_Count[14]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[13]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[14]~q\)) # (GND)))
-- \State_Controller:Clock_Count[14]~2\ = CARRY(((!\State_Controller:Clock_Count[13]~2\) # (!\State_Controller:Clock_Count[14]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[14]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[13]~2\,
	combout => \State_Controller:Clock_Count[14]~1_combout\,
	cout => \State_Controller:Clock_Count[14]~2\);

-- Location: FF_X18_Y28_N29
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

-- Location: LCCOMB_X18_Y28_N30
\State_Controller:Clock_Count[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[15]~1_combout\ = (\State_Controller:Clock_Count[14]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[15]~q\ & VCC))) # (!\State_Controller:Clock_Count[14]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[15]~q\)))))
-- \State_Controller:Clock_Count[15]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[15]~q\ & !\State_Controller:Clock_Count[14]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[15]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[14]~2\,
	combout => \State_Controller:Clock_Count[15]~1_combout\,
	cout => \State_Controller:Clock_Count[15]~2\);

-- Location: FF_X18_Y28_N31
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

-- Location: LCCOMB_X18_Y27_N0
\State_Controller:Clock_Count[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[16]~1_combout\ = (\State_Controller:Clock_Count[15]~2\ & (((!\State_Controller:Clock_Count[16]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[15]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[16]~q\)) # (GND)))
-- \State_Controller:Clock_Count[16]~2\ = CARRY(((!\State_Controller:Clock_Count[15]~2\) # (!\State_Controller:Clock_Count[16]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[16]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[15]~2\,
	combout => \State_Controller:Clock_Count[16]~1_combout\,
	cout => \State_Controller:Clock_Count[16]~2\);

-- Location: FF_X18_Y27_N1
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

-- Location: LCCOMB_X18_Y27_N2
\State_Controller:Clock_Count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[17]~1_combout\ = (\State_Controller:Clock_Count[16]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[17]~q\ & VCC))) # (!\State_Controller:Clock_Count[16]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[17]~q\)))))
-- \State_Controller:Clock_Count[17]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[17]~q\ & !\State_Controller:Clock_Count[16]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[17]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[16]~2\,
	combout => \State_Controller:Clock_Count[17]~1_combout\,
	cout => \State_Controller:Clock_Count[17]~2\);

-- Location: FF_X18_Y27_N3
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

-- Location: LCCOMB_X18_Y27_N4
\State_Controller:Clock_Count[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[18]~1_combout\ = (\State_Controller:Clock_Count[17]~2\ & (((!\State_Controller:Clock_Count[18]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[17]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[18]~q\)) # (GND)))
-- \State_Controller:Clock_Count[18]~2\ = CARRY(((!\State_Controller:Clock_Count[17]~2\) # (!\State_Controller:Clock_Count[18]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[18]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[17]~2\,
	combout => \State_Controller:Clock_Count[18]~1_combout\,
	cout => \State_Controller:Clock_Count[18]~2\);

-- Location: FF_X18_Y27_N5
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

-- Location: LCCOMB_X18_Y27_N6
\State_Controller:Clock_Count[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[19]~1_combout\ = (\State_Controller:Clock_Count[18]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[19]~q\ & VCC))) # (!\State_Controller:Clock_Count[18]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[19]~q\)))))
-- \State_Controller:Clock_Count[19]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[19]~q\ & !\State_Controller:Clock_Count[18]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[19]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[18]~2\,
	combout => \State_Controller:Clock_Count[19]~1_combout\,
	cout => \State_Controller:Clock_Count[19]~2\);

-- Location: FF_X18_Y27_N7
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

-- Location: LCCOMB_X18_Y27_N8
\State_Controller:Clock_Count[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[20]~1_combout\ = (\State_Controller:Clock_Count[19]~2\ & (((!\State_Controller:Clock_Count[20]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[19]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[20]~q\)) # (GND)))
-- \State_Controller:Clock_Count[20]~2\ = CARRY(((!\State_Controller:Clock_Count[19]~2\) # (!\State_Controller:Clock_Count[20]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[20]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[19]~2\,
	combout => \State_Controller:Clock_Count[20]~1_combout\,
	cout => \State_Controller:Clock_Count[20]~2\);

-- Location: FF_X18_Y27_N9
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

-- Location: LCCOMB_X18_Y27_N10
\State_Controller:Clock_Count[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[21]~1_combout\ = (\State_Controller:Clock_Count[20]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[21]~q\ & VCC))) # (!\State_Controller:Clock_Count[20]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[21]~q\)))))
-- \State_Controller:Clock_Count[21]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[21]~q\ & !\State_Controller:Clock_Count[20]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[21]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[20]~2\,
	combout => \State_Controller:Clock_Count[21]~1_combout\,
	cout => \State_Controller:Clock_Count[21]~2\);

-- Location: FF_X18_Y27_N11
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

-- Location: LCCOMB_X18_Y27_N12
\State_Controller:Clock_Count[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[22]~1_combout\ = (\State_Controller:Clock_Count[21]~2\ & (((!\State_Controller:Clock_Count[22]~q\)) # (!\Clock_Count~5_combout\))) # (!\State_Controller:Clock_Count[21]~2\ & (((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[22]~q\)) # (GND)))
-- \State_Controller:Clock_Count[22]~2\ = CARRY(((!\State_Controller:Clock_Count[21]~2\) # (!\State_Controller:Clock_Count[22]~q\)) # (!\Clock_Count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[22]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[21]~2\,
	combout => \State_Controller:Clock_Count[22]~1_combout\,
	cout => \State_Controller:Clock_Count[22]~2\);

-- Location: FF_X18_Y27_N13
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

-- Location: LCCOMB_X18_Y27_N14
\State_Controller:Clock_Count[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[23]~1_combout\ = (\State_Controller:Clock_Count[22]~2\ & (\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[23]~q\ & VCC))) # (!\State_Controller:Clock_Count[22]~2\ & ((((\Clock_Count~5_combout\ & 
-- \State_Controller:Clock_Count[23]~q\)))))
-- \State_Controller:Clock_Count[23]~2\ = CARRY((\Clock_Count~5_combout\ & (\State_Controller:Clock_Count[23]~q\ & !\State_Controller:Clock_Count[22]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~5_combout\,
	datab => \State_Controller:Clock_Count[23]~q\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[22]~2\,
	combout => \State_Controller:Clock_Count[23]~1_combout\,
	cout => \State_Controller:Clock_Count[23]~2\);

-- Location: FF_X18_Y27_N15
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

-- Location: LCCOMB_X18_Y27_N16
\State_Controller:Clock_Count[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[24]~1_combout\ = (\State_Controller:Clock_Count[23]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[24]~q\))) # (!\State_Controller:Clock_Count[23]~2\ & (((\State_Controller:Clock_Count[24]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[24]~2\ = CARRY(((!\State_Controller:Clock_Count[23]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[24]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[23]~2\,
	combout => \State_Controller:Clock_Count[24]~1_combout\,
	cout => \State_Controller:Clock_Count[24]~2\);

-- Location: FF_X18_Y27_N17
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

-- Location: LCCOMB_X18_Y27_N18
\State_Controller:Clock_Count[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[25]~1_combout\ = (\State_Controller:Clock_Count[24]~2\ & (\State_Controller:Clock_Count[25]~q\ & (\Clock_Count~5_combout\ & VCC))) # (!\State_Controller:Clock_Count[24]~2\ & ((((\State_Controller:Clock_Count[25]~q\ & 
-- \Clock_Count~5_combout\)))))
-- \State_Controller:Clock_Count[25]~2\ = CARRY((\State_Controller:Clock_Count[25]~q\ & (\Clock_Count~5_combout\ & !\State_Controller:Clock_Count[24]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[25]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[24]~2\,
	combout => \State_Controller:Clock_Count[25]~1_combout\,
	cout => \State_Controller:Clock_Count[25]~2\);

-- Location: FF_X18_Y27_N19
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

-- Location: LCCOMB_X18_Y27_N20
\State_Controller:Clock_Count[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[26]~1_combout\ = (\State_Controller:Clock_Count[25]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[26]~q\))) # (!\State_Controller:Clock_Count[25]~2\ & (((\State_Controller:Clock_Count[26]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[26]~2\ = CARRY(((!\State_Controller:Clock_Count[25]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[26]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[25]~2\,
	combout => \State_Controller:Clock_Count[26]~1_combout\,
	cout => \State_Controller:Clock_Count[26]~2\);

-- Location: FF_X18_Y27_N21
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

-- Location: LCCOMB_X18_Y27_N22
\State_Controller:Clock_Count[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[27]~1_combout\ = (\State_Controller:Clock_Count[26]~2\ & (\State_Controller:Clock_Count[27]~q\ & (\Clock_Count~5_combout\ & VCC))) # (!\State_Controller:Clock_Count[26]~2\ & ((((\State_Controller:Clock_Count[27]~q\ & 
-- \Clock_Count~5_combout\)))))
-- \State_Controller:Clock_Count[27]~2\ = CARRY((\State_Controller:Clock_Count[27]~q\ & (\Clock_Count~5_combout\ & !\State_Controller:Clock_Count[26]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[27]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[26]~2\,
	combout => \State_Controller:Clock_Count[27]~1_combout\,
	cout => \State_Controller:Clock_Count[27]~2\);

-- Location: FF_X18_Y27_N23
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

-- Location: LCCOMB_X18_Y27_N24
\State_Controller:Clock_Count[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[28]~1_combout\ = (\State_Controller:Clock_Count[27]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[28]~q\))) # (!\State_Controller:Clock_Count[27]~2\ & (((\State_Controller:Clock_Count[28]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[28]~2\ = CARRY(((!\State_Controller:Clock_Count[27]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[28]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[27]~2\,
	combout => \State_Controller:Clock_Count[28]~1_combout\,
	cout => \State_Controller:Clock_Count[28]~2\);

-- Location: FF_X18_Y27_N25
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

-- Location: LCCOMB_X18_Y27_N26
\State_Controller:Clock_Count[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[29]~1_combout\ = (\State_Controller:Clock_Count[28]~2\ & (\State_Controller:Clock_Count[29]~q\ & (\Clock_Count~5_combout\ & VCC))) # (!\State_Controller:Clock_Count[28]~2\ & ((((\State_Controller:Clock_Count[29]~q\ & 
-- \Clock_Count~5_combout\)))))
-- \State_Controller:Clock_Count[29]~2\ = CARRY((\State_Controller:Clock_Count[29]~q\ & (\Clock_Count~5_combout\ & !\State_Controller:Clock_Count[28]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[29]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[28]~2\,
	combout => \State_Controller:Clock_Count[29]~1_combout\,
	cout => \State_Controller:Clock_Count[29]~2\);

-- Location: FF_X18_Y27_N27
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

-- Location: LCCOMB_X18_Y27_N28
\State_Controller:Clock_Count[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State_Controller:Clock_Count[30]~1_combout\ = (\State_Controller:Clock_Count[29]~2\ & (((!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[30]~q\))) # (!\State_Controller:Clock_Count[29]~2\ & (((\State_Controller:Clock_Count[30]~q\ & 
-- \Clock_Count~5_combout\)) # (GND)))
-- \State_Controller:Clock_Count[30]~2\ = CARRY(((!\State_Controller:Clock_Count[29]~2\) # (!\Clock_Count~5_combout\)) # (!\State_Controller:Clock_Count[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \Clock_Count~5_combout\,
	datad => VCC,
	cin => \State_Controller:Clock_Count[29]~2\,
	combout => \State_Controller:Clock_Count[30]~1_combout\,
	cout => \State_Controller:Clock_Count[30]~2\);

-- Location: FF_X18_Y27_N29
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

-- Location: LCCOMB_X18_Y27_N30
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

-- Location: FF_X18_Y27_N31
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

-- Location: LCCOMB_X19_Y28_N14
\State~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~9_combout\ = (!\State_Controller:Clock_Count[25]~q\ & (!\State_Controller:Clock_Count[24]~q\ & (!\State_Controller:Clock_Count[26]~q\ & !\State_Controller:Clock_Count[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[25]~q\,
	datab => \State_Controller:Clock_Count[24]~q\,
	datac => \State_Controller:Clock_Count[26]~q\,
	datad => \State_Controller:Clock_Count[27]~q\,
	combout => \State~9_combout\);

-- Location: LCCOMB_X19_Y28_N16
\State~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~8_combout\ = (!\State_Controller:Clock_Count[23]~q\ & (!\State_Controller:Clock_Count[21]~q\ & (!\State_Controller:Clock_Count[22]~q\ & !\State_Controller:Clock_Count[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[23]~q\,
	datab => \State_Controller:Clock_Count[21]~q\,
	datac => \State_Controller:Clock_Count[22]~q\,
	datad => \State_Controller:Clock_Count[20]~q\,
	combout => \State~8_combout\);

-- Location: LCCOMB_X19_Y28_N8
\State~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~10_combout\ = (!\State_Controller:Clock_Count[29]~q\ & (!\State_Controller:Clock_Count[28]~q\ & (\State~9_combout\ & \State~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[29]~q\,
	datab => \State_Controller:Clock_Count[28]~q\,
	datac => \State~9_combout\,
	datad => \State~8_combout\,
	combout => \State~10_combout\);

-- Location: LCCOMB_X19_Y28_N20
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\State_Controller:Clock_Count[6]~q\ & (!\State_Controller:Clock_Count[8]~q\ & (!\State_Controller:Clock_Count[5]~q\ & !\State_Controller:Clock_Count[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[6]~q\,
	datab => \State_Controller:Clock_Count[8]~q\,
	datac => \State_Controller:Clock_Count[5]~q\,
	datad => \State_Controller:Clock_Count[7]~q\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X18_Y28_N0
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!\State_Controller:Clock_Count[11]~q\ & (!\State_Controller:Clock_Count[9]~q\ & (!\State_Controller:Clock_Count[12]~q\ & !\State_Controller:Clock_Count[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[11]~q\,
	datab => \State_Controller:Clock_Count[9]~q\,
	datac => \State_Controller:Clock_Count[12]~q\,
	datad => \State_Controller:Clock_Count[10]~q\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X19_Y28_N6
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\State_Controller:Clock_Count[18]~q\ & (!\State_Controller:Clock_Count[15]~q\ & !\State_Controller:Clock_Count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[18]~q\,
	datab => \State_Controller:Clock_Count[15]~q\,
	datad => \State_Controller:Clock_Count[17]~q\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X19_Y28_N18
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!\State_Controller:Clock_Count[4]~q\ & (\LessThan2~2_combout\ & (\LessThan2~3_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[4]~q\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan2~3_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X20_Y28_N22
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!\State_Controller:Clock_Count[2]~q\ & !\State_Controller:Clock_Count[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State_Controller:Clock_Count[2]~q\,
	datad => \State_Controller:Clock_Count[1]~q\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X20_Y28_N16
\State~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~11_combout\ = (!\State_Controller:Clock_Count[14]~q\ & (!\State_Controller:Clock_Count[16]~q\ & (!\State_Controller:Clock_Count[13]~q\ & !\State_Controller:Clock_Count[19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[14]~q\,
	datab => \State_Controller:Clock_Count[16]~q\,
	datac => \State_Controller:Clock_Count[13]~q\,
	datad => \State_Controller:Clock_Count[19]~q\,
	combout => \State~11_combout\);

-- Location: LCCOMB_X20_Y28_N4
\Clock_Count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~2_combout\ = (\State_Controller:Clock_Count[3]~q\) # ((\State_Controller:Clock_Count[30]~q\) # ((!\State~11_combout\) # (!\LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[3]~q\,
	datab => \State_Controller:Clock_Count[30]~q\,
	datac => \LessThan2~6_combout\,
	datad => \State~11_combout\,
	combout => \Clock_Count~2_combout\);

-- Location: LCCOMB_X19_Y28_N12
\Clock_Count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~3_combout\ = (!\State_Controller:Clock_Count[31]~q\ & (((\Clock_Count~2_combout\) # (!\LessThan2~4_combout\)) # (!\State~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[31]~q\,
	datab => \State~10_combout\,
	datac => \LessThan2~4_combout\,
	datad => \Clock_Count~2_combout\,
	combout => \Clock_Count~3_combout\);

-- Location: LCCOMB_X19_Y28_N26
\State~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~15_combout\ = (!\State_Controller:Clock_Count[4]~q\ & ((!\State_Controller:Clock_Count[3]~q\) # (!\State_Controller:Clock_Count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State_Controller:Clock_Count[2]~q\,
	datac => \State_Controller:Clock_Count[3]~q\,
	datad => \State_Controller:Clock_Count[4]~q\,
	combout => \State~15_combout\);

-- Location: LCCOMB_X19_Y28_N0
\State~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~16_combout\ = (\LessThan2~3_combout\ & (\LessThan2~2_combout\ & (\State~15_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => \LessThan2~2_combout\,
	datac => \State~15_combout\,
	datad => \LessThan4~0_combout\,
	combout => \State~16_combout\);

-- Location: LCCOMB_X19_Y28_N4
\State~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~19_combout\ = (!\State_Controller:Clock_Count[30]~q\ & (\State~11_combout\ & (\State~10_combout\ & \State~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \State~11_combout\,
	datac => \State~10_combout\,
	datad => \State~16_combout\,
	combout => \State~19_combout\);

-- Location: LCCOMB_X19_Y27_N28
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ((!\State_Controller:Clock_Count[16]~q\ & (!\State_Controller:Clock_Count[18]~q\ & !\State_Controller:Clock_Count[17]~q\))) # (!\State_Controller:Clock_Count[19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[16]~q\,
	datab => \State_Controller:Clock_Count[19]~q\,
	datac => \State_Controller:Clock_Count[18]~q\,
	datad => \State_Controller:Clock_Count[17]~q\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X20_Y28_N6
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\LessThan4~1_combout\) # ((\LessThan4~0_combout\ & ((!\State_Controller:Clock_Count[13]~q\) # (!\State_Controller:Clock_Count[14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[14]~q\,
	datab => \State_Controller:Clock_Count[13]~q\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan4~1_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X19_Y28_N22
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (!\State_Controller:Clock_Count[30]~q\ & (\State~10_combout\ & ((\State~16_combout\) # (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[30]~q\,
	datab => \State~16_combout\,
	datac => \State~10_combout\,
	datad => \LessThan4~2_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X19_Y28_N10
\Clock_Count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~8_combout\ = (!\State_Controller:Clock_Count[30]~q\ & (((!\State_Controller:Clock_Count[2]~q\ & !\State_Controller:Clock_Count[1]~q\)) # (!\State_Controller:Clock_Count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[2]~q\,
	datab => \State_Controller:Clock_Count[3]~q\,
	datac => \State_Controller:Clock_Count[1]~q\,
	datad => \State_Controller:Clock_Count[30]~q\,
	combout => \Clock_Count~8_combout\);

-- Location: LCCOMB_X19_Y28_N2
\Clock_Count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~4_combout\ = (\Clock_Count~8_combout\ & (\State~11_combout\ & (\State~10_combout\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~8_combout\,
	datab => \State~11_combout\,
	datac => \State~10_combout\,
	datad => \LessThan2~4_combout\,
	combout => \Clock_Count~4_combout\);

-- Location: LCCOMB_X19_Y28_N28
\Clock_Count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~5_combout\ = ((\State~19_combout\) # ((\LessThan4~3_combout\) # (\Clock_Count~4_combout\))) # (!\Clock_Count~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~3_combout\,
	datab => \State~19_combout\,
	datac => \LessThan4~3_combout\,
	datad => \Clock_Count~4_combout\,
	combout => \Clock_Count~5_combout\);

-- Location: LCCOMB_X19_Y28_N30
\Clock_Count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock_Count~6_combout\ = (\State_Controller:Clock_Count[0]~q\ & \Clock_Count~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State_Controller:Clock_Count[0]~q\,
	datad => \Clock_Count~5_combout\,
	combout => \Clock_Count~6_combout\);

-- Location: FF_X18_Y28_N3
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

-- Location: LCCOMB_X20_Y28_N26
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\State~10_combout\ & (\LessThan2~4_combout\ & \State~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~10_combout\,
	datab => \LessThan2~4_combout\,
	datad => \State~11_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X20_Y28_N30
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\LessThan2~5_combout\ & (((!\State_Controller:Clock_Count[1]~q\ & !\State_Controller:Clock_Count[2]~q\)) # (!\State_Controller:Clock_Count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[1]~q\,
	datab => \State_Controller:Clock_Count[2]~q\,
	datac => \State_Controller:Clock_Count[3]~q\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X20_Y28_N24
\State~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~18_combout\ = (!\CS_n~input_o\ & \Clock_Count~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS_n~input_o\,
	datad => \Clock_Count~3_combout\,
	combout => \State~18_combout\);

-- Location: LCCOMB_X20_Y28_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\State_Controller:Clock_Count[3]~q\) # ((\State_Controller:Clock_Count[30]~q\) # (!\LessThan2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Controller:Clock_Count[3]~q\,
	datab => \LessThan2~5_combout\,
	datac => \State_Controller:Clock_Count[30]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X20_Y28_N2
\State~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~20_combout\ = (!\LessThan2~7_combout\ & (\State~18_combout\ & (\State~19_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \State~18_combout\,
	datac => \State~19_combout\,
	datad => \LessThan1~0_combout\,
	combout => \State~20_combout\);

-- Location: FF_X20_Y28_N3
\State.Dummy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Dummy~q\);

-- Location: LCCOMB_X20_Y28_N0
\State~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~12_combout\ = (\Clock_Count~3_combout\ & (!\CS_n~input_o\ & !\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Count~3_combout\,
	datac => \CS_n~input_o\,
	datad => \LessThan1~0_combout\,
	combout => \State~12_combout\);

-- Location: FF_X20_Y28_N1
\State.Address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Address~q\);

-- Location: LCCOMB_X23_Y31_N18
\Output_Controller:State_Count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~1_combout\ = (\Output_Controller:State_Count[0]~q\ & (\Output_Controller:State_Count[1]~q\ $ (\Output_Controller:State_Count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[1]~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Output_Controller:State_Count[2]~1_combout\);

-- Location: LCCOMB_X20_Y28_N28
\State~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~22_combout\ = (!\CS_n~input_o\ & !\Clock_Count~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS_n~input_o\,
	datad => \Clock_Count~3_combout\,
	combout => \State~22_combout\);

-- Location: FF_X20_Y28_N29
\State.Instruction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Instruction~q\);

-- Location: LCCOMB_X20_Y28_N14
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\State~10_combout\ & (\State~11_combout\ & (!\State_Controller:Clock_Count[3]~q\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~10_combout\,
	datab => \State~11_combout\,
	datac => \State_Controller:Clock_Count[3]~q\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y28_N18
\State~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~23_combout\ = (\LessThan2~7_combout\ & (\State~18_combout\ & (!\LessThan1~1_combout\ & !\State_Controller:Clock_Count[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \State~18_combout\,
	datac => \LessThan1~1_combout\,
	datad => \State_Controller:Clock_Count[30]~q\,
	combout => \State~23_combout\);

-- Location: FF_X20_Y28_N19
\State.Alternate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Alternate~q\);

-- Location: LCCOMB_X20_Y28_N10
\State~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~13_combout\ = (\State~10_combout\ & (\State~11_combout\ & (!\State_Controller:Clock_Count[30]~q\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~10_combout\,
	datab => \State~11_combout\,
	datac => \State_Controller:Clock_Count[30]~q\,
	datad => \LessThan2~4_combout\,
	combout => \State~13_combout\);

-- Location: LCCOMB_X20_Y28_N8
\State~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~14_combout\ = (!\State_Controller:Clock_Count[31]~q\ & (((\State_Controller:Clock_Count[2]~q\ & \State_Controller:Clock_Count[3]~q\)) # (!\State~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~13_combout\,
	datab => \State_Controller:Clock_Count[2]~q\,
	datac => \State_Controller:Clock_Count[3]~q\,
	datad => \State_Controller:Clock_Count[31]~q\,
	combout => \State~14_combout\);

-- Location: LCCOMB_X23_Y31_N26
\State~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~21_combout\ = (!\CS_n~input_o\ & (\LessThan4~3_combout\ & \State~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS_n~input_o\,
	datac => \LessThan4~3_combout\,
	datad => \State~14_combout\,
	combout => \State~21_combout\);

-- Location: FF_X23_Y31_N27
\State.Data\ : dffeas
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
	q => \State.Data~q\);

-- Location: LCCOMB_X20_Y32_N14
\Address_H[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address_H[7]~5_combout\ = (\State.Instruction~q\) # ((\State.Alternate~q\) # (\State.Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Instruction~q\,
	datac => \State.Alternate~q\,
	datad => \State.Data~q\,
	combout => \Address_H[7]~5_combout\);

-- Location: LCCOMB_X21_Y31_N12
\Output_Controller:State_Count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~0_combout\ = (\State.Dummy~q\) # ((\Address_H[7]~5_combout\ & ((\Output_Controller:State_Count[2]~q\) # (\Output_Controller:State_Count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[2]~q\,
	datab => \Output_Controller:State_Count[1]~q\,
	datac => \Address_H[7]~5_combout\,
	datad => \State.Dummy~q\,
	combout => \Output_Controller:State_Count[2]~0_combout\);

-- Location: LCCOMB_X23_Y31_N10
\Output_Controller:State_Count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[2]~2_combout\ = (\Output_Controller:State_Count[2]~0_combout\ & (((\Output_Controller:State_Count[2]~q\)))) # (!\Output_Controller:State_Count[2]~0_combout\ & (\State.Address~q\ & 
-- (\Output_Controller:State_Count[2]~1_combout\ $ (\Output_Controller:State_Count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \Output_Controller:State_Count[2]~1_combout\,
	datac => \Output_Controller:State_Count[2]~q\,
	datad => \Output_Controller:State_Count[2]~0_combout\,
	combout => \Output_Controller:State_Count[2]~2_combout\);

-- Location: FF_X23_Y31_N11
\Output_Controller:State_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:State_Count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:State_Count[2]~q\);

-- Location: LCCOMB_X23_Y31_N28
\Output_Controller:State_Count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[1]~0_combout\ = (\Output_Controller:State_Count[0]~q\ & !\Output_Controller:State_Count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Output_Controller:State_Count[1]~0_combout\);

-- Location: LCCOMB_X23_Y31_N12
\Output_Controller:State_Count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:State_Count[1]~1_combout\ = (\Output_Controller:State_Count[2]~0_combout\ & (((\Output_Controller:State_Count[1]~q\)))) # (!\Output_Controller:State_Count[2]~0_combout\ & (\State.Address~q\ & 
-- (\Output_Controller:State_Count[1]~0_combout\ $ (\Output_Controller:State_Count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \Output_Controller:State_Count[1]~0_combout\,
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~0_combout\,
	combout => \Output_Controller:State_Count[1]~1_combout\);

-- Location: FF_X23_Y31_N13
\Output_Controller:State_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:State_Count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:State_Count[1]~q\);

-- Location: LCCOMB_X20_Y32_N22
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Output_Controller:State_Count[1]~q\ & !\Output_Controller:State_Count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X20_Y32_N26
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Output_Controller:State_Count[1]~q\ & \Output_Controller:State_Count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y32_N24
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Output_Controller:State_Count[0]~q\ & ((\State.Dummy~q\) # ((\State.Address~q\ & \WideOr4~0_combout\)))) # (!\Output_Controller:State_Count[0]~q\ & (\State.Address~q\ & (!\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \Output_Controller:State_Count[0]~q\,
	datac => \WideOr4~0_combout\,
	datad => \State.Dummy~q\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X20_Y32_N8
\Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\Selector39~0_combout\) # ((\Address_H[7]~5_combout\ & (\Equal1~1_combout\ $ (\Output_Controller:State_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Address_H[7]~5_combout\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~1_combout\);

-- Location: FF_X20_Y32_N9
\Output_Controller:State_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:State_Count[0]~q\);

-- Location: LCCOMB_X20_Y32_N6
\DataOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[2]~2_combout\ = (\Output_Controller:State_Count[0]~q\ & ((\State.Address~q\ & ((!\Output_Controller:State_Count[2]~q\) # (!\Output_Controller:State_Count[1]~q\))) # (!\State.Address~q\ & (!\Output_Controller:State_Count[1]~q\ & 
-- !\Output_Controller:State_Count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \Output_Controller:State_Count[0]~q\,
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \DataOut[2]~2_combout\);

-- Location: LCCOMB_X23_Y31_N0
\State~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~17_combout\ = (!\CS_n~input_o\ & ((\LessThan4~3_combout\) # (!\State~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS_n~input_o\,
	datac => \LessThan4~3_combout\,
	datad => \State~14_combout\,
	combout => \State~17_combout\);

-- Location: FF_X23_Y31_N1
\State.Waiting\ : dffeas
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
	q => \State.Waiting~q\);

-- Location: LCCOMB_X8_Y32_N24
\DataOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[2]~4_combout\ = (!\State.Dummy~q\ & (\DataOut[2]~2_combout\ & \State.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Dummy~q\,
	datab => \DataOut[2]~2_combout\,
	datad => \State.Waiting~q\,
	combout => \DataOut[2]~4_combout\);

-- Location: FF_X8_Y32_N25
\DataOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \IO[0]~input_o\,
	sload => VCC,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[0]~reg0_q\);

-- Location: IOIBUF_X5_Y34_N15
\IO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(1),
	o => \IO[1]~input_o\);

-- Location: LCCOMB_X8_Y32_N26
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

-- Location: FF_X8_Y32_N27
\DataOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[1]~reg0feeder_combout\,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[1]~reg0_q\);

-- Location: IOIBUF_X9_Y34_N8
\IO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(2),
	o => \IO[2]~input_o\);

-- Location: LCCOMB_X8_Y32_N16
\DataOut[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[2]~reg0feeder_combout\ = \IO[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[2]~input_o\,
	combout => \DataOut[2]~reg0feeder_combout\);

-- Location: FF_X8_Y32_N17
\DataOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[2]~reg0feeder_combout\,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[2]~reg0_q\);

-- Location: IOIBUF_X11_Y34_N1
\IO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO(3),
	o => \IO[3]~input_o\);

-- Location: LCCOMB_X8_Y32_N22
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

-- Location: FF_X8_Y32_N23
\DataOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[3]~reg0feeder_combout\,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[3]~reg0_q\);

-- Location: LCCOMB_X18_Y32_N4
\Output_Controller:InReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[5]~2_combout\ = (!\Output_Controller:State_Count[0]~q\ & ((\Output_Controller:State_Count[1]~q\ & (\State.Address~q\ & !\Output_Controller:State_Count[2]~q\)) # (!\Output_Controller:State_Count[1]~q\ & ((\State.Address~q\) # 
-- (!\Output_Controller:State_Count[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[1]~q\,
	datab => \State.Address~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Output_Controller:InReg[5]~2_combout\);

-- Location: LCCOMB_X8_Y32_N20
\Output_Controller:InReg[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[5]~3_combout\ = (!\State.Dummy~q\ & (\Output_Controller:InReg[5]~2_combout\ & \State.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Dummy~q\,
	datab => \Output_Controller:InReg[5]~2_combout\,
	datad => \State.Waiting~q\,
	combout => \Output_Controller:InReg[5]~3_combout\);

-- Location: FF_X8_Y32_N21
\Output_Controller:InReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \IO[0]~input_o\,
	sload => VCC,
	ena => \Output_Controller:InReg[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[4]~q\);

-- Location: FF_X8_Y32_N13
\DataOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Output_Controller:InReg[4]~q\,
	sload => VCC,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[4]~reg0_q\);

-- Location: LCCOMB_X8_Y32_N10
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

-- Location: FF_X8_Y32_N11
\Output_Controller:InReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:InReg[5]~feeder_combout\,
	ena => \Output_Controller:InReg[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[5]~q\);

-- Location: LCCOMB_X8_Y32_N14
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

-- Location: FF_X8_Y32_N15
\DataOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[5]~reg0feeder_combout\,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[5]~reg0_q\);

-- Location: LCCOMB_X8_Y32_N28
\Output_Controller:InReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Controller:InReg[6]~feeder_combout\ = \IO[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IO[2]~input_o\,
	combout => \Output_Controller:InReg[6]~feeder_combout\);

-- Location: FF_X8_Y32_N29
\Output_Controller:InReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:InReg[6]~feeder_combout\,
	ena => \Output_Controller:InReg[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[6]~q\);

-- Location: LCCOMB_X8_Y32_N8
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

-- Location: FF_X8_Y32_N9
\DataOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[6]~reg0feeder_combout\,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[6]~reg0_q\);

-- Location: LCCOMB_X8_Y32_N18
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

-- Location: FF_X8_Y32_N19
\Output_Controller:InReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Output_Controller:InReg[7]~feeder_combout\,
	ena => \Output_Controller:InReg[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:InReg[7]~q\);

-- Location: LCCOMB_X8_Y32_N6
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

-- Location: FF_X8_Y32_N7
\DataOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DataOut[7]~reg0feeder_combout\,
	ena => \DataOut[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataOut[7]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N0
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (!\Output_Controller:State_Count[1]~q\ & (!\Output_Controller:State_Count[2]~q\ & (\Output_Controller:State_Count[0]~q\ & \State.Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[1]~q\,
	datab => \Output_Controller:State_Count[2]~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \State.Data~q\,
	combout => \Selector63~0_combout\);

-- Location: LCCOMB_X23_Y31_N20
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Output_Controller:State_Count[1]~q\ & (\Output_Controller:State_Count[0]~q\ & !\Output_Controller:State_Count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[1]~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X19_Y31_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \Output_Controller:Data_H[0]~q\ $ (VCC)
-- \Add2~1\ = CARRY(\Output_Controller:Data_H[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X20_Y31_N2
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\State.Data~q\ & (!\Equal6~10_combout\ & (\Equal1~0_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datab => \Equal6~10_combout\,
	datac => \Equal1~0_combout\,
	datad => \Add2~0_combout\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X21_Y31_N6
\Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\Selector63~0_combout\) # ((!\State.Waiting~q\ & !\State.Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Waiting~q\,
	datab => \Selector63~0_combout\,
	datac => \State.Data~q\,
	combout => \Selector71~1_combout\);

-- Location: FF_X20_Y31_N3
\Output_Controller:Data_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[0]~q\);

-- Location: LCCOMB_X19_Y31_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Output_Controller:Data_H[1]~q\ & (!\Add2~1\)) # (!\Output_Controller:Data_H[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\Output_Controller:Data_H[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X20_Y31_N24
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\Equal1~0_combout\ & (\State.Data~q\ & \Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \State.Data~q\,
	datad => \Add2~2_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X20_Y31_N25
\Output_Controller:Data_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[1]~q\);

-- Location: LCCOMB_X19_Y31_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Output_Controller:Data_H[2]~q\ & (\Add2~3\ $ (GND))) # (!\Output_Controller:Data_H[2]~q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\Output_Controller:Data_H[2]~q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[2]~q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X20_Y31_N30
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\State.Data~q\ & (\Add2~4_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datab => \Add2~4_combout\,
	datac => \Equal1~0_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X20_Y31_N31
\Output_Controller:Data_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[2]~q\);

-- Location: LCCOMB_X19_Y31_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Output_Controller:Data_H[3]~q\ & (!\Add2~5\)) # (!\Output_Controller:Data_H[3]~q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\Output_Controller:Data_H[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[3]~q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X20_Y31_N12
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\State.Data~q\ & (\Add2~6_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datab => \Add2~6_combout\,
	datac => \Equal1~0_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X20_Y31_N13
\Output_Controller:Data_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[3]~q\);

-- Location: LCCOMB_X19_Y31_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Output_Controller:Data_H[4]~q\ & (\Add2~7\ $ (GND))) # (!\Output_Controller:Data_H[4]~q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Output_Controller:Data_H[4]~q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[4]~q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X20_Y31_N4
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\Equal1~0_combout\ & (\State.Data~q\ & \Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \State.Data~q\,
	datad => \Add2~8_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X20_Y31_N5
\Output_Controller:Data_H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[4]~q\);

-- Location: LCCOMB_X19_Y31_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Output_Controller:Data_H[5]~q\ & (!\Add2~9\)) # (!\Output_Controller:Data_H[5]~q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Output_Controller:Data_H[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[5]~q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y31_N28
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\State.Data~q\ & (\Add2~10_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X21_Y31_N29
\Output_Controller:Data_H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[5]~q\);

-- Location: LCCOMB_X19_Y31_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Output_Controller:Data_H[6]~q\ & (\Add2~11\ $ (GND))) # (!\Output_Controller:Data_H[6]~q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Output_Controller:Data_H[6]~q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[6]~q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X21_Y31_N18
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\State.Data~q\ & (\Add2~12_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~12_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector65~0_combout\);

-- Location: FF_X21_Y31_N19
\Output_Controller:Data_H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[6]~q\);

-- Location: LCCOMB_X19_Y31_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Output_Controller:Data_H[7]~q\ & (!\Add2~13\)) # (!\Output_Controller:Data_H[7]~q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Output_Controller:Data_H[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[7]~q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X21_Y31_N22
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\Add2~14_combout\ & (\Selector63~0_combout\ & !\Equal6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datac => \Selector63~0_combout\,
	datad => \Equal6~10_combout\,
	combout => \Selector64~0_combout\);

-- Location: FF_X21_Y31_N23
\Output_Controller:Data_H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[7]~q\);

-- Location: LCCOMB_X19_Y31_N16
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

-- Location: LCCOMB_X18_Y31_N6
\Selector63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = (\Selector63~0_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~0_combout\,
	datac => \Add2~16_combout\,
	combout => \Selector63~1_combout\);

-- Location: FF_X18_Y31_N7
\Output_Controller:Data_H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector63~1_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[8]~q\);

-- Location: LCCOMB_X19_Y31_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Output_Controller:Data_H[9]~q\ & (!\Add2~17\)) # (!\Output_Controller:Data_H[9]~q\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\Output_Controller:Data_H[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[9]~q\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X18_Y31_N16
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (!\Equal6~10_combout\ & (\Add2~18_combout\ & \Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Add2~18_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X18_Y31_N17
\Output_Controller:Data_H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[9]~q\);

-- Location: LCCOMB_X19_Y31_N20
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

-- Location: LCCOMB_X18_Y31_N28
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\Add2~20_combout\ & \Selector63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X18_Y31_N29
\Output_Controller:Data_H[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[10]~q\);

-- Location: LCCOMB_X19_Y31_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Output_Controller:Data_H[11]~q\ & (!\Add2~21\)) # (!\Output_Controller:Data_H[11]~q\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\Output_Controller:Data_H[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[11]~q\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X18_Y31_N14
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\Selector63~0_combout\ & \Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~0_combout\,
	datad => \Add2~22_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X18_Y31_N15
\Output_Controller:Data_H[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[11]~q\);

-- Location: LCCOMB_X19_Y31_N24
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

-- Location: LCCOMB_X20_Y31_N18
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Selector63~0_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datad => \Add2~24_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X20_Y31_N19
\Output_Controller:Data_H[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[12]~q\);

-- Location: LCCOMB_X19_Y31_N26
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

-- Location: LCCOMB_X20_Y31_N28
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\Add2~26_combout\ & \Selector63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X20_Y31_N29
\Output_Controller:Data_H[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[13]~q\);

-- Location: LCCOMB_X19_Y31_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Output_Controller:Data_H[14]~q\ & (\Add2~27\ $ (GND))) # (!\Output_Controller:Data_H[14]~q\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\Output_Controller:Data_H[14]~q\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[14]~q\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X20_Y31_N6
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\Selector63~0_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datad => \Add2~28_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X20_Y31_N7
\Output_Controller:Data_H[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[14]~q\);

-- Location: LCCOMB_X19_Y31_N30
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

-- Location: LCCOMB_X20_Y31_N8
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\Selector63~0_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datad => \Add2~30_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X20_Y31_N9
\Output_Controller:Data_H[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[15]~q\);

-- Location: LCCOMB_X19_Y30_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Output_Controller:Data_H[16]~q\ & (\Add2~31\ $ (GND))) # (!\Output_Controller:Data_H[16]~q\ & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\Output_Controller:Data_H[16]~q\ & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[16]~q\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X20_Y30_N0
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\Selector63~0_combout\ & \Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datac => \Add2~32_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X20_Y30_N1
\Output_Controller:Data_H[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[16]~q\);

-- Location: LCCOMB_X19_Y30_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Output_Controller:Data_H[17]~q\ & (!\Add2~33\)) # (!\Output_Controller:Data_H[17]~q\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\Output_Controller:Data_H[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[17]~q\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X20_Y30_N2
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\Selector63~0_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~34_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X20_Y30_N3
\Output_Controller:Data_H[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[17]~q\);

-- Location: LCCOMB_X19_Y30_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\Output_Controller:Data_H[18]~q\ & (\Add2~35\ $ (GND))) # (!\Output_Controller:Data_H[18]~q\ & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\Output_Controller:Data_H[18]~q\ & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[18]~q\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X20_Y30_N4
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\Selector63~0_combout\ & \Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datac => \Add2~36_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X20_Y30_N5
\Output_Controller:Data_H[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[18]~q\);

-- Location: LCCOMB_X19_Y30_N6
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

-- Location: LCCOMB_X20_Y30_N26
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\Selector63~0_combout\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datac => \Add2~38_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X20_Y30_N27
\Output_Controller:Data_H[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[19]~q\);

-- Location: LCCOMB_X19_Y30_N8
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

-- Location: LCCOMB_X18_Y31_N2
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Selector63~0_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~0_combout\,
	datac => \Add2~40_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X18_Y31_N3
\Output_Controller:Data_H[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[20]~q\);

-- Location: LCCOMB_X19_Y30_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Output_Controller:Data_H[21]~q\ & (!\Add2~41\)) # (!\Output_Controller:Data_H[21]~q\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\Output_Controller:Data_H[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[21]~q\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X18_Y31_N4
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Selector63~0_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~0_combout\,
	datad => \Add2~42_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X18_Y31_N5
\Output_Controller:Data_H[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[21]~q\);

-- Location: LCCOMB_X19_Y30_N12
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

-- Location: LCCOMB_X18_Y31_N26
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Selector63~0_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~0_combout\,
	datac => \Add2~44_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X18_Y31_N27
\Output_Controller:Data_H[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[22]~q\);

-- Location: LCCOMB_X19_Y30_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Output_Controller:Data_H[23]~q\ & (!\Add2~45\)) # (!\Output_Controller:Data_H[23]~q\ & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\Output_Controller:Data_H[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[23]~q\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X18_Y31_N24
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\Add2~46_combout\ & \Selector63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~46_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X18_Y31_N25
\Output_Controller:Data_H[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[23]~q\);

-- Location: LCCOMB_X18_Y31_N30
\Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!\Output_Controller:Data_H[22]~q\ & (!\Output_Controller:Data_H[23]~q\ & (!\Output_Controller:Data_H[21]~q\ & !\Output_Controller:Data_H[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[22]~q\,
	datab => \Output_Controller:Data_H[23]~q\,
	datac => \Output_Controller:Data_H[21]~q\,
	datad => \Output_Controller:Data_H[20]~q\,
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X20_Y30_N24
\Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!\Output_Controller:Data_H[19]~q\ & (!\Output_Controller:Data_H[17]~q\ & (!\Output_Controller:Data_H[18]~q\ & !\Output_Controller:Data_H[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[19]~q\,
	datab => \Output_Controller:Data_H[17]~q\,
	datac => \Output_Controller:Data_H[18]~q\,
	datad => \Output_Controller:Data_H[16]~q\,
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X20_Y30_N22
\Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (\Equal6~6_combout\ & \Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~6_combout\,
	datad => \Equal6~5_combout\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X19_Y30_N16
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

-- Location: LCCOMB_X20_Y30_N20
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Selector63~0_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datac => \Add2~48_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X20_Y30_N21
\Output_Controller:Data_H[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[24]~q\);

-- Location: LCCOMB_X19_Y30_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Output_Controller:Data_H[25]~q\ & (!\Add2~49\)) # (!\Output_Controller:Data_H[25]~q\ & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\Output_Controller:Data_H[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[25]~q\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X20_Y30_N30
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Selector63~0_combout\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~50_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X20_Y30_N31
\Output_Controller:Data_H[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[25]~q\);

-- Location: LCCOMB_X19_Y30_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\Output_Controller:Data_H[26]~q\ & (\Add2~51\ $ (GND))) # (!\Output_Controller:Data_H[26]~q\ & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\Output_Controller:Data_H[26]~q\ & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_H[26]~q\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X20_Y30_N28
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\Selector63~0_combout\ & \Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~52_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X20_Y30_N29
\Output_Controller:Data_H[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[26]~q\);

-- Location: LCCOMB_X19_Y30_N22
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

-- Location: LCCOMB_X20_Y30_N14
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Selector63~0_combout\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~54_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X20_Y30_N15
\Output_Controller:Data_H[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[27]~q\);

-- Location: LCCOMB_X20_Y30_N16
\Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!\Output_Controller:Data_H[25]~q\ & (!\Output_Controller:Data_H[26]~q\ & (!\Output_Controller:Data_H[27]~q\ & !\Output_Controller:Data_H[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[25]~q\,
	datab => \Output_Controller:Data_H[26]~q\,
	datac => \Output_Controller:Data_H[27]~q\,
	datad => \Output_Controller:Data_H[24]~q\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X19_Y30_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\Output_Controller:Data_H[28]~q\ & (\Add2~55\ $ (GND))) # (!\Output_Controller:Data_H[28]~q\ & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((\Output_Controller:Data_H[28]~q\ & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[28]~q\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X20_Y30_N6
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Selector63~0_combout\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~56_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X20_Y30_N7
\Output_Controller:Data_H[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[28]~q\);

-- Location: LCCOMB_X19_Y30_N26
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

-- Location: LCCOMB_X18_Y30_N16
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Selector63~0_combout\ & \Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~58_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X18_Y30_N17
\Output_Controller:Data_H[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[29]~q\);

-- Location: LCCOMB_X19_Y30_N28
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

-- Location: LCCOMB_X20_Y30_N12
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\Selector63~0_combout\ & \Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~60_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X20_Y30_N13
\Output_Controller:Data_H[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[30]~q\);

-- Location: LCCOMB_X19_Y30_N30
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

-- Location: LCCOMB_X20_Y30_N18
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Selector63~0_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector63~0_combout\,
	datad => \Add2~62_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X20_Y30_N19
\Output_Controller:Data_H[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_H[31]~q\);

-- Location: LCCOMB_X20_Y30_N8
\Equal6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (!\Output_Controller:Data_H[30]~q\ & (!\Output_Controller:Data_H[31]~q\ & (!\Output_Controller:Data_H[29]~q\ & !\Output_Controller:Data_H[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[30]~q\,
	datab => \Output_Controller:Data_H[31]~q\,
	datac => \Output_Controller:Data_H[29]~q\,
	datad => \Output_Controller:Data_H[28]~q\,
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X20_Y31_N14
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Output_Controller:Data_H[3]~q\ & (!\Output_Controller:Data_H[1]~q\ & (!\Output_Controller:Data_H[2]~q\ & !\Output_Controller:Data_H[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[3]~q\,
	datab => \Output_Controller:Data_H[1]~q\,
	datac => \Output_Controller:Data_H[2]~q\,
	datad => \Output_Controller:Data_H[0]~q\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X20_Y31_N22
\Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!\Output_Controller:Data_H[14]~q\ & (!\Output_Controller:Data_H[13]~q\ & (!\Output_Controller:Data_H[15]~q\ & !\Output_Controller:Data_H[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[14]~q\,
	datab => \Output_Controller:Data_H[13]~q\,
	datac => \Output_Controller:Data_H[15]~q\,
	datad => \Output_Controller:Data_H[12]~q\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X21_Y31_N8
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Output_Controller:Data_H[7]~q\ & (!\Output_Controller:Data_H[6]~q\ & (!\Output_Controller:Data_H[4]~q\ & !\Output_Controller:Data_H[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[7]~q\,
	datab => \Output_Controller:Data_H[6]~q\,
	datac => \Output_Controller:Data_H[4]~q\,
	datad => \Output_Controller:Data_H[5]~q\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X18_Y31_N12
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!\Output_Controller:Data_H[8]~q\ & (!\Output_Controller:Data_H[10]~q\ & (!\Output_Controller:Data_H[11]~q\ & \Output_Controller:Data_H[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_H[8]~q\,
	datab => \Output_Controller:Data_H[10]~q\,
	datac => \Output_Controller:Data_H[11]~q\,
	datad => \Output_Controller:Data_H[9]~q\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X21_Y31_N30
\Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~3_combout\ & (\Equal6~1_combout\ & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~3_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~2_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X20_Y30_N10
\Equal6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~7_combout\ & (\Equal6~8_combout\ & (\Equal6~9_combout\ & \Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~7_combout\,
	datab => \Equal6~8_combout\,
	datac => \Equal6~9_combout\,
	datad => \Equal6~4_combout\,
	combout => \Equal6~10_combout\);

-- Location: LCCOMB_X20_Y31_N20
\Selector118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\State.Data~q\ & (!\Equal6~10_combout\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datab => \Equal6~10_combout\,
	datac => \Add2~0_combout\,
	combout => \Selector118~0_combout\);

-- Location: LCCOMB_X20_Y32_N16
\Address_H[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address_H[5]~2_combout\ = (((\Output_Controller:State_Count[1]~q\ & \Output_Controller:State_Count[2]~q\)) # (!\Output_Controller:State_Count[0]~q\)) # (!\State.Address~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \Output_Controller:State_Count[1]~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Address_H[5]~2_combout\);

-- Location: LCCOMB_X20_Y32_N2
\Address_H[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address_H[5]~3_combout\ = (!\State.Instruction~q\ & !\State.Alternate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Instruction~q\,
	datac => \State.Alternate~q\,
	combout => \Address_H[5]~3_combout\);

-- Location: LCCOMB_X20_Y32_N12
\Address_H[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address_H[5]~4_combout\ = ((\Selector63~0_combout\) # ((\DataOut[2]~2_combout\ & !\Address_H[5]~3_combout\))) # (!\Address_H[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataOut[2]~2_combout\,
	datab => \Address_H[5]~2_combout\,
	datac => \Selector63~0_combout\,
	datad => \Address_H[5]~3_combout\,
	combout => \Address_H[5]~4_combout\);

-- Location: FF_X20_Y31_N21
\Address_H[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector118~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[0]~reg0_q\);

-- Location: LCCOMB_X20_Y31_N10
\Selector117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\State.Data~q\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add2~2_combout\,
	combout => \Selector117~0_combout\);

-- Location: FF_X20_Y31_N11
\Address_H[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector117~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[1]~reg0_q\);

-- Location: LCCOMB_X20_Y31_N16
\Selector116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\State.Data~q\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~4_combout\,
	combout => \Selector116~0_combout\);

-- Location: FF_X20_Y31_N17
\Address_H[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector116~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[2]~reg0_q\);

-- Location: LCCOMB_X20_Y31_N26
\Selector115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\State.Data~q\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~6_combout\,
	combout => \Selector115~0_combout\);

-- Location: FF_X20_Y31_N27
\Address_H[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector115~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[3]~reg0_q\);

-- Location: LCCOMB_X20_Y31_N0
\Selector114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\State.Data~q\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add2~8_combout\,
	combout => \Selector114~0_combout\);

-- Location: FF_X20_Y31_N1
\Address_H[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector114~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[4]~reg0_q\);

-- Location: LCCOMB_X21_Y31_N16
\Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\State.Data~q\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~10_combout\,
	combout => \Selector113~0_combout\);

-- Location: FF_X21_Y31_N17
\Address_H[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector113~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[5]~reg0_q\);

-- Location: LCCOMB_X21_Y31_N26
\Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\State.Data~q\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~12_combout\,
	combout => \Selector112~0_combout\);

-- Location: FF_X21_Y31_N27
\Address_H[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector112~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[6]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N20
\Selector111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~1_combout\ = (\Output_Controller:State_Count[0]~q\ & (((\Output_Controller:State_Count[2]~q\ & \Address_H[7]~reg0_q\)) # (!\Output_Controller:State_Count[1]~q\))) # (!\Output_Controller:State_Count[0]~q\ & (((\Address_H[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~q\,
	datac => \Address_H[7]~reg0_q\,
	datad => \Output_Controller:State_Count[1]~q\,
	combout => \Selector111~1_combout\);

-- Location: LCCOMB_X18_Y31_N18
\Selector111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\State.Data~q\ & (\Add2~14_combout\ & !\Equal6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datac => \Add2~14_combout\,
	datad => \Equal6~10_combout\,
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X18_Y31_N22
\Selector111~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~2_combout\ = (\Selector111~0_combout\) # ((\State.Address~q\ & (!\State.Data~q\ & \Selector111~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \State.Data~q\,
	datac => \Selector111~1_combout\,
	datad => \Selector111~0_combout\,
	combout => \Selector111~2_combout\);

-- Location: LCCOMB_X21_Y31_N2
\Address_H[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address_H[7]~6_combout\ = (\State.Waiting~q\ & (!\State.Dummy~q\ & ((\Equal1~0_combout\) # (!\Address_H[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Waiting~q\,
	datab => \Equal1~0_combout\,
	datac => \Address_H[7]~5_combout\,
	datad => \State.Dummy~q\,
	combout => \Address_H[7]~6_combout\);

-- Location: FF_X18_Y31_N23
\Address_H[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector111~2_combout\,
	ena => \Address_H[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[7]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N10
\Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\Output_Controller:State_Count[0]~q\ & ((\Output_Controller:State_Count[2]~q\ & ((\Address_H[8]~reg0_q\) # (!\Output_Controller:State_Count[1]~q\))) # (!\Output_Controller:State_Count[2]~q\ & 
-- ((\Output_Controller:State_Count[1]~q\))))) # (!\Output_Controller:State_Count[0]~q\ & (((\Address_H[8]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:State_Count[0]~q\,
	datab => \Output_Controller:State_Count[2]~q\,
	datac => \Address_H[8]~reg0_q\,
	datad => \Output_Controller:State_Count[1]~q\,
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X18_Y31_N8
\Selector110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector110~1_combout\ = (\Selector110~0_combout\ & \State.Address~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datad => \State.Address~q\,
	combout => \Selector110~1_combout\);

-- Location: FF_X18_Y31_N9
\Address_H[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector110~1_combout\,
	asdata => \Add2~16_combout\,
	sload => \State.Data~q\,
	ena => \Address_H[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[8]~reg0_q\);

-- Location: LCCOMB_X21_Y31_N24
\Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = ((\Add2~18_combout\ & !\Equal6~10_combout\)) # (!\State.Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add2~18_combout\,
	datad => \Equal6~10_combout\,
	combout => \Selector109~0_combout\);

-- Location: FF_X21_Y31_N25
\Address_H[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector109~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_H[9]~reg0_q\);

-- Location: LCCOMB_X24_Y32_N0
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

-- Location: LCCOMB_X23_Y32_N2
\Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\State.Data~q\ & (\Add1~0_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~0_combout\,
	datad => \Equal7~10_combout\,
	combout => \Selector103~0_combout\);

-- Location: LCCOMB_X21_Y31_N0
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\State.Waiting~q\ & (\Selector63~0_combout\ & ((\Equal6~10_combout\)))) # (!\State.Waiting~q\ & (((\Selector63~0_combout\ & \Equal6~10_combout\)) # (!\State.Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Waiting~q\,
	datab => \Selector63~0_combout\,
	datac => \State.Data~q\,
	datad => \Equal6~10_combout\,
	combout => \Selector80~0_combout\);

-- Location: FF_X23_Y32_N3
\Output_Controller:Data_V[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[0]~q\);

-- Location: LCCOMB_X24_Y32_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Output_Controller:Data_V[1]~q\ & (!\Add1~1\)) # (!\Output_Controller:Data_V[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\Output_Controller:Data_V[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y32_N16
\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\State.Data~q\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~2_combout\,
	combout => \Selector102~0_combout\);

-- Location: FF_X25_Y32_N17
\Output_Controller:Data_V[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[1]~q\);

-- Location: LCCOMB_X24_Y32_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Output_Controller:Data_V[2]~q\ & (\Add1~3\ $ (GND))) # (!\Output_Controller:Data_V[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\Output_Controller:Data_V[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X23_Y32_N8
\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\State.Data~q\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datad => \Add1~4_combout\,
	combout => \Selector101~0_combout\);

-- Location: FF_X23_Y32_N9
\Output_Controller:Data_V[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector101~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[2]~q\);

-- Location: LCCOMB_X24_Y32_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Output_Controller:Data_V[3]~q\ & (!\Add1~5\)) # (!\Output_Controller:Data_V[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Output_Controller:Data_V[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y32_N22
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\State.Data~q\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datad => \Add1~6_combout\,
	combout => \Selector100~0_combout\);

-- Location: FF_X23_Y32_N23
\Output_Controller:Data_V[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[3]~q\);

-- Location: LCCOMB_X24_Y32_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Output_Controller:Data_V[4]~q\ & (\Add1~7\ $ (GND))) # (!\Output_Controller:Data_V[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\Output_Controller:Data_V[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y32_N10
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\Add1~8_combout\ & \State.Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \State.Data~q\,
	combout => \Selector99~0_combout\);

-- Location: FF_X23_Y32_N11
\Output_Controller:Data_V[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[4]~q\);

-- Location: LCCOMB_X24_Y32_N10
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

-- Location: LCCOMB_X23_Y32_N16
\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\State.Data~q\ & (\Add1~10_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~10_combout\,
	datad => \Equal7~10_combout\,
	combout => \Selector98~0_combout\);

-- Location: FF_X23_Y32_N17
\Output_Controller:Data_V[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[5]~q\);

-- Location: LCCOMB_X24_Y32_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Output_Controller:Data_V[6]~q\ & (\Add1~11\ $ (GND))) # (!\Output_Controller:Data_V[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\Output_Controller:Data_V[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y32_N26
\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\State.Data~q\ & (\Add1~12_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~12_combout\,
	datad => \Equal7~10_combout\,
	combout => \Selector97~0_combout\);

-- Location: FF_X23_Y32_N27
\Output_Controller:Data_V[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[6]~q\);

-- Location: LCCOMB_X24_Y32_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Output_Controller:Data_V[7]~q\ & (!\Add1~13\)) # (!\Output_Controller:Data_V[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\Output_Controller:Data_V[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X23_Y32_N28
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\State.Data~q\ & (\Add1~14_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~14_combout\,
	datad => \Equal7~10_combout\,
	combout => \Selector96~0_combout\);

-- Location: FF_X23_Y32_N29
\Output_Controller:Data_V[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[7]~q\);

-- Location: LCCOMB_X24_Y32_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Output_Controller:Data_V[8]~q\ & (\Add1~15\ $ (GND))) # (!\Output_Controller:Data_V[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\Output_Controller:Data_V[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X25_Y32_N4
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\State.Data~q\ & (\Add1~16_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datac => \Add1~16_combout\,
	datad => \Equal7~10_combout\,
	combout => \Selector95~0_combout\);

-- Location: FF_X25_Y32_N5
\Output_Controller:Data_V[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[8]~q\);

-- Location: LCCOMB_X24_Y32_N18
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

-- Location: LCCOMB_X25_Y32_N2
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\State.Data~q\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~18_combout\,
	combout => \Selector94~0_combout\);

-- Location: FF_X25_Y32_N3
\Output_Controller:Data_V[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[9]~q\);

-- Location: LCCOMB_X24_Y32_N20
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

-- Location: LCCOMB_X25_Y32_N12
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\State.Data~q\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~20_combout\,
	combout => \Selector93~0_combout\);

-- Location: FF_X25_Y32_N13
\Output_Controller:Data_V[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[10]~q\);

-- Location: LCCOMB_X24_Y32_N22
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

-- Location: LCCOMB_X25_Y32_N18
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\State.Data~q\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~22_combout\,
	combout => \Selector92~0_combout\);

-- Location: FF_X25_Y32_N19
\Output_Controller:Data_V[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[11]~q\);

-- Location: LCCOMB_X24_Y32_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Output_Controller:Data_V[12]~q\ & (\Add1~23\ $ (GND))) # (!\Output_Controller:Data_V[12]~q\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\Output_Controller:Data_V[12]~q\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[12]~q\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X25_Y31_N18
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\Add1~24_combout\ & \State.Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \State.Data~q\,
	combout => \Selector91~0_combout\);

-- Location: FF_X25_Y31_N19
\Output_Controller:Data_V[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector91~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[12]~q\);

-- Location: LCCOMB_X24_Y32_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Output_Controller:Data_V[13]~q\ & (!\Add1~25\)) # (!\Output_Controller:Data_V[13]~q\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\Output_Controller:Data_V[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[13]~q\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X25_Y31_N4
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\State.Data~q\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~26_combout\,
	combout => \Selector90~0_combout\);

-- Location: FF_X25_Y31_N5
\Output_Controller:Data_V[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector90~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[13]~q\);

-- Location: LCCOMB_X24_Y32_N28
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

-- Location: LCCOMB_X25_Y31_N22
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\Add1~28_combout\ & \State.Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~28_combout\,
	datad => \State.Data~q\,
	combout => \Selector89~0_combout\);

-- Location: FF_X25_Y31_N23
\Output_Controller:Data_V[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector89~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[14]~q\);

-- Location: LCCOMB_X24_Y32_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Output_Controller:Data_V[15]~q\ & (!\Add1~29\)) # (!\Output_Controller:Data_V[15]~q\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\Output_Controller:Data_V[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[15]~q\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X25_Y31_N8
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\State.Data~q\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~30_combout\,
	combout => \Selector88~0_combout\);

-- Location: FF_X25_Y31_N9
\Output_Controller:Data_V[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector88~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[15]~q\);

-- Location: LCCOMB_X24_Y31_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Output_Controller:Data_V[16]~q\ & (\Add1~31\ $ (GND))) # (!\Output_Controller:Data_V[16]~q\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\Output_Controller:Data_V[16]~q\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[16]~q\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X25_Y32_N20
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\State.Data~q\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datac => \Add1~32_combout\,
	combout => \Selector87~0_combout\);

-- Location: FF_X25_Y32_N21
\Output_Controller:Data_V[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector87~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[16]~q\);

-- Location: LCCOMB_X24_Y31_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Output_Controller:Data_V[17]~q\ & (!\Add1~33\)) # (!\Output_Controller:Data_V[17]~q\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\Output_Controller:Data_V[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[17]~q\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X25_Y31_N2
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\State.Data~q\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~34_combout\,
	combout => \Selector86~0_combout\);

-- Location: FF_X25_Y31_N3
\Output_Controller:Data_V[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector86~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[17]~q\);

-- Location: LCCOMB_X24_Y31_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\Output_Controller:Data_V[18]~q\ & (\Add1~35\ $ (GND))) # (!\Output_Controller:Data_V[18]~q\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\Output_Controller:Data_V[18]~q\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[18]~q\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X25_Y32_N30
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\State.Data~q\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~36_combout\,
	combout => \Selector85~0_combout\);

-- Location: FF_X25_Y32_N31
\Output_Controller:Data_V[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector85~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[18]~q\);

-- Location: LCCOMB_X24_Y31_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Output_Controller:Data_V[19]~q\ & (!\Add1~37\)) # (!\Output_Controller:Data_V[19]~q\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\Output_Controller:Data_V[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[19]~q\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X25_Y32_N24
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\State.Data~q\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datac => \Add1~38_combout\,
	combout => \Selector84~0_combout\);

-- Location: FF_X25_Y32_N25
\Output_Controller:Data_V[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector84~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[19]~q\);

-- Location: LCCOMB_X24_Y31_N8
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

-- Location: LCCOMB_X25_Y31_N14
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\State.Data~q\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~40_combout\,
	combout => \Selector83~0_combout\);

-- Location: FF_X25_Y31_N15
\Output_Controller:Data_V[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector83~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[20]~q\);

-- Location: LCCOMB_X24_Y31_N10
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

-- Location: LCCOMB_X25_Y31_N28
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\State.Data~q\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~42_combout\,
	combout => \Selector82~0_combout\);

-- Location: FF_X25_Y31_N29
\Output_Controller:Data_V[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector82~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[21]~q\);

-- Location: LCCOMB_X24_Y31_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Output_Controller:Data_V[22]~q\ & (\Add1~43\ $ (GND))) # (!\Output_Controller:Data_V[22]~q\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\Output_Controller:Data_V[22]~q\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[22]~q\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X25_Y31_N6
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\State.Data~q\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~44_combout\,
	combout => \Selector81~0_combout\);

-- Location: FF_X25_Y31_N7
\Output_Controller:Data_V[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[22]~q\);

-- Location: LCCOMB_X24_Y31_N14
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

-- Location: LCCOMB_X25_Y31_N20
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\State.Data~q\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~46_combout\,
	combout => \Selector80~1_combout\);

-- Location: FF_X25_Y31_N21
\Output_Controller:Data_V[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector80~1_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[23]~q\);

-- Location: LCCOMB_X24_Y31_N16
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

-- Location: LCCOMB_X23_Y31_N6
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\State.Data~q\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~48_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X23_Y31_N7
\Output_Controller:Data_V[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[24]~q\);

-- Location: LCCOMB_X24_Y31_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Output_Controller:Data_V[25]~q\ & (!\Add1~49\)) # (!\Output_Controller:Data_V[25]~q\ & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!\Output_Controller:Data_V[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[25]~q\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X23_Y31_N16
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\State.Data~q\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~50_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X23_Y31_N17
\Output_Controller:Data_V[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[25]~q\);

-- Location: LCCOMB_X24_Y31_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\Output_Controller:Data_V[26]~q\ & (\Add1~51\ $ (GND))) # (!\Output_Controller:Data_V[26]~q\ & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((\Output_Controller:Data_V[26]~q\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[26]~q\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X23_Y31_N22
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\State.Data~q\ & \Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datac => \Add1~52_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X23_Y31_N23
\Output_Controller:Data_V[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[26]~q\);

-- Location: LCCOMB_X24_Y31_N22
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

-- Location: LCCOMB_X23_Y31_N8
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\State.Data~q\ & \Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Data~q\,
	datad => \Add1~54_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X23_Y31_N9
\Output_Controller:Data_V[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[27]~q\);

-- Location: LCCOMB_X24_Y31_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\Output_Controller:Data_V[28]~q\ & (\Add1~55\ $ (GND))) # (!\Output_Controller:Data_V[28]~q\ & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((\Output_Controller:Data_V[28]~q\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[28]~q\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X25_Y31_N10
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\State.Data~q\ & \Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~56_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X25_Y31_N11
\Output_Controller:Data_V[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[28]~q\);

-- Location: LCCOMB_X24_Y31_N26
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

-- Location: LCCOMB_X25_Y31_N24
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\Add1~58_combout\ & \State.Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~58_combout\,
	datad => \State.Data~q\,
	combout => \Selector74~0_combout\);

-- Location: FF_X25_Y31_N25
\Output_Controller:Data_V[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[29]~q\);

-- Location: LCCOMB_X24_Y31_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\Output_Controller:Data_V[30]~q\ & (\Add1~59\ $ (GND))) # (!\Output_Controller:Data_V[30]~q\ & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((\Output_Controller:Data_V[30]~q\ & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[30]~q\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X25_Y31_N26
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\State.Data~q\ & \Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~60_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X25_Y31_N27
\Output_Controller:Data_V[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[30]~q\);

-- Location: LCCOMB_X24_Y31_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Output_Controller:Data_V[31]~q\ $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Output_Controller:Data_V[31]~q\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X25_Y31_N12
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\State.Data~q\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.Data~q\,
	datad => \Add1~62_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X25_Y31_N13
\Output_Controller:Data_V[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Controller:Data_V[31]~q\);

-- Location: LCCOMB_X25_Y31_N30
\Equal7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (!\Output_Controller:Data_V[28]~q\ & (!\Output_Controller:Data_V[29]~q\ & (!\Output_Controller:Data_V[30]~q\ & !\Output_Controller:Data_V[31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[28]~q\,
	datab => \Output_Controller:Data_V[29]~q\,
	datac => \Output_Controller:Data_V[30]~q\,
	datad => \Output_Controller:Data_V[31]~q\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X23_Y31_N14
\Equal7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (!\Output_Controller:Data_V[26]~q\ & (!\Output_Controller:Data_V[25]~q\ & (!\Output_Controller:Data_V[27]~q\ & !\Output_Controller:Data_V[24]~q\)))

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
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X23_Y32_N12
\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!\Output_Controller:Data_V[4]~q\ & (\Output_Controller:Data_V[5]~q\ & (\Output_Controller:Data_V[6]~q\ & \Output_Controller:Data_V[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[4]~q\,
	datab => \Output_Controller:Data_V[5]~q\,
	datac => \Output_Controller:Data_V[6]~q\,
	datad => \Output_Controller:Data_V[7]~q\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X23_Y32_N6
\Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!\Output_Controller:Data_V[3]~q\ & !\Output_Controller:Data_V[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[3]~q\,
	datac => \Output_Controller:Data_V[2]~q\,
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X23_Y32_N0
\Equal7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (\Equal7~5_combout\ & (!\Output_Controller:Data_V[1]~q\ & (!\Output_Controller:Data_V[0]~q\ & \Equal7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datab => \Output_Controller:Data_V[1]~q\,
	datac => \Output_Controller:Data_V[0]~q\,
	datad => \Equal7~6_combout\,
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X25_Y31_N16
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!\Output_Controller:Data_V[14]~q\ & (!\Output_Controller:Data_V[13]~q\ & (!\Output_Controller:Data_V[15]~q\ & !\Output_Controller:Data_V[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[14]~q\,
	datab => \Output_Controller:Data_V[13]~q\,
	datac => \Output_Controller:Data_V[15]~q\,
	datad => \Output_Controller:Data_V[12]~q\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X25_Y31_N0
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\Output_Controller:Data_V[22]~q\ & (!\Output_Controller:Data_V[23]~q\ & (!\Output_Controller:Data_V[20]~q\ & !\Output_Controller:Data_V[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[22]~q\,
	datab => \Output_Controller:Data_V[23]~q\,
	datac => \Output_Controller:Data_V[20]~q\,
	datad => \Output_Controller:Data_V[21]~q\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X25_Y32_N26
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\Output_Controller:Data_V[19]~q\ & (!\Output_Controller:Data_V[16]~q\ & (!\Output_Controller:Data_V[18]~q\ & !\Output_Controller:Data_V[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[19]~q\,
	datab => \Output_Controller:Data_V[16]~q\,
	datac => \Output_Controller:Data_V[18]~q\,
	datad => \Output_Controller:Data_V[17]~q\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X25_Y32_N28
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!\Output_Controller:Data_V[10]~q\ & (!\Output_Controller:Data_V[11]~q\ & (\Output_Controller:Data_V[8]~q\ & !\Output_Controller:Data_V[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[10]~q\,
	datab => \Output_Controller:Data_V[11]~q\,
	datac => \Output_Controller:Data_V[8]~q\,
	datad => \Output_Controller:Data_V[9]~q\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X25_Y32_N10
\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~2_combout\ & (\Equal7~0_combout\ & (\Equal7~1_combout\ & \Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Equal7~3_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X25_Y32_N14
\Equal7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~10_combout\ = (\Equal7~9_combout\ & (\Equal7~8_combout\ & (\Equal7~7_combout\ & \Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~9_combout\,
	datab => \Equal7~8_combout\,
	datac => \Equal7~7_combout\,
	datad => \Equal7~4_combout\,
	combout => \Equal7~10_combout\);

-- Location: LCCOMB_X23_Y32_N4
\Data_V~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~0_combout\ = (\Equal6~10_combout\ & (!\Equal7~10_combout\ & (\Add1~0_combout\))) # (!\Equal6~10_combout\ & (((\Output_Controller:Data_V[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \Add1~0_combout\,
	datac => \Output_Controller:Data_V[0]~q\,
	datad => \Equal6~10_combout\,
	combout => \Data_V~0_combout\);

-- Location: FF_X23_Y32_N5
\Address_V[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~0_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[0]~reg0_q\);

-- Location: LCCOMB_X25_Y32_N0
\Data_V~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~1_combout\ = (\Equal6~10_combout\ & (\Add1~2_combout\)) # (!\Equal6~10_combout\ & ((\Output_Controller:Data_V[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Output_Controller:Data_V[1]~q\,
	datad => \Equal6~10_combout\,
	combout => \Data_V~1_combout\);

-- Location: FF_X25_Y32_N1
\Address_V[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~1_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[1]~reg0_q\);

-- Location: LCCOMB_X25_Y32_N6
\Data_V~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~2_combout\ = (\Equal6~10_combout\ & ((\Add1~4_combout\))) # (!\Equal6~10_combout\ & (\Output_Controller:Data_V[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[2]~q\,
	datac => \Add1~4_combout\,
	datad => \Equal6~10_combout\,
	combout => \Data_V~2_combout\);

-- Location: FF_X25_Y32_N7
\Address_V[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~2_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[2]~reg0_q\);

-- Location: LCCOMB_X23_Y32_N18
\Data_V~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~3_combout\ = (\Equal6~10_combout\ & ((\Add1~6_combout\))) # (!\Equal6~10_combout\ & (\Output_Controller:Data_V[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datac => \Output_Controller:Data_V[3]~q\,
	datad => \Add1~6_combout\,
	combout => \Data_V~3_combout\);

-- Location: FF_X23_Y32_N19
\Address_V[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~3_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[3]~reg0_q\);

-- Location: LCCOMB_X23_Y32_N24
\Data_V~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~4_combout\ = (\Equal6~10_combout\ & ((\Add1~8_combout\))) # (!\Equal6~10_combout\ & (\Output_Controller:Data_V[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Controller:Data_V[4]~q\,
	datac => \Add1~8_combout\,
	datad => \Equal6~10_combout\,
	combout => \Data_V~4_combout\);

-- Location: FF_X23_Y32_N25
\Address_V[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~4_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[4]~reg0_q\);

-- Location: LCCOMB_X23_Y32_N30
\Data_V~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~5_combout\ = (\Equal6~10_combout\ & (((\Add1~10_combout\ & !\Equal7~10_combout\)))) # (!\Equal6~10_combout\ & (\Output_Controller:Data_V[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Output_Controller:Data_V[5]~q\,
	datac => \Add1~10_combout\,
	datad => \Equal7~10_combout\,
	combout => \Data_V~5_combout\);

-- Location: FF_X23_Y32_N31
\Address_V[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~5_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[5]~reg0_q\);

-- Location: LCCOMB_X23_Y32_N20
\Data_V~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~6_combout\ = (\Equal6~10_combout\ & (!\Equal7~10_combout\ & (\Add1~12_combout\))) # (!\Equal6~10_combout\ & (((\Output_Controller:Data_V[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \Add1~12_combout\,
	datac => \Output_Controller:Data_V[6]~q\,
	datad => \Equal6~10_combout\,
	combout => \Data_V~6_combout\);

-- Location: FF_X23_Y32_N21
\Address_V[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~6_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[6]~reg0_q\);

-- Location: LCCOMB_X21_Y32_N24
\DataOut[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataOut[2]~3_combout\ = (!\State.Dummy~q\ & \State.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.Dummy~q\,
	datad => \State.Waiting~q\,
	combout => \DataOut[2]~3_combout\);

-- Location: LCCOMB_X20_Y32_N28
\Selector121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\State.Address~q\ & (((\Output_Controller:State_Count[1]~q\ & \Output_Controller:State_Count[2]~q\)) # (!\Output_Controller:State_Count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Address~q\,
	datab => \Output_Controller:State_Count[1]~q\,
	datac => \Output_Controller:State_Count[0]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Selector121~0_combout\);

-- Location: LCCOMB_X20_Y32_N10
\Selector121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~1_combout\ = (\DataOut[2]~3_combout\ & (!\Selector121~0_combout\ & ((\Equal1~0_combout\) # (!\State.Instruction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Instruction~q\,
	datab => \DataOut[2]~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \Selector121~0_combout\,
	combout => \Selector121~1_combout\);

-- Location: LCCOMB_X23_Y32_N14
\Selector121~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~2_combout\ = (\Equal6~10_combout\ & (!\Equal7~10_combout\ & ((\Add1~14_combout\)))) # (!\Equal6~10_combout\ & (((\Output_Controller:Data_V[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \Output_Controller:Data_V[7]~q\,
	datac => \Add1~14_combout\,
	datad => \Equal6~10_combout\,
	combout => \Selector121~2_combout\);

-- Location: LCCOMB_X20_Y32_N20
\Selector121~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~3_combout\ = (\State.Alternate~q\) # ((\State.Data~q\ & ((\Selector121~2_combout\) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.Data~q\,
	datab => \Equal1~0_combout\,
	datac => \State.Alternate~q\,
	datad => \Selector121~2_combout\,
	combout => \Selector121~3_combout\);

-- Location: LCCOMB_X20_Y32_N0
\Selector121~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~4_combout\ = (\Address_V[7]~reg0_q\ & (((\Selector121~3_combout\)) # (!\Selector121~1_combout\))) # (!\Address_V[7]~reg0_q\ & (((\Equal1~0_combout\ & \Selector121~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector121~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Address_V[7]~reg0_q\,
	datad => \Selector121~3_combout\,
	combout => \Selector121~4_combout\);

-- Location: FF_X20_Y32_N1
\Address_V[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector121~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[7]~reg0_q\);

-- Location: LCCOMB_X25_Y32_N8
\Data_V~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_V~7_combout\ = (\Equal6~10_combout\ & (!\Equal7~10_combout\ & ((\Add1~16_combout\)))) # (!\Equal6~10_combout\ & (((\Output_Controller:Data_V[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \Output_Controller:Data_V[8]~q\,
	datac => \Add1~16_combout\,
	datad => \Equal6~10_combout\,
	combout => \Data_V~7_combout\);

-- Location: FF_X25_Y32_N9
\Address_V[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_V~7_combout\,
	sclr => \ALT_INV_State.Data~q\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[8]~reg0_q\);

-- Location: LCCOMB_X25_Y32_N22
\Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = ((\Equal6~10_combout\ & ((\Add1~18_combout\))) # (!\Equal6~10_combout\ & (\Output_Controller:Data_V[9]~q\))) # (!\State.Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Output_Controller:Data_V[9]~q\,
	datac => \State.Data~q\,
	datad => \Add1~18_combout\,
	combout => \Selector119~0_combout\);

-- Location: FF_X25_Y32_N23
\Address_V[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector119~0_combout\,
	ena => \Address_H[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_V[9]~reg0_q\);

-- Location: LCCOMB_X20_Y32_N4
\Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\WriteData~reg0_q\ & (((\WideOr4~0_combout\ & \State.Address~q\)) # (!\DataOut[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \DataOut[2]~3_combout\,
	datac => \WriteData~reg0_q\,
	datad => \State.Address~q\,
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X20_Y32_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Output_Controller:State_Count[1]~q\ & (\WriteData~reg0_q\)) # (!\Output_Controller:State_Count[1]~q\ & ((\Output_Controller:State_Count[2]~q\ & (\WriteData~reg0_q\)) # (!\Output_Controller:State_Count[2]~q\ & 
-- ((\Output_Controller:State_Count[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteData~reg0_q\,
	datab => \Output_Controller:State_Count[0]~q\,
	datac => \Output_Controller:State_Count[1]~q\,
	datad => \Output_Controller:State_Count[2]~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X20_Y32_N30
\Selector108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector108~1_combout\ = ((\Selector108~0_combout\) # ((\Address_H[7]~5_combout\ & \Selector0~0_combout\))) # (!\Address_H[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address_H[5]~2_combout\,
	datab => \Selector108~0_combout\,
	datac => \Address_H[7]~5_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector108~1_combout\);

-- Location: FF_X20_Y32_N31
\WriteData~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector108~1_combout\,
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


