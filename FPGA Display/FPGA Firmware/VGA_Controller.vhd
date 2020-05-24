library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA_Controller is

	port
	(
		-- Input ports
		CLK				: 	in		std_logic;
		Red_Data			: 	in		std_logic_vector(2 downto 0);
		Green_Data		: 	in 	std_logic_vector(2 downto 0);
		Blue_Data		: 	in 	std_logic_vector(1 downto 0);
		
		-- Output prots
		Red				: 	out 	std_logic_vector(2 downto 0);
		Green				: 	out 	std_logic_vector(2 downto 0);
		Blue				: 	out 	std_logic_vector(1 downto 0);
		Hsync				: 	out 	std_logic;
		Vsync				: 	out 	std_logic;
		H_Address		: 	out 	std_logic_vector(9 downto 0);
		V_Address		: 	out	std_logic_vector(9 downto 0)
	);

end VGA_Controller;

architecture VGA_Controller_V1 of VGA_Controller is
	--States
	type 		HStates is (Display, FrontPorch, H_sync, BackPorch);
	type 		VStates is (Display, FrontPorch, V_sync, BackPorch);
	Signal 	HState 		: 	HStates := Display;
	Signal 	VState 		: 	VStates := Display;
	
	--Signals
	
	
	--Constants
	constant HdisplayConst		: 	integer 	:= 640;
	constant HfrontPorchConst 	: 	integer 	:= 656;
	constant HSyncConst			: 	integer 	:= 752;
	constant HbackPorchConst	: 	integer 	:= 800;
	
	constant VdisplayConst 		: 	integer 	:= 480;
	constant VfrontPorchConst 	: 	integer 	:= 491;
	constant VSyncConst			: 	integer 	:= 493;
	constant VbackPorchConst	: 	integer 	:= 524;
	
begin
	
PIXEL_Horizontal: Process(CLK)
	variable 	HCount					: 	integer := 1;
	variable 	VCount					: 	integer := 1;
	variable 	HAddress				:	integer := 1;
	variable 	VAddress				:	integer := 1;
	
	BEGIN
	if(rising_edge(CLK)) then 

		if(HCount < HdisplayConst) then 
			HState <= Display;
		elsif(HCount < HfrontPorchConst) then 
			HState <= FrontPorch;
			HAddress := 0;
		elsif(HCount < HSyncConst) then 
			HState <= H_sync;
			HAddress := 0;
		elsif(HCount < HbackPorchConst) then 
			HState <= BackPorch;
			HAddress := 0;
		elsif(HCount = HbackPorchConst) then
			HState <= Display;
		elsif(HCount = HbackPorchConst+1) then 
			HCount := 1;
			VCount := VCount + 1;
			VAddress := VCount;
		end if;
		
		if(VCount <= VdisplayConst) then 
			VState <= Display;
		elsif(VCount <= VfrontPorchConst) then 
			VState <= FrontPorch;
			VAddress := 0;
			HAddress := 0;
		elsif(VCount <= VSyncConst) then 
			VState <= V_sync;
			VAddress := 0;
			HAddress := 0;
		elsif(VCount <= VbackPorchConst) then 
			VState <= BackPorch;
			VAddress := 0;
			HAddress := 0;
		else 
			VState <= Display;
			VCount := 0;
			VAddress := 0;
		end if;
		
		
		case VState is 
			when Display => --V Display
				case HState is 
					when Display => --H Display
						Red 	<= Red_Data;
						Green <= Green_Data;
						Blue 	<= Blue_Data;
						Hsync <= '0';
						Vsync <= '0';
						HAddress := HCount;

					when FrontPorch => --H Front Porch
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '0';
						Vsync <= '0';
						HAddress := 0;
						
					when H_sync => --H sync
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '1';
						Vsync <= '0';
						
					when BackPorch=> --H Back Porch
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '0';
						Vsync <= '0';
						
				end case;
				
			when FrontPorch =>  --V Front Porch
				case HState is 
					when H_sync =>	--H sync
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '1';
						Vsync <= '0';
						
					when others =>	--H others
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '0';
						Vsync <= '0';
						
				end case;
				
			when V_sync =>  --V Sync
				case HState is 
					when H_sync => --H sync
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '1';
						Vsync <= '1';
						
					when others =>--H others
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '0';
						Vsync <= '1';
						
				end case;
				
			when BackPorch =>  --V Back Porch
				case HState is 
					when H_sync =>--H sync
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '1';
						Vsync <= '0';
						
					when others =>--H others
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '0';
						Vsync <= '0';
						
				end case;
		end case;
		HCount := HCount + 1;
		H_Address <= std_logic_vector(to_unsigned(HAddress, H_Address'length));
		V_Address <= std_logic_vector(to_unsigned(VAddress, V_Address'length));
		
	end if;
	END PROCESS;
end VGA_Controller_V1;