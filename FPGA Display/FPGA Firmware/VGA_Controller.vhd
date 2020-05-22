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
	Signal 	HCount				: 	integer 	:= 0;
	Signal 	vCount				: 	integer 	:= 0;
	Signal 	HAddress				:	integer := 0;
	Signal 	VAddress				:	integer := 0;
	
	--Constants
	constant HdisplayConst		: 	integer 	:= 640;
	constant HfrontPorchConst 	: 	integer 	:= 656;
	constant HSyncConst			: 	integer 	:= 752;
	constant HbackPorchConst	: 	integer 	:= 800;
	
	constant VdisplayConst 		: 	integer 	:= 480;
	constant VfrontPorchConst 	: 	integer 	:= 490;
	constant VSyncConst			: 	integer 	:= 492;
	constant VbackPorchConst	: 	integer 	:= 525;
	
begin
	
PIXEL_Horizontal: Process(CLK)
	BEGIN
	if(rising_edge(CLK)) then 
		HCount <= HCount + 1;
		
		if(HCount < HdisplayConst-1) then 
			HState <= Display;
		elsif(HCount < HfrontPorchConst-1) then 
			HState <= FrontPorch;
		elsif(HCount < HSyncConst-1) then 
			HState <= H_sync;
		elsif(HCount < HbackPorchConst-1) then 
			HState <= BackPorch;
		else 
			HState <= Display;
			HCount <= 0;
			VCount <= VCount + 1;
			HAddress <= 0;
			VAddress <= VAddress + 1;
		end if;
		
		if(VCount < VdisplayConst-1) then 
			VState <= Display;
		elsif(VCount < VfrontPorchConst-1) then 
			VState <= FrontPorch;
		elsif(VCount < VSyncConst-1) then 
			VState <= V_sync;
		elsif(VCount < VbackPorchConst-1) then 
			VState <= BackPorch;
		else 
			VState <= Display;
			VCount <= 0;
			VAddress <= 0;
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
						HAddress <= HAddress + 1;

					when FrontPorch => --H Front Porch
						Red 	<= (others => '0');
						Green <= (others => '0');
						Blue 	<= (others => '0');
						Hsync <= '0';
						Vsync <= '0';
						
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
		H_Address <= std_logic_vector(to_unsigned(HAddress, H_Address'length));
		V_Address <= std_logic_vector(to_unsigned(VAddress, V_Address'length));
		
	end if;
	END PROCESS;
end VGA_Controller_V1;