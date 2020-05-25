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
-- Generated on "05/25/2020 17:31:09"
                                                            
-- Vhdl Test Bench template for design  :  Back_Buffer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Back_Buffer_vhd_tst IS
END Back_Buffer_vhd_tst;
ARCHITECTURE Back_Buffer_arch OF Back_Buffer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Data_In : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL V_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL WriteData : STD_LOGIC;
SIGNAL WriteRequest : STD_LOGIC;
COMPONENT Back_Buffer
	PORT (
	CLK : IN STD_LOGIC;
	Data_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_Out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	H_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	V_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WriteData : OUT STD_LOGIC;
	WriteRequest : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Back_Buffer
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Data_In => Data_In,
	Data_Out => Data_Out,
	H_Address => H_Address,
	V_Address => V_Address,
	WriteData => WriteData,
	WriteRequest => WriteRequest
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Back_Buffer_arch;
