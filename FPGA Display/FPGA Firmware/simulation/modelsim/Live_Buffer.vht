
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                              

ENTITY Live_Buffer_vhd_tst IS
END Live_Buffer_vhd_tst;
ARCHITECTURE Live_Buffer_arch OF Live_Buffer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Data_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL V_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL WriteRequest : STD_LOGIC;
SIGNAL AReset_n	: STD_LOGIC;
COMPONENT Live_Buffer
	PORT (
	CLK : IN STD_LOGIC;
	Data_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	H_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	V_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WriteRequest : IN STD_LOGIC;
	Data_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	AReset_n : STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Live_Buffer
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Data_IN => Data_IN,
	Data_OUT => Data_OUT,
	H_Address => H_Address,
	V_Address => V_Address,
	WriteRequest => WriteRequest,
	AReset_n => AReset_n
	);

INIT : PROCESS                                              
BEGIN	
	FOR i IN 0 TO 1050 LOOP
      CLK <= '1';	
		WAIT FOR 20 ns;
		CLK <= '0';
		WAIT FOR 20 ns;
	END LOOP;
WAIT;                                                       
END PROCESS INIT; 

ADDRESSES : PROCESS
BEGIN
	FOR runs IN 0 TO 3 LOOP
		FOR i IN 0 TO 15 LOOP
			FOR j IN 0 TO 15 LOOP
				WAIT UNTIL RISING_EDGE(CLK);
				H_Address <= STD_LOGIC_VECTOR(TO_UNSIGNED(j, H_Address'LENGTH));
				V_Address <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, V_Address'LENGTH));				
			END LOOP;
		END LOOP;
	END LOOP;
WAIT;
END PROCESS;
	
WriteData : PROCESS    
VARIABLE DataH	:	INteger := 0;
VARIABLE DataV	:	INteger := 0;
                                                                        
BEGIN	
	WriteRequest <= '0';
	WAIT UNTIL AReset_n = '1';
	WAIT UNTIL RISING_EDGE(CLK);
	WAIT FOR 10 ns;
	WriteRequest <= '1';
	DataH := TO_INteger(UNSIGNED(H_Address));
	DataV := TO_INteger(UNSIGNED(V_Address));
	Data_IN <= STD_LOGIC_VECTOR(TO_UNSIGNED((DataH + DataV), Data_IN'LENGTH));
	FOR i IN 0 TO 15 LOOP
		FOR j IN 0 TO 15 LOOP
			WAIT UNTIL RISING_EDGE(CLK);
			WAIT FOR 5 ns;
			DataH := TO_INteger(UNSIGNED(H_Address));
			DataV := TO_INteger(UNSIGNED(V_Address));
			Data_IN <= STD_LOGIC_VECTOR(TO_UNSIGNED((DataH + DataV), Data_IN'LENGTH));
			
		END LOOP;
	END LOOP;	
	WAIT FOR 10 ns;
	WriteRequest <= '0';
WAIT;                                                        
END PROCESS WriteData;  

TestOutput : PROCESS
VARIABLE H_DataVal : INteger := 0;
VARIABLE v_DataVal : INteger := 0;
BEGIN
	AReset_n <= '0';
	WAIT FOR 130 ns;
	AReset_n <= '1';
	
	WAIT UNTIL fallINg_edge(WriteRequest);
	FOR i IN 0 TO 15 LOOP
		FOR j IN 0 TO 15 LOOP
			WAIT UNTIL fallINg_edge(CLK);
			WAIT FOR 10 ns;
			if(TO_INteger(UNSIGNED(H_Address)) = 15) then 
				H_DataVal := 0;
				if(TO_INteger(UNSIGNED(V_Address)) = 15) then 
					V_DataVal := 0;
				else
					V_DataVal := TO_INteger(UNSIGNED(V_Address)) + 1;
				END if;
			else 
				H_DataVal := TO_INteger(UNSIGNED(H_Address)) + 1;
				V_DataVal := TO_INteger(UNSIGNED(V_Address));
			END if;			
			ASSERT (Data_OUT = STD_LOGIC_VECTOR(TO_UNSIGNED(H_DataVal+V_DataVal, Data_OUT'LENGTH))) REPORT "Data OUT Incorrect" SEVERITY ERROR;					
			
		END LOOP;
	END LOOP;
WAIT;
END PROCESS;
                                        
END Live_Buffer_arch;
