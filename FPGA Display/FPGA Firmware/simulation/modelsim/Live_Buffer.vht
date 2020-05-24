
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                              

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
	H_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	V_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WriteRequest : IN STD_LOGIC;
	Data_Out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
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
	for i in 0 to 10000 loop
      		CLK <= '1';	
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
	end loop;
WAIT;                                                       
END PROCESS INIT; 
	
WriteData : PROCESS                                                                            
BEGIN
	WAIT FOR 10 ns;
	for runs in 0 to 3 loop
		for VAdd in 0 to 16 loop
			for HAdd in 0 to 16 loop
				H_Address <= std_logic_vector(to_unsigned(HAdd, H_Address'length));
				V_Address <= std_logic_vector(to_unsigned(VAdd, V_Address'length));
				Data_In <= std_logic_vector(to_unsigned(HAdd+VAdd, Data_In'length));
				WriteRequest <= '1';
				WAIT FOR 40 ns;
				WriteRequest <= '0';
				WAIT FOR 40 ns;
			end loop;
		end loop;     
	end loop;

WAIT;                                                        
END PROCESS WriteData;                                          
END Live_Buffer_arch;
