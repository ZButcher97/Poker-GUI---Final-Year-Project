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
-- Generated on "05/22/2020 17:57:08"
                                                            
-- Vhdl Test Bench template for design  :  FinalYearProject
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FinalYearProject_vhd_tst IS
END FinalYearProject_vhd_tst;
ARCHITECTURE FinalYearProject_arch OF FinalYearProject_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL PIXEL_B_Data : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL PIXEL_CLOCK : STD_LOGIC;
SIGNAL PIXEL_G_Data : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL PIXEL_H_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PIXEL_R_Data : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL PIXEL_V_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL VGA_BLUE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL VGA_GREEN : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA_HSYNC : STD_LOGIC;
SIGNAL VGA_RED : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA_VSYNC : STD_LOGIC;
COMPONENT FinalYearProject
	PORT (
	PIXEL_B_Data : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	PIXEL_CLOCK : IN STD_LOGIC;
	PIXEL_G_Data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	PIXEL_H_Address : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	PIXEL_R_Data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	PIXEL_V_Address : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	VGA_BLUE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	VGA_GREEN : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA_HSYNC : OUT STD_LOGIC;
	VGA_RED : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA_VSYNC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FinalYearProject
	PORT MAP (
-- list connections between master ports and signals
	PIXEL_B_Data => PIXEL_B_Data,
	PIXEL_CLOCK => PIXEL_CLOCK,
	PIXEL_G_Data => PIXEL_G_Data,
	PIXEL_H_Address => PIXEL_H_Address,
	PIXEL_R_Data => PIXEL_R_Data,
	PIXEL_V_Address => PIXEL_V_Address,
	VGA_BLUE => VGA_BLUE,
	VGA_GREEN => VGA_GREEN,
	VGA_HSYNC => VGA_HSYNC,
	VGA_RED => VGA_RED,
	VGA_VSYNC => VGA_VSYNC
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
END FinalYearProject_arch;
