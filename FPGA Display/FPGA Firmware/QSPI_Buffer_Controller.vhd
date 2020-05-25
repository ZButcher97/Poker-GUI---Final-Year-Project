library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QSPI_Buffer_Controller is

	port
	(
		--Input Ports
		QSPI_CLK			:	in		std_logic;
		SYNC_CLK			:	in		std_logic;
		H_Address		: 	in 	std_logic_vector(9 downto 0)  := (others => '0'); --To make these generic, i need to use ceiling(log_2(HArr_Max))
		V_Address		:	in		std_logic_vector(9 downto 0) 	:= (others => '0');
		Data_In			:	in		std_logic_vector(7 downto 0);
		WriteRequest	:	in		std_logic;
		
		--Output Ports
		Data_Out			:	out	std_logic_vector(7 downto 0) := (others => '0');
		WriteReq			:	out	std_logic	:= '0'
	);
end QSPI_Buffer_Controller;


--architecture QSPI_Buffer_Controller_V1 of QSPI_Buffer_Controller is
--	type 		array1_t 		is array(0 to 16, 0 to 16) of std_logic_vector(7 downto 0); 	
--	signal 	matrix1 			: 	array1_t;
--	signal 	matrix2 			: 	array1_t;	
--	
--	type 	 	States 			is	(Waiting, Output);
--	Signal	State 			:	States  := Waiting;
--	
--	type 	 	Sync_States 	is	(Start, OutputData);
--	Signal	Sync_State 		:	Sync_States  := Start;
--	
--	signal 	Sync_Data		:	integer := 0;
--	signal 	ArrayWriteTo	:	integer := 0;
--begin
--
--QSPI_Data:	process(QSPI_CLK)
--begin
--	if(falling_edge(QSPI_CLK)) then 
--		if(WriteRequest = '1') then 
--			if(ArrayWriteTo = 0) then
--				matrix1(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address))) <= Data_In;
--				if(to_integer(unsigned(H_Address)) = 16 AND to_integer(unsigned(V_Address)) = 16) then 
--					
--					ArrayWriteTo <= 1;
--					Sync_Data <= 1;
--				end if;
--			else
--				matrix2(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address))) <= Data_In;
--				if(to_integer(unsigned(H_Address)) = 16 AND to_integer(unsigned(V_Address)) = 16) then 
--					
--					ArrayWriteTo <= 0;
--					Sync_Data <= 1;
--				end if;
--			end if;
--		else
--			Sync_Data <= 0;
--		end if;
--	end if;
--	
--end process;
--
--OutputSyncData:		process(SYNC_CLK, Sync_Data)
--signal	EndHadd	:	integer	:=	0;
--signal	EndVadd	:	integer	:=	0;
--
--begin
--	
--	if(Sync_Data = 1) then 
--		State <= Output;
--	end if;
--	
--	if(rising_edge(SYNC_CLK)) then 
--		case State is
--			when Waiting =>
--			WriteReq <= '0';
--			
--			when Output=>
--				case Sync_State is
--					when Start =>
--						if(unsigned(H_Address) = 0) then 
--							EndHadd <= 639;
--						else
--							EndHadd <= to_integer(unsigned(H_Address)) - 1;
--						end if;
--						if(unsigned(V_Address) = 0) then 
--							EndVadd <= 479;
--						else
--							EndVadd <= to_integer(unsigned(V_Address)) - 1;
--						end if;
--						
--						if(ArrayWriteTo = 0) then 
--							Data_Out <= matrix1(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--							WriteReq <= '1';
--						else
--							Data_Out <= matrix2(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--							WriteReq <= '1';
--						end if;
--						Sync_State <= OutputData;
--						
--					when OutputData =>
--						if(to_integer(unsigned(H_Address)) = EndHadd AND to_integer(unsigned(V_Address)) = EndVadd) then 
--							State <= Waiting;
--						else						
--							if(ArrayWriteTo = 0) then 
--								Data_Out <= matrix1(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--								WriteReq <= '1';
--							else
--								Data_Out <= matrix2(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--								WriteReq <= '1';
--							end if;
--						end if;
--				end case;
--		end case;
--	end if;
--end process;
--
--
--end QSPI_Buffer_Controller_V1;
--
--architecture QSPI_Buffer_Controller_V2 of QSPI_Buffer_Controller is
--	type 		array1_t 		is array(0 to 16, 0 to 16) of std_logic_vector(7 downto 0); 	
--	signal 	matrix1 			: 	array1_t;
--	signal 	matrix2 			: 	array1_t;	
--	
--	type 	 	Q_States 		is	(Buffer1, Buffer2);
--	Signal	Q_State 			:	Q_States  := Buffer1;
--	
--	type 	 	S_States 		is	(Waiting, OutputBuffer1, OutputBuffer2);
--	Signal	S_State 			:	S_States  := Waiting;
--	
--	type 	 	Output_States 	is	(Start, Output);
--	Signal	Output_State 	:	Output_States  := Start;
--	
--	signal 	OutputBuffer1_Finished	:	integer	:= 0;
--	signal 	OutputBuffer2_Finished	:	integer	:= 0;
--	
--	signal QSPI_Hadd	:	integer := 0;
--	signal QSPI_Vadd	:	integer := 0;
--	
--begin
--
--QCLK:	process(QSPI_CLK)
--begin
--	if(falling_edge(QSPI_CLK)) then 
--	
--		case Q_State is
--			when Buffer1 =>
--				if(OutputBuffer2_Finished = 1) then
--					S_State <= Waiting;
--				end if;
--				if(WriteRequest = '1') then 
--					matrix1(QSPI_Hadd,QSPI_Vadd) <= Data_In;
--					if(QSPI_Hadd = 16 AND QSPI_Vadd = 16) then 
--						S_State <= OutputBuffer1;
--					end if;
--					if(QSPI_Hadd = 16) then 
--						QSPI_Hadd <= 0;
--						if(QSPI_Vadd = 16) then 
--							QSPI_Vadd <= 0;
--						else
--							QSPI_Vadd <= QSPI_Vadd + 1;
--						end if;	
--					else 
--						QSPI_Hadd <= QSPI_Hadd + 1;
--					end if;
--				end if;
--				
--			when Buffer2 =>
--				if(OutputBuffer1_Finished = 1) then
--					S_State <= Waiting;
--				end if;
--				if(WriteRequest = '1') then 
--					matrix2(QSPI_Hadd,QSPI_Vadd) <= Data_In;
--					if(QSPI_Hadd = 16 AND QSPI_Vadd = 16) then 
--						S_State <= OutputBuffer2;
--					end if;
--					if(QSPI_Hadd = 16) then 
--						QSPI_Hadd <= 0;
--						if(QSPI_Vadd = 16) then 
--							QSPI_Vadd <= 0;
--						else
--							QSPI_Vadd <= QSPI_Vadd + 1;
--						end if;						
--					else 
--						QSPI_Hadd <= QSPI_Hadd + 1;
--					end if;
--				end if;
--		end case;
--	end if;
--	
--end process;
--
--SCLK:		process(SYNC_CLK)
--signal	EndHadd	:	integer	:=	0;
--signal	EndVadd	:	integer	:=	0;
--begin
--	if(rising_edge(SYNC_CLK)) then 
--	
--	case S_State is
--			when Waiting =>
--				OutputBuffer1_Finished <= 0;
--				OutputBuffer2_Finished <= 0;
--			
--			when OutputBuffer1 =>
--				Q_State <= Buffer2;
--				case Output_State is
--					when Start =>
--						if(unsigned(H_Address) = 0) then 
--							EndHadd <= 639;
--						else
--							EndHadd <= to_integer(unsigned(H_Address)) - 1;
--						end if;
--						if(unsigned(V_Address) = 0) then 
--							EndVadd <= 479;
--						else
--							EndVadd <= to_integer(unsigned(V_Address)) - 1;
--						end if;
--						Data_Out <= matrix1(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--						Output_State <= Output;
--					
--					when Output =>
--						if(to_integer(unsigned(H_Address)) = EndHadd AND to_integer(unsigned(V_Address)) = EndVadd) then 
--							OutputBuffer1_Finished <= 1;
--						else						
--							Data_Out <= matrix1(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--						end if;
--				end case;
--			
--			when OutputBuffer2 =>
--				Q_State <= Buffer1;
--				case Output_State is
--					when Start =>
--						if(unsigned(H_Address) = 0) then 
--							EndHadd <= 639;
--						else
--							EndHadd <= to_integer(unsigned(H_Address)) - 1;
--						end if;
--						if(unsigned(V_Address) = 0) then 
--							EndVadd <= 479;
--						else
--							EndVadd <= to_integer(unsigned(V_Address)) - 1;
--						end if;
--						Data_Out <= matrix2(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--						Output_State <= Output;
--					
--					when Output =>
--						if(to_integer(unsigned(H_Address)) = EndHadd AND to_integer(unsigned(V_Address)) = EndVadd) then 
--							OutputBuffer2_Finished <= 1;
--						else						
--							Data_Out <= matrix2(to_integer(unsigned(H_Address)),to_integer(unsigned(V_Address)));
--						end if;
--				
--				end case;
--			
--		end case;
--	
--	end if;
--	
--end process;
--
--
--end QSPI_Buffer_Controller_V2;


architecture QSPI_Buffer_Controller_VTest16 of QSPI_Buffer_Controller is
	type 		array1_t 		is array(0 to 15, 0 to 15) of std_logic_vector(7 downto 0); 	
	signal 	matrix1 			: 	array1_t;
	signal 	matrix2 			: 	array1_t;	
	
	type 	 	Q_States 		is	(Buffer1, Buffer2);
	Signal	Q_State 			:	Q_States  := Buffer1;
	
	type 	 	S_States 		is	(Waiting, OutputBuffer1, OutputBuffer2);
	Signal	S_State 			:	S_States  := Waiting;
	
	type 	 	Output_States 	is	(Start, Output);
	Signal	Output_State 	:	Output_States  := Start;
	
	signal 	OutputBuffer1_Finished	:	integer	:= 0;
	signal 	OutputBuffer2_Finished	:	integer	:= 0;
	
	signal QSPI_Hadd	:	integer := 0;
	signal QSPI_Vadd	:	integer := 0;
	
	signal	EndHadd	:	integer	:=	0;
	signal	EndVadd	:	integer	:=	0;
	
begin

QCLK:	process(QSPI_CLK)
begin
	if(falling_edge(QSPI_CLK)) then 
	
		case Q_State is
			when Buffer1 =>
				if(OutputBuffer2_Finished = 1) then
					S_State <= Waiting;
				end if;
				if(WriteRequest = '1') then 
					matrix1(QSPI_Hadd,QSPI_Vadd) <= Data_In;				
					if(QSPI_Hadd = 15 AND QSPI_Vadd = 15) then 
						S_State <= OutputBuffer1;
					end if;
					if(QSPI_Hadd = 15) then 
						QSPI_Hadd <= 0;
						if(QSPI_Vadd = 15) then 
							QSPI_Vadd <= 0;
						else
							QSPI_Vadd <= QSPI_Vadd + 1;
						end if;	
					else 
						QSPI_Hadd <= QSPI_Hadd + 1;
					end if;
				end if;
				
			when Buffer2 =>
				if(OutputBuffer1_Finished = 1) then
					S_State <= Waiting;
				end if;
				if(WriteRequest = '1') then 
					matrix2(QSPI_Hadd,QSPI_Vadd) <= Data_In;
					if(QSPI_Hadd = 15 AND QSPI_Vadd = 15) then 
						S_State <= OutputBuffer2;
					end if;
					if(QSPI_Hadd = 15) then 
						QSPI_Hadd <= 0;
						if(QSPI_Vadd = 15) then 
							QSPI_Vadd <= 0;
						else
							QSPI_Vadd <= QSPI_Vadd + 1;
						end if;						
					else 
						QSPI_Hadd <= QSPI_Hadd + 1;
					end if;
				end if;
		end case;
	end if;
	
end process;

SCLK:		process(SYNC_CLK)
variable Hadd_OUT	:	integer := 0;
variable Vadd_OUT	:	integer := 0;
begin
	if(falling_edge(SYNC_CLK)) then 
	
	case S_State is
			when Waiting =>
				OutputBuffer1_Finished <= 0;
				OutputBuffer2_Finished <= 0;
			
			when OutputBuffer1 =>
				Q_State <= Buffer2;
				case Output_State is
					when Start =>
						EndHadd <= to_integer(unsigned(H_Address));
						EndVadd <= to_integer(unsigned(V_Address));	
	
						if(to_integer(unsigned(H_Address)) = 1) then
							Hadd_OUT := 14;
							if(to_integer(unsigned(V_Address)) = 0) then 
								Vadd_OUT := 15;
							else
								Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
							end if;
						elsif(to_integer(unsigned(H_Address)) = 0) then 
							Hadd_OUT := 15;
							if(to_integer(unsigned(V_Address)) = 0) then 
								Vadd_OUT := 15;
							else
								Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
							end if;
						else
							Hadd_OUT := to_integer(unsigned(H_Address))-2;
							Vadd_OUT := to_integer(unsigned(V_Address));
						end if;
							
							
						Data_Out <= matrix1(Hadd_OUT,Vadd_OUT);
						WriteReq <= '1';
						Output_State <= Output;
					
					when Output =>
						if(H_Address = std_logic_vector(to_unsigned(EndHadd, H_Address'length)) AND V_Address = std_logic_vector(to_unsigned(EndVadd, V_Address'length))) then 
							OutputBuffer1_Finished <= 1;
							Data_Out <= (others => '0');
							WriteReq <= '0';
							Output_State <= Start;
							
						else
							if(to_integer(unsigned(H_Address)) = 1) then
								Hadd_OUT := 15;
								if(to_integer(unsigned(V_Address)) = 0) then 
									Vadd_OUT := 15;
								else
									Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
								end if;
							elsif(to_integer(unsigned(H_Address)) = 0) then 
								Hadd_OUT := 14;
								if(to_integer(unsigned(V_Address)) = 0) then 
									Vadd_OUT := 15;
								else
									Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
								end if;
							else
								Hadd_OUT := to_integer(unsigned(H_Address))-2;
								Vadd_OUT := to_integer(unsigned(V_Address));
							end if;
							Data_Out <= matrix1(Hadd_OUT,Vadd_OUT);
							WriteReq <= '1';
						end if;
				end case;
			
			when OutputBuffer2 =>
				Q_State <= Buffer1;
				case Output_State is
					when Start =>
						EndHadd <= to_integer(unsigned(H_Address));
						EndVadd <= to_integer(unsigned(V_Address));	
	
						if(to_integer(unsigned(H_Address)) = 1) then
							Hadd_OUT := 14;
							if(to_integer(unsigned(V_Address)) = 0) then 
								Vadd_OUT := 15;
							else
								Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
							end if;
						elsif(to_integer(unsigned(H_Address)) = 0) then 
							Hadd_OUT := 15;
							if(to_integer(unsigned(V_Address)) = 0) then 
								Vadd_OUT := 15;
							else
								Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
							end if;
						else
							Hadd_OUT := to_integer(unsigned(H_Address))-2;
							Vadd_OUT := to_integer(unsigned(V_Address));
						end if;
							
							
						Data_Out <= matrix2(Hadd_OUT,Vadd_OUT);
						WriteReq <= '1';
						Output_State <= Output;
					
					when Output =>
						if(H_Address = std_logic_vector(to_unsigned(EndHadd, H_Address'length)) AND V_Address = std_logic_vector(to_unsigned(EndVadd, V_Address'length))) then 
							OutputBuffer2_Finished <= 1;
							Data_Out <= (others => '0');
							WriteReq <= '0';
							Output_State <= Start;
							
						else
							if(to_integer(unsigned(H_Address)) = 1) then
								Hadd_OUT := 15;
								if(to_integer(unsigned(V_Address)) = 0) then 
									Vadd_OUT := 15;
								else
									Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
								end if;
							elsif(to_integer(unsigned(H_Address)) = 0) then 
								Hadd_OUT := 14;
								if(to_integer(unsigned(V_Address)) = 0) then 
									Vadd_OUT := 15;
								else
									Vadd_OUT := to_integer(unsigned(V_Address)) - 1;
								end if;
							else
								Hadd_OUT := to_integer(unsigned(H_Address))-2;
								Vadd_OUT := to_integer(unsigned(V_Address));
							end if;
							Data_Out <= matrix2(Hadd_OUT,Vadd_OUT);
							WriteReq <= '1';
						end if;
				end case;
		end case;
	
	end if;
	
end process;


end QSPI_Buffer_Controller_VTest16;
