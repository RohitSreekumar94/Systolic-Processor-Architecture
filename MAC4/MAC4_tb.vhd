LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY MAC4_tb IS
END MAC4_tb;
 
architecture tb OF MAC4_tb IS 
	
	component MAC4
		port(A,B : in  std_logic_vector(3 downto 0); Z : out  std_logic_vector(7 downto 0));
   end component;
   
	signal A : std_logic_vector(3 downto 0);-- := (others => '0');
   signal B : std_logic_vector(3 downto 0);-- := (others => '0');
	signal Z : std_logic_vector(7 downto 0);
--	signal Ai,Bi: integer;
	
	begin
   mapping: MAC4 port map(A, B, Z);
	process
   begin
      A(3) <= '0'; wait for 128 ns;
      A(3) <= '1'; wait for 128 ns;
   end process;
	process
	begin
      A(2) <= '0'; wait for 64 ns;
      A(2) <= '1'; wait for 64 ns;
   end process;
	process
	begin
      A(1) <= '0'; wait for 32 ns;
      A(1) <= '1'; wait for 32 ns;
   end process;
	process
	begin
      A(0) <= '0'; wait for 16 ns;
      A(0) <= '1'; wait for 16 ns;
   end process;
	process
	begin
      B(3) <= '0'; wait for 8 ns;
      B(3) <= '1'; wait for 8 ns;
   end process;
	process
	begin
      B(2) <= '0'; wait for 4 ns;
      B(2) <= '1'; wait for 4 ns;
   end process;
	process
	begin
      B(1) <= '0'; wait for 2 ns;
      B(1) <= '1'; wait for 2 ns;
   end process;
	process
	begin
      B(0) <= '0'; wait for 1 ns;
      B(0) <= '1'; wait for 1 ns;
   end process;
 

end tb;

configuration cfg_tb of MAC4_tb is
   for tb
   end for;
end cfg_tb;