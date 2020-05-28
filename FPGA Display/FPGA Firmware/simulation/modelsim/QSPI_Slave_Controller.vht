LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;    
use ieee.numeric_std.all;                            

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
	CLK <= '0';
	CS_n <= '0';  
	wait for 100 ns;                                          
   for i in 0 to 614417 loop
		CLK <= '1';
		wait for 40 ns;
		CLK <= '0';
		wait for 40 ns;
	end loop; 
	CS_n <= '1';   
	wait for 100 ns;                
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS      
variable Data_U4	:	std_logic_vector(3 downto 0) := (others => '0');
variable Data_L4	:	std_logic_vector(3 downto 0) := (others => '1');
variable Data_Test	:	std_logic_vector(7 downto 0);                                                                       
BEGIN     
	wait for 90 ns; 
	wait until CLK <= '1';

	--Instruction Data receive
	wait until CLK <= '0'; 
	IO <= x"6";  
	wait until CLK <= '1';
	wait until CLK <= '0'; 
	IO <= x"9";  
	wait until CLK <= '1';
	
	--Address 1 Data receive
	wait until CLK <= '0'; 
	IO <= x"5";
	wait until CLK <= '1';
	wait until CLK <= '0'; 
	IO <= x"A";  
	wait until CLK <= '1';
	wait for 10 ns;

	--Address 2 Data receive
	wait until CLK <= '0'; 
	IO <= x"2";
	wait until CLK <= '1';
	wait until CLK <= '0'; 
	IO <= x"3";  
	wait until CLK <= '1';
	wait for 10 ns;

	--Address 3 Data receive
	wait until CLK <= '0'; 
	IO <= x"0";
	wait until CLK <= '1';
	wait until CLK <= '0'; 
	IO <= x"7";  
	wait until CLK <= '1';
	wait for 10 ns;

	--Alternate Data receive
	wait until CLK <= '0'; 
	IO <= x"E";
	wait until CLK <= '1';
	wait until CLK <= '0'; 
	IO <= x"B";  
	wait until CLK <= '1';
	wait for 10 ns;

	--Dummy Data receive
	wait until CLK <= '0'; 
	wait until CLK <= '1';
	wait until CLK <= '0'; 
	wait until CLK <= '1';

	
	--Data Loop receive
	for i in 0 to 255 loop --16 x 16 for testing, 640 x 480 (Frame Data) for live
		wait until CLK <= '0';
		IO <= Data_U4;
		wait until CLK <= '1';
		wait until CLK <= '0';
		IO <= Data_L4;
		wait until CLK <= '1';
		wait for 10 ns;
		Data_Test(7 downto 4) := Data_U4;
		Data_Test(3 downto 0) := Data_L4;
		assert (DataOut = Data_Test) report "Data out incorrect" severity error;
		if(unsigned(Data_U4) = 15) then 
			Data_U4 := "0000";
		else
			Data_U4 := std_logic_vector(unsigned(Data_U4) + 1);
		end if;
		if(unsigned(Data_L4) = 0) then 
			Data_L4 := "1111";
		else
			Data_L4 := std_logic_vector(unsigned(Data_L4) - 1);
		end if;
	end loop;
	
WAIT;                                                        
END PROCESS always;                                          
END QSPI_Slave_Controller_arch;
