library ieee;
use ieee.std_logic_1164.all;
 
entity PIPO10_tb is
end PIPO10_tb;
 

architecture tb of PIPO10_tb is
	component PIPO10
		port ( Rin  : in  STD_LOGIC_VECTOR (9 downto 0);
				 CLK, Preset, Clear: in  STD_LOGIC;
				 Rout : out  STD_LOGIC_VECTOR (9 downto 0));
   end component;
   
   signal Rin: std_logic_vector(9 downto 0);
	signal CLK,Preset,Clear : std_logic := '1';
   signal Rout: std_logic_vector(9 downto 0);
--	constant CLK_period : time := 5 ns;
	
	begin
--	preset<='1';
--	clear<='1';
	mapping: PIPO10 port map(Rin,CLK,Preset,Clear,Rout);
	
	
--	process
--   begin
--		CLK <= '0';
--		wait for CLK_period/2;
--		CLK <= '1';
--		wait for CLK_period/2;
--   end process;
	
	process
	begin
      Rin(9) <= '0'; wait for 1024 ps;
      Rin(9) <= '1'; wait for 1024 ps;
   end process;
	
	process
	begin
      Rin(8) <= '0'; wait for 512 ps;
      Rin(8) <= '1'; wait for 512 ps;
   end process;
	
	process
	begin
      Rin(7) <= '0'; wait for 256 ps;
      Rin(7) <= '1'; wait for 256 ps;
   end process;
	
	process
	begin
      Rin(6) <= '0'; wait for 128 ps;
      Rin(6) <= '1'; wait for 128 ps;
   end process;
	
	process
	begin
      Rin(5) <= '0'; wait for 64 ps;
      Rin(5) <= '1'; wait for 64 ps;
   end process;
	
	process
	begin
      Rin(4) <= '0'; wait for 32 ps;
      Rin(4) <= '1'; wait for 32 ps;
   end process;
	
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
-------------------------------------------------------------
configuration cfg_tb of PIPO10_tb is
   for tb
   end for;
end cfg_tb;