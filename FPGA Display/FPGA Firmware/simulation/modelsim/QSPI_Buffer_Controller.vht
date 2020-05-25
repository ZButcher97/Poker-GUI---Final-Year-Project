LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all; 

ENTITY QSPI_Buffer_Controller_vhd_tst IS
END QSPI_Buffer_Controller_vhd_tst;
ARCHITECTURE QSPI_Buffer_Controller_arch OF QSPI_Buffer_Controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Data_In : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
SIGNAL Data_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H_Address : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
SIGNAL QSPI_CLK : STD_LOGIC;
SIGNAL SYNC_CLK : STD_LOGIC;
SIGNAL V_Address : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
SIGNAL WriteReq : STD_LOGIC;
SIGNAL WriteRequest : STD_LOGIC;
COMPONENT QSPI_Buffer_Controller
	PORT (
	Data_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_Out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	H_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	QSPI_CLK : IN STD_LOGIC;
	SYNC_CLK : IN STD_LOGIC;
	V_Address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WriteReq : BUFFER STD_LOGIC;
	WriteRequest : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : QSPI_Buffer_Controller
	PORT MAP (
-- list connections between master ports and signals
	Data_In => Data_In,
	Data_Out => Data_Out,
	H_Address => H_Address,
	QSPI_CLK => QSPI_CLK,
	SYNC_CLK => SYNC_CLK,
	V_Address => V_Address,
	WriteReq => WriteReq,
	WriteRequest => WriteRequest
	);



QCLK : PROCESS                                              
BEGIN        
        for i in 0 to 4000 loop
		QSPI_CLK <= '1';
		wait for 15.625 ns; --32 MHz -> QSPI clock from QSPI Master
		QSPI_CLK <= '0';
		wait for 15.625 ns;
	end loop;                                        
WAIT;                                                       
END PROCESS QCLK;  



                                         
SCLK : PROCESS                                     
BEGIN  
	for i in 0 to 4000 loop
		SYNC_CLK <= '1';
		wait for 19.861 ns; --25.175 MHz -> Pixel clock derived FPGA PLL @ 25.175MHz
		SYNC_CLK <= '0';
		wait for 19.861 ns;
	end loop;                                                            
WAIT;                                                        
END PROCESS SCLK; 

VGA_Addresses : PROCESS
BEGIN
	for runs in 1 to 9 loop
		for i in 0 to 15 loop
			for j in 0 to 15 loop
				wait until SYNC_CLK = '1';
				H_Address <= std_logic_vector(to_unsigned(j, H_Address'length));
				V_Address <= std_logic_vector(to_unsigned(i, H_Address'length));
				wait until SYNC_CLK = '0';
			end loop;
		end loop;
	end loop;
WAIT;
END PROCESS;


WRITE_SPI_DATA : PROCESS
BEGIN

for runs in 1 to 4 loop
	WriteRequest <= '0';
	wait for 1000 ns;
	wait until QSPI_CLK = '0';
	wait for 5 ns;
	WriteRequest <= '1';
	for i in 0 to 15 loop
		for j in 0 to 15 loop
			wait until QSPI_CLK = '1';
			Data_In <= std_logic_vector(to_unsigned((i+j), Data_In'length));
			wait until QSPI_CLK = '0';			
		end loop;		
	end loop;	
	Data_In <= (others => '0');
	WriteRequest <= '0';
	wait for 15000 ns;

end loop;
	
--	for i in 0 to 480 loop
--		for j in 0 to 640 loop
--			H_Address <= std_logic_vector(to_unsigned(j, H_Address'length));
--			V_Address <= std_logic_vector(to_unsigned(i, H_Address'length));
--			wait until SYNC_CLK = '1';
--			wait until SYNC_CLK = '0';
--		end loop;
--	end loop;
WAIT;
END PROCESS; 

--WRITE_SPI_DATA_2 : PROCESS
--BEGIN
--	wait for 11000 ns;
--	wait until QSPI_CLK = '1';
--	WriteRequest <= '1';
--	for i in 0 to 16 loop
--		for j in 0 to 16 loop
--			wait until QSPI_CLK = '1';
--			Data_In <= std_logic_vector(to_unsigned((i+j), Data_In'length));
--			wait until QSPI_CLK = '0';			
--		end loop;		
--	end loop;	
--	WriteRequest <= '0';
--	for i in 0 to 16 loop
--		for j in 0 to 16 loop
--			H_Address <= std_logic_vector(to_unsigned(j, H_Address'length));
--			V_Address <= std_logic_vector(to_unsigned(i, H_Address'length));
--			wait until SYNC_CLK = '1';
--			wait until SYNC_CLK = '0';
--		end loop;
--	end loop;
--END PROCESS;
--

                                        
END QSPI_Buffer_Controller_arch;
