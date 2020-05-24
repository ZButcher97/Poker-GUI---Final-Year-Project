library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QSPI_Slave_Controller is

	port
	(
		-- Input ports
		CS_n			:	in		std_logic;
		CLK			:	in		std_logic;
		--Should be inout or buffer for a generic QSPI slave, however no data returned in this use of QSPI slave
		IO				:	in		std_logic_vector(3 downto 0);
		
		DataOut		: 	out	std_logic_vector(7 downto 0);
		Address_H	:	out	std_logic_vector(9 downto 0);
		Address_V	:	out	std_logic_vector(9 downto 0);
		WriteData	:	out	std_logic
	);
end QSPI_Slave_Controller;


architecture QSPI_Slave_Controller_V1 of QSPI_Slave_Controller is
	type 		States is (Ready, Instruction, Address, Alternate, Dummy, Data);
	Signal 	State 					: States  := Ready;
	Constant	Instruction_Length	: integer := 2; 	-- 1 byte
	Constant	Address_Length			: integer := 8; 		-- 3 bytes
	Constant	Alternate_Length		: integer := 10; 		-- 1 byte
	Constant	Dummy_Length			: integer := 12; 		-- 1 byte
	Constant	Data_Length				: integer := 614412; -- 640x480 bytes

begin
	Controller: process(CLK)
	
	
	variable Clock_Count	:	integer := 0;
	
	variable Instr_Count	:	integer := 0;
	variable Instr			:	std_logic_vector(7 downto 0) := (others => '0');
	
	variable Add_Count	:	integer := 0;
	variable Add			:	std_logic_vector(7 downto 0) := (others => '0');
	
	variable Alt_Count	:	integer := 0;
	variable Alt			:	std_logic_vector(7 downto 0) := (others => '0');
	
	variable Dummy_Count	:	integer := 0;
	
	variable Data_Count	:	integer := 0;
	variable Data_H		:	integer := 0;
	variable Data_V		:	integer := 0;
	variable DataReq		:	std_logic_vector(7 downto 0) := (others => '0');
	
	begin
		if(rising_edge(CLK)) then 
				if(Clock_Count < Instruction_Length) then 
					State <= Instruction;
				elsif(Clock_Count < Address_Length) then 
					State <= Address;
				elsif(Clock_Count < Alternate_Length) then 
					State <= Alternate;
				elsif(Clock_Count < Dummy_Length) then 
					State <= Dummy;
				elsif(Clock_Count < Data_Length) then 
					State <= Data;
				else
					State <= Ready;
					Clock_Count := 0;
				end if;
				Clock_Count := Clock_Count + 1;
				
				case State is 
					when Ready 			=> 
						Instr_Count	:= 0;
						Add_Count	:= 0;						
						Alt_Count	:= 0;						
						Dummy_Count	:= 0;						
						Data_Count	:= 0;
						Data_H		:= 0;
						Data_V		:= 0;
						
					when Instruction 	=> 
						WriteData <= '0';
						if(Instr_Count = 0) then 
							Instr(7 downto 4) := IO;
							Instr_Count := 1;
						else
							Instr(3 downto 0) := IO;
							Address_H <= "1000000000";
							Address_V <= "1000000000";
							DataOut <= Instr;
							WriteData <= '1';
							Instr_Count := 0;
						end if;
						
					when Address 		=> 
						WriteData <= '0';
						case Add_Count is
							when 0 =>
								Add(7 downto 4) := IO;
								Add_Count := 1;
								
							when 1 =>
								Add(3 downto 0) := IO;
								Address_H <= "1010000000";
								Address_V <= "1000000000";
								DataOut <= Add;
								WriteData <= '1';
								Add_Count := 2;
								
							when 2 =>
								Add(7 downto 4) := IO;
								Add_Count := 3;
							
							when 3 =>
								Add(3 downto 0) := IO;
								Address_H <= "1100000000";
								Address_V <= "1000000000";
								DataOut <= Add;
								WriteData <= '1';
								Add_Count := 4;
								
							when 4 =>
								Add(7 downto 4) := IO;
								Add_Count := 5;
							
							when 5 =>
								Add(3 downto 0) := IO;
								Address_H <= "1110000000";
								Address_V <= "1000000000";
								DataOut <= Add;
								WriteData <= '1';
								Add_Count := 0;
								
							when others =>
								Add_Count := 0;
								
							end case;

					when Alternate 	=> 
						WriteData <= '0';
						if(Alt_Count = 0) then 
							Alt(7 downto 4) := IO;
							Alt_Count := 1;
						else
							Alt(3 downto 0) := IO;
							Address_H <= "1000000000";
							Address_V <= "1010000000";
							DataOut <= Alt;
							WriteData <= '1';
							Alt_Count := 0;
						end if;
						
					when Dummy 			=> 
						--Dummy, do nothing
					when Data	 		=>
						WriteData <= '0';
						if(Data_Count MOD 2 = 0) then --if received nibble is even, 4 msb's, else 4 lsb's
							DataReq(7 downto 4) := IO;
						else 
							DataReq(3 downto 0) := IO;
							
							if(Data_H = 640) then 
								Data_H := 0;
								if(Data_V = 480) then 
									Data_V := 0;
								else
									Data_V := Data_V + 1;									
								end if;
							else
								Data_H := Data_H + 1;
							end if;
							
							DataOut <= DataReq;
							Address_H <= std_logic_vector(to_unsigned(Data_H, Address_H'length));
							Address_V <= std_logic_vector(to_unsigned(Data_V, Address_V'length));
							WriteData <= '1';
						end if;
					
						Data_Count := Data_Count + 1;
					
				end case;

		else 
		State <= Ready;
		end if;
	end process;

end QSPI_Slave_Controller_V1;

architecture QSPI_Slave_Controller_V2 of QSPI_Slave_Controller is
	type 		States is (Ready, Instruction_1, Instruction_2, Address_1, Address_2, Address_3, Address_4, Address_5, Address_6, Alternate_1, Alternate_2, Dummy, Data_1, Data_2);
	Signal 	State 					: States  := Ready;
	Constant	Instruction_Length	: integer := 2; 	-- 1 byte
	Constant	Address_Length			: integer := 8; 		-- 3 bytes
	Constant	Alternate_Length		: integer := 10; 		-- 1 byte
	Constant	Dummy_Length			: integer := 12; 		-- 1 byte
	Constant	Data_Length				: integer := 614412; -- 640x480 bytes

begin
Controller_Process: process(CLK)
	variable Clock_Count	:	integer := 0;

	begin
		IF (rising_edge(CLK) AND CS_n = '0') THEN
         if(Clock_Count < Instruction_Length) then 
				State <= Instruction_1;
			elsif(Clock_Count < Address_Length) then 
				State <= Address_1;
			elsif(Clock_Count < Alternate_Length) then 
				State <= Alternate_1;
			elsif(Clock_Count < Dummy_Length) then 
				State <= Dummy;
			elsif(Clock_Count < Data_Length) then 
				State <= Data_1;
			else
				State <= Ready;
				Clock_Count := 0;
			end if;
			Clock_Count := Clock_Count + 1;
      END IF;
	end process;
	
State_Process: process(State, CLK)
	variable Instr_Count	:	integer := 0;
	variable Instr			:	std_logic_vector(7 downto 0) := (others => '0');
	
	variable Add_Count	:	integer := 0;
	variable Add			:	std_logic_vector(7 downto 0) := (others => '0');
	
	variable Alt_Count	:	integer := 0;
	variable Alt			:	std_logic_vector(7 downto 0) := (others => '0');
	
	variable Dummy_Count	:	integer := 0;
	
	variable Data_Count	:	integer := 0;
	variable Data_H		:	integer := 0;
	variable Data_V		:	integer := 0;
	variable DataReq		:	std_logic_vector(7 downto 0) := (others => '0');

	begin
		case State is 
					when Ready 			=> 
						Instr_Count	:= 0;
						Add_Count	:= 0;						
						Alt_Count	:= 0;						
						Dummy_Count	:= 0;						
						Data_Count	:= 0;
						Data_H		:= 0;
						Data_V		:= 0;
						
					when Instruction_1 	=> 
						WriteData <= '0';
						Instr(7 downto 4) := IO;
						State <= Instruction_2;

					when Instruction_2 	=>
						Instr(3 downto 0) := IO;
						Address_H <= "1000000000";
						Address_V <= "1000000000";
						DataOut <= Instr;
						WriteData <= '1';
						
					when Address_1 		=> 
						WriteData <= '0';
						Add(7 downto 4) := IO;
								
					when Address_2 		=> 
						Add(3 downto 0) := IO;
						Address_H <= "1010000000";
						Address_V <= "1000000000";
						DataOut <= Add;
						WriteData <= '1';

					when Address_3 		=> 
						Add(7 downto 4) := IO;
													
					when Address_4 		=> 
						Add(3 downto 0) := IO;
						Address_H <= "1100000000";
						Address_V <= "1000000000";
						DataOut <= Add;
						WriteData <= '1';
								
					when Address_5 		=> 
						Add(7 downto 4) := IO;
							
					when Address_6 		=> 
						Add(3 downto 0) := IO;
						Address_H <= "1110000000";
						Address_V <= "1000000000";
						DataOut <= Add;
						WriteData <= '1';

					when Alternate_1 	=> 
						WriteData <= '0';
						Alt(7 downto 4) := IO;

					when Alternate_2 	=> 
						Alt(3 downto 0) := IO;
						Address_H <= "1000000000";
						Address_V <= "1010000000";
						DataOut <= Alt;
						WriteData <= '1';
						
					when Dummy 			=> 
						--Dummy, do nothing
					when Data_1	 		=>
						WriteData <= '0';
						DataReq(7 downto 4) := IO;
						Data_Count := Data_Count + 1;
					
					when Data_2	 		=>
						DataReq(3 downto 0) := IO;
						if(Data_H = 640) then 
							Data_H := 0;
							if(Data_V = 480) then 
								Data_V := 0;
							else
								Data_V := Data_V + 1;									
							end if;
						else
							Data_H := Data_H + 1;
						end if;
						
						DataOut <= DataReq;
						Address_H <= std_logic_vector(to_unsigned(Data_H, Address_H'length));
						Address_V <= std_logic_vector(to_unsigned(Data_V, Address_V'length));
						WriteData <= '1';
						Data_Count := Data_Count + 1;
					
				end case;
	end process;

end QSPI_Slave_Controller_V2;


architecture QSPI_Slave_Controller_V3 of QSPI_Slave_Controller is
	type 		States is (Waiting, Instruction, Address, Alternate, Dummy, Data);
	Signal 	State 					: States  := Waiting;
	Constant	Instruction_Length	: integer := 2; 	-- 1 byte
	Constant	Address_Length			: integer := 8; 		-- 3 bytes
	Constant	Alternate_Length		: integer := 10; 		-- 1 byte
	Constant	Dummy_Length			: integer := 12; 		-- 1 byte
	Constant	Data_Length				: integer := 614412; -- 640x480 bytes

begin

State_Controller: process(CLK)
variable Clock_Count	:	integer := 0;

begin
	if(rising_edge(CLK)) THEN
		if(CS_n = '0') then 
			if(Clock_Count < Instruction_Length) then 
				State <= Instruction;
			elsif(Clock_Count < Address_Length) then 
				State <= Address;
			elsif(Clock_Count < Alternate_Length) then 
				State <= Alternate;
			elsif(Clock_Count < Dummy_Length) then 
				State <= Dummy;
			elsif(Clock_Count < Data_Length) then 
				State <= Data;
			else
				State <= Waiting;
				Clock_Count := 0;
			end if;
			Clock_Count := Clock_Count + 1;
		else
			State <= Waiting;
		end if;
	end if;
end process;

Output_Controller: process(CLK)
variable State_Count	:	integer := 0;
variable InReg			:	std_logic_vector(7 downto 0) := (others => '0');

variable Data_Count	:	integer := 0;
variable Data_H		:	integer := 0;
variable Data_V		:	integer := 0;

begin
	if(rising_edge(CLK)) THEN
		case State is 
			when Waiting 			=> 
				State_Count := 0;
				Data_Count	:= 0;
				Data_H		:= 0;
				Data_V		:= 0;
						
			when Instruction 	=>
				case State_Count is 
					when 0 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 1;
					when 1 =>
						InReg(3 downto 0) := IO;
						Address_H <= "1000000000";
						Address_V <= "1000000000";
						DataOut <= InReg;
						WriteData <= '1';
						State_Count := 0;
						
					when others =>
				end case;
						
			when Address 		=> 
			case State_Count is 
					when 0 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 1;
					when 1 =>
						InReg(3 downto 0) := IO;
						Address_H <= "1010000000";
						Address_V <= "1000000000";
						DataOut <= InReg;
						WriteData <= '1';
						State_Count := 2;
					when 2 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 3;
					when 3 =>
						InReg(3 downto 0) := IO;
						Address_H <= "1100000000";
						Address_V <= "1000000000";
						DataOut <= InReg;
						WriteData <= '1';
						State_Count := 4;
					when 4 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 5;
					when 5 =>
						InReg(3 downto 0) := IO;
						Address_H <= "1110000000";
						Address_V <= "1000000000";
						DataOut <= InReg;
						WriteData <= '1';
						State_Count := 0;
					when others =>
				end case;

			when Alternate 	=> 
				case State_Count is 
					when 0 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 1;
					when 1 =>
						InReg(3 downto 0) := IO;
						Address_H <= "1000000000";
						Address_V <= "1010000000";
						DataOut <= InReg;
						WriteData <= '1';
						State_Count := 0;
					when others =>
				end case;
					
			when Dummy 			=> 
				--Dummy, do nothing
			
			when Data	 		=>
				case State_Count is 
					when 0 =>
						WriteData <= '0';
						InReg(7 downto 4) := IO;
						Data_Count := Data_Count + 1;
						State_Count := 1;
					when 1 =>
						InReg(3 downto 0) := IO;
						if(Data_H = 640) then 
							Data_H := 0;
							if(Data_V = 480) then 
								Data_V := 0;
							else
								Data_V := Data_V + 1;									
							end if;
						else
							Data_H := Data_H + 1;
						end if;
								
						DataOut <= InReg;
						Address_H <= std_logic_vector(to_unsigned(Data_H, Address_H'length));
						Address_V <= std_logic_vector(to_unsigned(Data_V, Address_V'length));
						WriteData <= '1';
						Data_Count := Data_Count + 1;
						State_Count := 0;
					when others =>
				end case;
		end case;
	end if;
end process;


end QSPI_Slave_Controller_V3;
