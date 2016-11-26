library ieee;
use ieee.std_logic_1164.all;

entity FAM_tb is
end FAM_tb;

architecture tb of FAM_tb is

   component FAM is
      port( X, Y, B, Cin : in std_logic;
            Sout, Cout : out std_logic);
   end component;

   signal X, Y, B, Cin, Sout, Cout : std_logic;

begin
   mapping: FAM port map(X, Y, B, Cin, Sout, Cout);

   --concurrent processes
   process
   begin
      X <= '0'; wait for 40 ns;
      X <= '1'; wait for 40 ns;
   end process;
	process
   begin
      Y <= '0'; wait for 20 ns;
      Y <= '1'; wait for 20 ns;
   end process;
	process
   begin
      B <= '0'; wait for 10 ns;
      B <= '1'; wait for 10 ns;
   end process;
   process
   begin
      Cin <= '0'; wait for 5 ns;
      Cin <= '1'; wait for 5 ns;
   end process;
   
end tb;
-------------------------------------------------------------
configuration cfg_tb of FAM_tb is
   for tb
   end for;
end cfg_tb;
----------------------------------------------------------END
----------------------------------------------------------END