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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/24/2020 06:49:56"
                                                            
-- Vhdl Test Bench template for design  :  QSPI_Slave_Controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY QSPI_Slave_Controller_vhd_tst IS
END QSPI_Slave_Controller_vhd_tst;
ARCHITECTURE QSPI_Slave_Controller_arch OF QSPI_Slave_Controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Address_H : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Address_V : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL CS_n : STD_LOGIC;
SIGNAL DataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IO : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL WriteData : STD_LOGIC;
COMPONENT QSPI_Slave_Controller
	PORT (
	Address_H : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	Address_V : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	CLK : IN STD_LOGIC;
	CS_n : IN STD_LOGIC;
	DataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	WriteData : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : QSPI_Slave_Controller
	PORT MAP (
-- list connections between master ports and signals
	Address_H => Address_H,
	Address_V => Address_V,
	CLK => CLK,
	CS_n => CS_n,
	DataOut => DataOut,
	IO => IO,
	WriteData => WriteData
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                                                                
BEGIN           
	IO <= "0110";
	wait for 10 ns;
	CS_n <= '0';
	wait for 80 ns;                                              
        for i in 0 to 10000000 loop
		CLK <= '1';
		wait for 40 ns;
		CLK <= '0';
		wait for 40 ns;
	end loop;
WAIT;                                                        
END PROCESS always;                                          
END QSPI_Slave_Controller_arch;
