LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                 

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
SIGNAL AReset_n : STD_LOGIC;
COMPONENT Back_Buffer
	PORT (
	CLK : IN STD_LOGIC;
	Data_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_Out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	H_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	V_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WriteData : BUFFER STD_LOGIC;
	WriteRequest : IN STD_LOGIC;
	AReset_n : IN STD_LOGIC
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
	WriteRequest => WriteRequest,
	AReset_n => AReset_n
	);

INIT : PROCESS                                              
BEGIN	
	for i in 0 to 1050 loop
      CLK <= '1';	
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
	end loop;
WAIT;                                                       
END PROCESS INIT; 

ADDRESSES : PROCESS
BEGIN
	for runs in 0 to 3 loop
		for i in 0 to 15 loop
			for j in 0 to 15 loop
				wait until falling_edge(CLK);
				H_Address <= std_logic_vector(to_unsigned(j, H_Address'length));
				V_Address <= std_logic_vector(to_unsigned(i, V_Address'length));				
			end loop;
		end loop;
	end loop;
WAIT;
END PROCESS;
	
WriteDataToBuffer : PROCESS    
variable DataH	:	integer := 0;
variable DataV	:	integer := 0;
                                                                        
BEGIN	
	WriteRequest <= '0';
	WAIT UNTIL AReset_n = '1';
	WAIT UNTIL falling_edge(CLK);
	WAIT FOR 10 ns;
	WriteRequest <= '1';
	DataH := to_integer(unsigned(H_Address));
	DataV := to_integer(unsigned(V_Address));
	Data_In <= std_logic_vector(to_unsigned((DataH + DataV), Data_In'length));
	for i in 0 to 15 loop
		for j in 0 to 15 loop
			WAIT UNTIL falling_edge(CLK);
			WAIT FOR 5 ns;
			DataH := to_integer(unsigned(H_Address));
			DataV := to_integer(unsigned(V_Address));
			Data_In <= std_logic_vector(to_unsigned((DataH + DataV), Data_In'length));
			
		end loop;
	end loop;	
	WAIT FOR 10 ns;
	WriteRequest <= '0';
WAIT;                                                        
END PROCESS WriteDataToBuffer;  

TestOutput : PROCESS
variable H_DataVal : integer := 0;
variable v_DataVal : integer := 0;
BEGIN
	AReset_n <= '0';
	WAIT FOR 130 ns;
	AReset_n <= '1';
	
	WAIT UNTIL falling_edge(WriteRequest);
	for i in 0 to 15 loop
		for j in 0 to 15 loop
			WAIT UNTIL rising_edge(CLK);
			WAIT FOR 10 ns;
			if(to_integer(unsigned(H_Address)) = 15) then 
				H_DataVal := 0;
				if(to_integer(unsigned(V_Address)) = 15) then 
					V_DataVal := 0;
				else
					V_DataVal := to_integer(unsigned(V_Address)) + 1;
				end if;
			else 
				H_DataVal := to_integer(unsigned(H_Address)) + 1;
				V_DataVal := to_integer(unsigned(V_Address));
			end if;			
			ASSERT (Data_Out = std_logic_vector(to_unsigned(H_DataVal+V_DataVal, Data_Out'length))) REPORT "Data Out Incorrect" SEVERITY ERROR;					
			
		end loop;
	end loop;
WAIT;
END PROCESS;                                 
END Back_Buffer_arch;
