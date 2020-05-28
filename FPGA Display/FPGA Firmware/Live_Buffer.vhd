LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY Live_Buffer IS

	GENERIC
	(
		HArr_Max		:	INTEGER 	:= 16;
		VArr_Max		:	INTEGER 	:= 16;
		DataLength	:	INTEGER	:=	8
	);

	PORT
	(
		--INput PORTs
		CLK				:	IN		STD_LOGIC;
		H_Address		: 	IN 	STD_LOGIC_VECTOR(9 DOWNTO 0);
		V_Address		:	IN		STD_LOGIC_VECTOR(9 DOWNTO 0);
		Data_IN			:	IN		STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0);
		WriteRequest	:	IN		STD_LOGIC;
		AReset_n			:	IN		STD_LOGIC;
		
		--OUTput PORTs
		Data_OUT			:	OUT	STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0)
	);
END Live_Buffer;


ARCHITECTURE Live_Buffer_V1 OF Live_Buffer IS
	TYPE ARRAY1_t IS ARRAY(0 TO HArr_Max-1, 0 TO VArr_Max-1) OF STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0); 
	SIGNAL matrix : ARRAY1_t; 
BEGIN

PROCESS(CLK, AReset_n)
	VARIABLE HAddIN	:	INTEGER	:= 0;
	VARIABLE VAddIN	:	INTEGER	:= 0;
	
	VARIABLE HAddOUT	:	INTEGER	:= 0;
	VARIABLE VAddOUT	:	INTEGER	:= 0;
BEGIN
	IF(AReset_n = '0') THEN 
		Data_OUT <= (OTHERS => '0');
		
	ELSIF(FALLING_EDGE(CLK)) THEN 
		--Set up VARIABLEs with addresses
		HAddOUT := TO_INTEGER(UNSIGNED(H_Address));
		VAddOUT := TO_INTEGER(UNSIGNED(V_Address));			
		--Set OUTput TO requested INput
		Data_OUT <= matrix(HAddOUT,VAddOUT);
		
		--check address positions and move back 1 position, Including overflow logic
		IF(WriteRequest = '1') THEN 												
			IF(HAddOUT = 0) THEN 
				HAddIN := HArr_Max-1;
				IF(VAddOUT = 0) THEN 
					VAddIN := VArr_Max-1;
					
				ELSE 
					VAddIN := VAddOUT - 1;
					
				END IF;							
			ELSE
				HAddIN := HAddOUT - 1;
				VAddIN := VAddOUT;
				
			END IF;
			
			matrix(HAddIN,VAddIN) <= Data_IN; --write data INTO position
			
		END IF;
	END IF;		
END PROCESS;
END Live_Buffer_V1;
