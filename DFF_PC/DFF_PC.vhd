library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DFF_PC is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qnot : out  STD_LOGIC);
end DFF_PC;

architecture DFF_PC_arch of DFF_PC is
--signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10 : STD_LOGIC;

begin
	process (CLK, clear, preset)
	begin
		if clear='0' then   
			Q <= '0';
		elsif preset='0' then
			Q <= '1';
		elsif (CLK'event and CLK='1') then 
			Q <= D;
			Qnot <= not D;
		end if;
	end process;
	
--	S1 <= NOT D;
--	S2 <= D NAND CLK;
--	S3 <= S1 NAND CLK;
--	S4 <= (preset NAND S2) NAND S5;
--	S5 <= (clear NAND S3) NAND S4;
--	S6 <= NOT S1;
--	S7 <= S4 NAND S6;
--	S8 <= S5 NAND S6;
--	S9 <= (preset NAND S7) NAND S10;
--	S10 <= (clear NAND S8) NAND S9;
--	Q <= S9;
--	Qnot <= S10;
	
end DFF_PC_arch;