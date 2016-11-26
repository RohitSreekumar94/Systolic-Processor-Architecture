library ieee;
use ieee.std_logic_1164.all;
 
entity PIPO4_tb is
end PIPO4_tb;
 

architecture tb of PIPO4_tb is
	component PIPO4
	port (Rin  : in  STD_LOGIC_VECTOR (3 downto 0);
			CLK, preset, clear: in  STD_LOGIC;
			Rout : out  STD_LOGIC_VECTOR (3 downto 0));
   end component;
   
	signal Rin: std_logic_vector(3 downto 0);
	signal CLK,Preset,Clear : std_logic := '1';
   signal Rout: std_logic_vector(3 downto 0);
	
	begin
	mapping: PIPO4 port map(Rin,CLK,Preset,Clear,Rout);
	
	process
	begin
      Rin(3) <= '0'; wait for 16 ps;
      Rin(3) <= '1'; wait for 16 ps;
   end process;
	
	process
	begin
      Rin(2) <= '0'; wait for 8 ps;
      Rin(2) <= '1'; wait for 8 ps;
   end process;
	
	process
	begin
      Rin(1) <= '0'; wait for 4 ps;
      Rin(1) <= '1'; wait for 4 ps;
   end process;
	
	process
	begin
      Rin(0) <= '0'; wait for 2 ps;
      Rin(0) <= '1'; wait for 2 ps;
   end process;
	
	process
	begin
		CLK <= '0'; wait for 1 ps;
		CLK <= '1'; wait for 1 ps;
	end process;
	
end tb;

configuration cfg_tb of PIPO4_tb is
   for tb
   end for;
end cfg_tb;