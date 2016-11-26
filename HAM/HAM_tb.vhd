
library ieee;
use ieee.std_logic_1164.all;

entity HAM_tb is
end HAM_tb;

architecture tb of HAM_tb is

   component HAM is
      port( X, Y , B : in std_logic;
            Sout, Cout : out std_logic);
   end component;

   signal X, Y , B, Sout, Cout : std_logic;

begin
   mapping: HAM port map(X, Y, B, Sout, Cout);
   process
   begin
   X <= '0';
	Y <= '0';
	B <= '0';
   wait for 5 ns;
   X <= '0';
	Y <= '0';
	B <= '0';
   wait for 5 ns;
	X <= '0';
	Y <= '0';
	B <= '1';
   wait for 5 ns;
	X <= '0';
	Y <= '0';
	B <= '1';
   wait for 5 ns;
	X <= '0';
	Y <= '1';
	B <= '0';
   wait for 5 ns;
	X <= '0';
	Y <= '1';
	B <= '0';
   wait for 5 ns;
	X <= '0';
	Y <= '1';
	B <= '1';
   wait for 5 ns;
	X <= '0';
	Y <= '1';
	B <= '1';
   wait for 5 ns;
	X <= '1';
	Y <= '0';
	B <= '0';
   wait for 5 ns;
	X <= '1';
	Y <= '0';
	B <= '0';
   wait for 5 ns;
	X <= '1';
	Y <= '0';
	B <= '1';
   wait for 5 ns;
	X <= '1';
	Y <= '0';
	B <= '1';
   wait for 5 ns;
	X <= '1';
	Y <= '1';
	B <= '0';
   wait for 5 ns;
	X <= '1';
	Y <= '1';
	B <= '0';
   wait for 5 ns;
	X <= '1';
	Y <= '1';
	B <= '1';
   wait for 5 ns;
	X <= '1';
	Y <= '1';
	B <= '1';
   wait for 5 ns;
	end process;
end tb;
-------------------------------------------------------------
configuration cfg_tb of HAM_tb is
   for tb
   end for;
end cfg_tb;
----------------------------------------------------------END
----------------------------------------------------------END