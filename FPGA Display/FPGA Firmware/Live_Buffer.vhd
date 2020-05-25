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
		AReset_n			:	in		std_logic;
		
		--Output Ports
		Data_Out			:	out	std_logic_vector(DataLength-1 downto 0)
	);
end Live_Buffer;


architecture Live_Buffer_V1 of Live_Buffer is
	type array1_t is array(0 to HArr_Max-1, 0 to VArr_Max-1) of std_logic_vector(DataLength-1 downto 0); 
	signal matrix : array1_t; 
begin

		PROCESS(CLK)
			variable HAddIN	:	integer	:= 0;
			variable VAddIN	:	integer	:= 0;
			
			variable HAddOUT	:	integer	:= 0;
			variable VAddOUT	:	integer	:= 0;
		BEGIN
			if(AReset_n = '0') then 
				Data_Out <= (others => '0');
			elsif(falling_edge(CLK)) then 
			
				--Set up variables with addresses
				HAddOUT := to_integer(unsigned(H_Address));
				VAddOUT := to_integer(unsigned(V_Address));			
				--Set output to requested input
				Data_Out <= matrix(HAddOUT,VAddOUT);
				
				--check address positions and move back 1 position, including overflow logic
				if(WriteRequest = '1') then 												
					if(HAddOUT = 0) then 
						HAddIN := HArr_Max-1;
						if(VAddOUT = 0) then 
							VAddIN := VArr_Max-1;
						else 
							VAddIN := VAddOUT - 1;
						end if;							
					else
						HAddIN := HAddOUT - 1;
						VAddIN := VAddOUT;
					end if;
					matrix(HAddIN,VAddIN) <= Data_In; --write data into position
				end if;
			end if;		
		END PROCESS;
end Live_Buffer_V1;
