LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                

ENTITY VGA_Controller_vhd_tst IS
END VGA_Controller_vhd_tst;
ARCHITECTURE VGA_Controller_arch OF VGA_Controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Blue : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Blue_Data : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL Green : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Green_Data : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL H_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Hsync : STD_LOGIC;
SIGNAL Red : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Red_Data : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL V_Address : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Vsync : STD_LOGIC;
COMPONENT VGA_Controller
	PORT (
	Blue : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	Blue_Data : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	CLK : IN STD_LOGIC;
	Green : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	Green_Data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	H_Address : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	Hsync : BUFFER STD_LOGIC;
	Red : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	Red_Data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	V_Address : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	Vsync : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : VGA_Controller
	PORT MAP (
-- list connections between master ports and signals
	Blue => Blue,
	Blue_Data => Blue_Data,
	CLK => CLK,
	Green => Green,
	Green_Data => Green_Data,
	H_Address => H_Address,
	Hsync => Hsync,
	Red => Red,
	Red_Data => Red_Data,
	V_Address => V_Address,
	Vsync => Vsync
	);
Init : PROCESS                                              
BEGIN	
	Red_Data <= "111";
	Green_Data <= "111";
	Blue_Data <= "00";
	for i in 0 to 1000000 loop
      CLK <= '1';	
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
	end loop;
WAIT;                                                       
END PROCESS Init; 
                                          
Output : PROCESS                                              
                                     
BEGIN            
	wait for 50 ns;                                             
	for i in 1 to 525 loop
		for j in 1 to 800 loop
			if(i <= 480) then 			--V DA
				if(j <= 640) then		--H DA
					assert (Red = Red_Data) 						report "H-DA V-DA Red Incorrect" 	severity ERROR;
					assert (Green = Green_Data) 						report "H-DA V-DA Green Incorrect" 	severity ERROR;
					assert (Blue = Blue_Data) 						report "H-DA V-DA Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-DA V-DA Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-DA V-DA Vsync Incorrect" 	severity ERROR;
					assert H_Address = std_logic_vector(to_unsigned(j, H_Address'Length))	report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = std_logic_vector(to_unsigned(i, V_Address'Length))	report "H-DA V-DA V_Address incorrect"	severity ERROR;

				elsif(j <= 656) then		--H FP
					assert (Red = "000") 							report "H-FP V-DA Red Incorrect" 	severity ERROR;
					assert (Green = "000") 							report "H-FP V-DA Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-FP V-DA Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-FP V-DA Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-FP V-DA Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = std_logic_vector(to_unsigned(i, V_Address'Length))	report "H-FP V-DA V_Address incorrect"	severity ERROR;
				
				elsif(j <= 752) then 		--H SP
					assert (Red = "000") 							report "H-SP V-DA Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-SP V-DA Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-SP V-DA Blue Incorrect" 	severity ERROR;
					assert (Hsync = '1') 							report "H-SP V-DA Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-SP V-DA Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = std_logic_vector(to_unsigned(i, V_Address'Length))	report "H-SP V-DA V_Address incorrect"	severity ERROR;
				
				elsif(j <= 800) then 		--H BP
					assert (Red = "000") 							report "H-BP V-DA Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-BP V-DA Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-BP V-DA Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-BP V-DA Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-BP V-DA Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = std_logic_vector(to_unsigned(i, V_Address'Length))	report "H-BP V-DA V_Address incorrect"	severity ERROR;
				
				end if;
				
			elsif(i <= 490) then 			--V FP
				if(j <= 640) then		--H DA
					assert (Red = "000") 							report "H-DA V-FP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-DA V-FP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-DA V-FP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-DA V-FP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-DA V-FP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-DA V-FP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 656) then		--H FP
					assert (Red = "000") 							report "H-FP V-FP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-FP V-FP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-FP V-FP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-FP V-FP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-FP V-FP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-FP V-FP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 752) then 		--H SP
					assert (Red = "000") 							report "H-SP V-FP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-SP V-FP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-SP V-FP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '1') 							report "H-SP V-FP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-SP V-FP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-SP V-SP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 800) then 		--H BP
					assert (Red = "000") 							report "H-BP V-FP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-BP V-FP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-BP V-FP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-BP V-FP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-BP V-FP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-BP V-FP V_Address incorrect"	severity ERROR;
				
				end if;
				
			elsif(i <= 492) then 			--V SP
				if(j <= 640) then		--H DA
					assert (Red = "000") 							report "H-DA V-SP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-DA V-SP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-DA V-SP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-DA V-SP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '1') 							report "H-DA V-SP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-DA V-SP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 656) then		--H FP
					assert (Red = "000") 							report "H-FP V-SP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-FP V-SP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-FP V-SP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0')							report "H-FP V-SP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '1') 							report "H-FP V-SP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-FP V-SP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 752) then 		--H SP
					assert (Red = "000") 							report "H-sp V-SP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-sp V-SP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-sp V-SP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '1') 							report "H-sp V-SP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '1') 							report "H-sp V-SP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-SP V-SP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 800) then 		--H BP
					assert (Red = "000") 							report "H-bp V-SP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-bp V-SP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-bp V-SP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-bp V-SP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '1') 							report "H-bp V-SP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-BP V-SP V_Address incorrect"	severity ERROR;
				
				end if;
				
			elsif(i <= 525) then 			--V BP
				if(j <= 640) then		--H DA
					assert (Red = "000") 							report "H-DA V-BP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-DA V-BP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-DA V-BP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-DA V-BP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-DA V-BP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-DA V-BP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 656) then		--H FP
					assert (Red = "000") 							report "H-FP V-BP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-FP V-BP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-FP V-BP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-FP V-BP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-FP V-BP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-FP V-BP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 752) then 		--H SP
					assert (Red = "000") 							report "H-SP V-BP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-SP V-BP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-SP V-BP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '1') 							report "H-SP V-BP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-SP V-BP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-SP V-BP V_Address incorrect"	severity ERROR;
				
				elsif(j <= 800) then 		--H BP
					assert (Red = "000") 							report "H-BP V-BP Red Incorrect" 	severity ERROR;
					assert (Green = "000") 	 						report "H-BP V-BP Green Incorrect" 	severity ERROR;
					assert (Blue = "00") 							report "H-BP V-BP Blue Incorrect" 	severity ERROR;
					assert (Hsync = '0') 							report "H-BP V-BP Hsync Incorrect" 	severity ERROR;
					assert (Vsync = '0') 							report "H-BP V-BP Vsync Incorrect" 	severity ERROR;
					assert H_Address = "0000000000"						report "H-DA V-DA H_Address incorrect"	severity ERROR;
					assert V_Address = "0000000000"						report "H-BP V-BP V_Address incorrect"	severity ERROR;
				
				end if;
			end if;
			wait for 40 ns;
		end loop;
	end loop;
WAIT;                                                        
END PROCESS Output;                                          
END VGA_Controller_arch;
