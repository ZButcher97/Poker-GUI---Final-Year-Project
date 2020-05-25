library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Back_Buffer is

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
		H_Address		: 	in 	std_logic_vector(9 downto 0); --To make these generic, i need to use ceiling(log_BASE(2)(HArr_Max))
		V_Address		:	in		std_logic_vector(9 downto 0);
		Data_In			:	in		std_logic_vector(DataLength-1 downto 0);
		WriteRequest	:	in		std_logic;
		
		--Output Ports
		Data_Out			:	out	std_logic_vector(DataLength-1 downto 0);
		WriteData		:	out	std_logic
	);
end Back_Buffer;


architecture Back_Buffer_V1 of Back_Buffer is
	type array1_t is array(0 to HArr_Max, 0 to VArr_Max) of std_logic_vector(DataLength-1 downto 0); 
	signal matrix : array1_t; 
begin

		PROCESS(CLK)
			variable HAddIN	:	integer	:= 0;
			variable VAddIN	:	integer	:= 0;
			
			variable HAddOUT	:	integer	:= 0;
			variable VAddOUT	:	integer	:= 0;
		BEGIN
			if(rising_edge(CLK)) then 
			
				--Set up variables with addresses
				if(to_integer(unsigned(H_Address)) = 0) then
					HAddOUT := 16;
					if(to_integer(unsigned(V_Address)) = 0) then 
						VAddOUT := 16;
					else
						VAddOUT := to_integer(unsigned(V_Address));
					end if;
				else
					HAddOUT := to_integer(unsigned(H_Address))-1;
					VAddOUT := to_integer(unsigned(V_Address));
				end if;

				
				--Set output to requested input
				Data_Out <= matrix(HAddOUT,VAddOUT);
				
				--check address positions and move back 1 position, including overflow logic
				if(WriteRequest = '1') then 
					if(to_integer(unsigned(H_Address)) = 1) then 
						HAddIN := HArr_Max;
						if(to_integer(unsigned(V_Address)) = 1) then 							
							VAddIN := VArr_Max-1;
						elsif(to_integer(unsigned(V_Address)) = 0) then 
							VAddIN := VArr_Max;
						else
							VAddIN := to_integer(unsigned(V_Address));
						end if;													
					elsif(to_integer(unsigned(H_Address)) = 0) then 
						HAddIN := HArr_Max-1;
						if(VAddIN = 1) then 							
							VAddIN := VArr_Max-1;
						elsif(to_integer(unsigned(V_Address)) = 0) then 
							VAddIN := VArr_Max;
						else
							VAddIN := to_integer(unsigned(V_Address));
						end if;							
					else
						HAddIN := HAddIN - 2;
						VAddIN := to_integer(unsigned(V_Address));
					end if;
					matrix(HAddIN,VAddIN) <= Data_In; --write data into position
				end if;
			end if;		
		END PROCESS;

end Back_Buffer_V1;
