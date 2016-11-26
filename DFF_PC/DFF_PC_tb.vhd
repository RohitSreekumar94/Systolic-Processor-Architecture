library ieee;
use ieee.std_logic_1164.all;
 
entity DFF_PC_tb is
end DFF_PC_tb;
 
architecture tb of DFF_PC_tb is
	component DFF_PC
	port( D, CLK, preset, clear: in  std_logic;
         Q : out  std_logic;
         Qnot : out  std_logic
        );
	end component;
   
	signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Preset : std_logic := '1';
   signal Clear : std_logic := '1';

   signal Q : std_logic;
   signal Qnot : std_logic;

	begin
	mapping: DFF_PC port map(D,CLK,preset,clear,Q,Qnot);
	
	process
	begin
		CLK <= '0'; wait for 1 ps;
		CLK <= '1'; wait for 1 ps;
	end process;
	
	process
	begin
		D <= '0'; wait for 3 ps;
		D <= '1'; wait for 3 ps;
	end process;
	
	process
	begin
		preset <= '0'; wait for 5 ps;
		preset <= '1'; wait for 40 ps;
		clear <= '0'; wait for 5 ps;
		clear <= '1'; wait for 40 ps;
	end process;
end tb;

configuration cfg_tb of DFF_PC_tb is
   for tb
   end for;
end cfg_tb;