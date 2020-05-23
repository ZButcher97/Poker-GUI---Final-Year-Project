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
-- Generated on "05/23/2020 11:19:43"
                                                            
-- Vhdl Test Bench template for design  :  Live_Buffer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Live_Buffer_vhd_tst IS
END Live_Buffer_vhd_tst;
ARCHITECTURE Live_Buffer_arch OF Live_Buffer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Data_In : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL V_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL WriteRequest : STD_LOGIC;
COMPONENT Live_Buffer
	PORT (
	CLK : IN STD_LOGIC;
	Data_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_Out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	H_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	V_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WriteRequest : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Live_Buffer
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Data_In => Data_In,
	Data_Out => Data_Out,
	H_Address => H_Address,
	V_Address => V_Address,
	WriteRequest => WriteRequest
	);

INIT : PROCESS                                              
BEGIN	
	for i in 0 to 10 loop
      		CLK <= '1';	
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
	end loop;
WAIT;                                                       
END PROCESS INIT; 
	
WriteData : PROCESS                                                                                
BEGIN                                                         
	H_Address <= "0000000010";
	V_Address <= "0000000010";
	Data_In <= "00101101";
	WAIT FOR 10 ns;
	WriteRequest <= '1';
	WAIT FOR 40 ns;
	WriteRequest <= '0';
	
	WAIT FOR 80 ns;
	H_Address <= "0000000011";
	V_Address <= "0000000011";
	Data_In <= "11100011";
	WAIT FOR 10 ns;
	WriteRequest <= '1';
	WAIT FOR 40 ns;
	WriteRequest <= '0';

	WAIT FOR 80 ns;
	H_Address <= "0000000001";
	V_Address <= "0000000001";

	WAIT FOR 80 ns;
	H_Address <= "0000000010";
	V_Address <= "0000000010";

WAIT;                                                        
END PROCESS WriteData;                                          
END Live_Buffer_arch;
