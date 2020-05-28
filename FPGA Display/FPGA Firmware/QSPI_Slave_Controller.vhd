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
		
		DataOut		: 	out	std_logic_vector(7 downto 0) := "00000000";
		Address_H	:	out	std_logic_vector(9 downto 0) := "0000000000";
		Address_V	:	out	std_logic_vector(9 downto 0) := "0000000000";
		WriteData	:	out	std_logic := '0'
	);
end QSPI_Slave_Controller;

architecture QSPI_Slave_Controller_V3 of QSPI_Slave_Controller is
	type 		States is (Waiting, Instruction, Address, Alternate, Dummy, Data);
	Signal 	State 					: States  := Waiting;
	Constant	Instruction_Length	: integer := 2; 	-- 1 byte
	Constant	Address_Length			: integer := 8; 	-- 3 bytes
	Constant	Alternate_Length		: integer := 10; 	-- 1 byte
	Constant	Dummy_Length			: integer := 12; 	-- 1 byte
	Constant	Data_Length				: integer := 524; 	-- 512 for 16x16 testing, 614412 => 640x480 bytes for live

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
				WriteData 	<= '0';
				DataOut <= (others => '0');
						
			when Instruction 	=>
				case State_Count is 
					when 0 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 1;
					when 1 =>
						InReg(3 downto 0) := IO;
						--Check Correct Instruction
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
						--Check Correct Address 1
						State_Count := 2;
					when 2 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 3;
					when 3 =>
						InReg(3 downto 0) := IO;
						--Check Correct Address 2
						State_Count := 4;
					when 4 =>
						InReg(7 downto 4) := IO;
						WriteData <= '0';
						State_Count := 5;
					when 5 =>
						InReg(3 downto 0) := IO;
						--Check Correct Address 3
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
						--Check Correct Alternate
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
						if(Data_H = 15) then 
							Data_H := 0;
							if(Data_V = 15) then 
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
