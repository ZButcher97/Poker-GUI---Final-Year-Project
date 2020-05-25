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
		SReset_n			:	in		std_logic;
		
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
	constant HdisplayConst		: 	integer 	:= 16; 	--640
	constant HfrontPorchConst 	: 	integer 	:= 32;	--16
	constant HSyncConst			: 	integer 	:= 128;	--96
	constant HbackPorchConst	: 	integer 	:= 176;	--48
	
	constant VdisplayConst 		: 	integer 	:= 16;	--480
	constant VfrontPorchConst 	: 	integer 	:= 26;	--10
	constant VSyncConst			: 	integer 	:= 28;	--2
	constant VbackPorchConst	: 	integer 	:= 61;	--33
	
begin
	
PIXEL_Horizontal: Process(CLK, SReset_n)
	variable 	HAddress				:	integer := 0;
	variable 	VAddress				:	integer := 0;
	variable		HCount				: 	integer := 0;
	variable 	VCount				: 	integer := 0;	
	
	BEGIN
	if(SReset_n = '0') then 
		Red 	<= (others => '0');
		Green <= (others => '0');
		Blue 	<= (others => '0');
		Hsync <= '0';
		Vsync <= '0';
		V_Address <= (others => '0');
		H_Address <= (others => '0');
		
		HState <= Display;
		VState <= Display;
		
		HCount := 0;
		VCount := 0;
	elsif(rising_edge(CLK)) then 	
		
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
		
		if(HCount < HdisplayConst) then 
			HState <= Display;
		elsif(HCount < HfrontPorchConst) then 
			HState <= FrontPorch;
		elsif(HCount < HSyncConst) then 
			HState <= H_sync;
		elsif(HCount < HbackPorchConst) then 
			HState <= BackPorch;
		elsif(HCount = HbackPorchConst) then
			HState <= Display;
		elsif(HCount = HbackPorchConst+1) then 
			HCount := 0;
			VCount := VCount + 1;
			VAddress := VCount;
		end if;
		
		if(VCount < VdisplayConst) then 
			VState <= Display;
		elsif(VCount < VfrontPorchConst) then 
			VState <= FrontPorch;
			VAddress := 0;
			HAddress := 0;
		elsif(VCount < VSyncConst) then 
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
		
		
		H_Address <= std_logic_vector(to_unsigned(HAddress, H_Address'length));
		V_Address <= std_logic_vector(to_unsigned(VAddress, V_Address'length));
		
	end if;
	END PROCESS;
end VGA_Controller_V1;