LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY VGA_Controller IS
	GENERIC
	(
		H_DISplayCount		:	INTEGER	:= 16; --640 for Live use
		H_FrontPorch		:	INTEGER	:= 16;
		H_SyncPulse			:	INTEGER	:= 96;
		H_BackPorch			:	INTEGER	:= 48;
		
		V_DISplayCount		:	INTEGER	:= 16; -- 480 for Live use	
		V_FrontPorch		:	INTEGER	:= 10;
		V_SyncPulse			:	INTEGER	:= 2;
		V_BackPorch			:	INTEGER	:= 33
	);

	PORT
	(
		-- Input ports
		CLK				: 	IN		STD_LOGIC;
		Red_Data			: 	IN		STD_LOGIC_VECTOR(2 DOWNTO 0);
		Green_Data		: 	IN 	STD_LOGIC_VECTOR(2 DOWNTO 0);
		Blue_Data		: 	IN 	STD_LOGIC_VECTOR(1 DOWNTO 0);
		AReset_n			:	IN		STD_LOGIC;
		
		-- Output prots
		Red				: 	OUT 	STD_LOGIC_VECTOR(2 DOWNTO 0);
		Green				: 	OUT 	STD_LOGIC_VECTOR(2 DOWNTO 0);
		Blue				: 	OUT 	STD_LOGIC_VECTOR(1 DOWNTO 0);
		Hsync				: 	OUT 	STD_LOGIC;
		Vsync				: 	OUT 	STD_LOGIC;
		H_Address		: 	OUT 	STD_LOGIC_VECTOR(9 DOWNTO 0);
		V_Address		: 	OUT	STD_LOGIC_VECTOR(9 DOWNTO 0)
	);

END VGA_Controller;

ARCHITECTURE VGA_Controller_V1 OF VGA_Controller IS
	--States
	TYPE 		HStates IS (DISplay, FrontPorch, H_sync, BackPorch);
	TYPE 		VStates IS (DISplay, FrontPorch, V_sync, BackPorch);
	SIGNAL 	HState 		: 	HStates := DISplay;
	SIGNAL 	VState 		: 	VStates := DISplay;


	--CONSTANTs
	CONSTANT HdISplayConst		: 	INTEGER 	:= H_DISplayCount; 
	CONSTANT HfrontPorchConst 	: 	INTEGER 	:= HdISplayConst + H_FrontPorch;	
	CONSTANT HSyncConst			: 	INTEGER 	:= HfrontPorchConst + H_SyncPulse;	
	CONSTANT HbackPorchConst	: 	INTEGER 	:= HSyncConst + H_BackPorch;	

	CONSTANT VdISplayConst 		: 	INTEGER 	:= V_DISplayCount; 	
	CONSTANT VfrontPorchConst 	: 	INTEGER 	:= VdISplayConst + V_FrontPorch;	
	CONSTANT VSyncConst			: 	INTEGER 	:= VfrontPorchConst + V_SyncPulse;
	CONSTANT VbackPorchConst	: 	INTEGER 	:= VSyncConst + V_BackPorch;	
	
BEGIN
	
MAIN: PROCESS(CLK, AReset_n)
VARIABLE 	HAddress				:	INTEGER := 0;
VARIABLE 	VAddress				:	INTEGER := 0;
VARIABLE		HCount				: 	INTEGER := 0;
VARIABLE 	VCount				: 	INTEGER := 0;	

BEGIN
IF(AReset_n = '0') THEN  --Async reset
	Red 	<= (OTHERS => '0');
	Green <= (OTHERS => '0');
	Blue 	<= (OTHERS => '0');
	Hsync <= '0';
	Vsync <= '0';
	V_Address <= (OTHERS => '0');
	H_Address <= (OTHERS => '0');
	
	HState <= DISplay;
	VState <= DISplay;
	
	HCount := 0;
	VCount := 0;
	
ELSIF(RISING_EDGE(CLK)) THEN 	
	CASE VState IS 
		WHEN DISplay => 						--V DISplay
			CASE HState IS 
				WHEN DISplay => 						--H DISplay
					Red 	<= Red_Data;
					Green <= Green_Data;
					Blue 	<= Blue_Data;
					Hsync <= '0';
					Vsync <= '0';
					HAddress := HCount;
					VAddress := VCount;

				WHEN FrontPorch => 					--H Front Porch
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '0';
					Vsync <= '0';
					
				WHEN H_sync => 						--H sync
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '1';
					Vsync <= '0';
					
				WHEN BackPorch=> 						--H Back Porch
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '0';
					Vsync <= '0';
			END CASE;
			
		WHEN FrontPorch =>  					--V Front Porch
			CASE HState IS 
				WHEN H_sync =>							--H sync
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '1';
					Vsync <= '0';
					
				WHEN OTHERS =>							--H OTHERS
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '0';
					Vsync <= '0';					
			END CASE;
			
		WHEN V_sync =>  						--V Sync
			CASE HState IS 
				WHEN H_sync => 						--H sync
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '1';
					Vsync <= '1';
					
				WHEN OTHERS =>							--H OTHERS
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '0';
					Vsync <= '1';				
			END CASE;
			
		WHEN BackPorch =>  					--V Back Porch
			CASE HState IS 
				WHEN H_sync =>							--H sync
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '1';
					Vsync <= '0';
					
				WHEN OTHERS =>							--H OTHERS
					Red 	<= (OTHERS => '0');
					Green <= (OTHERS => '0');
					Blue 	<= (OTHERS => '0');
					Hsync <= '0';
					Vsync <= '0';					
			END CASE;
	END CASE;

	HCount := HCount + 1;
	
	--State Switching H
	IF(HCount < HdISplayConst) THEN 
		HState <= DISplay;
		
	ELSIF(HCount < HfrontPorchConst) THEN 
		HState <= FrontPorch;
		
	ELSIF(HCount < HSyncConst) THEN 
		HState <= H_sync;
		
	ELSIF(HCount < HbackPorchConst) THEN 
		HState <= BackPorch;
		
	ELSIF(HCount = HbackPorchConst) THEN
		HState <= Display;
		
	ELSIF(HCount = HbackPorchConst+1) THEN 
		HCount := 0;
		VCount := VCount + 1;
		
	END IF;
	
	
	--State switching V
	IF(VCount < VdISplayConst) THEN 
		VState <= DISplay;
		
	ELSIF(VCount < VfrontPorchConst) THEN 
		VState <= FrontPorch;
		
	ELSIF(VCount < VSyncConst) THEN 
		VState <= V_sync;
		
	ELSIF(VCount <= VbackPorchConst) THEN 
		VState <= BackPorch;
		
	ELSE 
		VState <= Display;
		VCount := 0;
	END IF;
	
	--Current pixel position output
	H_Address <= STD_LOGIC_VECTOR(TO_UNSIGNED(HAddress, H_Address'LENGTH));
	V_Address <= STD_LOGIC_VECTOR(TO_UNSIGNED(VAddress, V_Address'LENGTH));
	
END IF;

END PROCESS;
END VGA_Controller_V1;