library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Live_Buffer is

	port
	(
		--Input Ports
		CLK				:	in		std_logic;
		H_Address		: 	in 	std_logic_vector(9 downto 0);
		V_Address		:	in		std_logic_vector(9 downto 0);
		Data_In			:	in		std_logic_vector(7 downto 0);
		WriteRequest	:	in		std_logic;
		
		--Output Ports
		Data_Out			:	out	std_logic_vector(7 downto 0)
	);
end Live_Buffer;


architecture Live_Buffer_V1 of Live_Buffer is
	type array1_t is array(0 to 16, 0 to 16) of std_logic_vector(7 downto 0); 
	signal matrix : array1_t; 
begin

		PROCESS(CLK)
		BEGIN
			if(rising_edge(CLK)) then 
				if(WriteRequest = '1') then 
				matrix(to_integer(unsigned(H_Address)-1),to_integer(unsigned(V_Address)-1)) <= Data_In;
				end if;
			
				Data_Out <= matrix(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
			end if;		
		END PROCESS;

end Live_Buffer_V1;
