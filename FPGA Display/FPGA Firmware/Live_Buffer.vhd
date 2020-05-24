library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Live_Buffer is

	generic
	(
		HArr_Max		:	integer 	:= 16;
		VArr_Max		:	integer 	:= 16;
		DataLength	:	integer	:=	8
	);

	port
	(
		--Input Ports
		CLK				:	in		std_logic;
		H_Address		: 	in 	std_logic_vector(9 downto 0);
		V_Address		:	in		std_logic_vector(9 downto 0);
		Data_In			:	in		std_logic_vector(DataLength-1 downto 0);
		WriteRequest	:	in		std_logic;
		
		--Output Ports
		Data_Out			:	out	std_logic_vector(DataLength-1 downto 0)
	);
end Live_Buffer;


architecture Live_Buffer_V1 of Live_Buffer is
	type array1_t is array(0 to HArr_Max, 0 to VArr_Max) of std_logic_vector(DataLength-1 downto 0); 
	signal matrix : array1_t; 
begin

		PROCESS(CLK)
			variable HAdd	:	integer	:= 0;
			variable VAdd	:	integer	:= 0;
		BEGIN
			if(rising_edge(CLK)) then 
				--Set up variables with addresses
				HAdd := to_integer(unsigned(H_Address));
				VAdd := to_integer(unsigned(V_Address));
				--Set output to requested input
				Data_Out <= matrix(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
				--check address positions and move back 1 position, including overflow logic
				if(WriteRequest = '1') then 
					if(HAdd = 0) then 
						HAdd := HArr_Max;
						if(VAdd = 0) then 							
							VAdd := VArr_Max;
						else
							VAdd := VAdd - 1;
						end if;						
					else
						Hadd := Hadd - 1;
					end if;
					matrix(HAdd,VAdd) <= Data_In; --write data into position
				end if;
			end if;		
		END PROCESS;

end Live_Buffer_V1;
