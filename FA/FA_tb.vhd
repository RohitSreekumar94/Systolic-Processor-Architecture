
library ieee;
use ieee.std_logic_1164.all;

entity FA_tb is
end FA_tb;

architecture tb of FA_tb is

   component FA is
      port( A, B, Cin : in std_logic;
            Sout, Cout : out std_logic);
   end component;

   signal A, B, Cin, Sout, Cout : std_logic;

begin
   mapping: FA port map(A, B, Cin, Sout, Cout);

   --concurrent processes
   process
   begin
      Cin <= '0'; wait for 5 ns;
      Cin <= '1'; wait for 5 ns;
   end process;

   process
   variable errCnt : integer := 0;
   begin

   --TEST 1
   A <= '0';
      B <= '1';
      wait for 10 ns;
      assert(Sout = '0') report "Sout error 1" severity error;
      assert(Cout = '1') report "Cout error 1" severity error;
      if(Sout /= '1' or Cout /= '0') then
         errCnt := errCnt + 1;
      end if;

   --TEST 2
   A <= '1';
     B <= '1';
     wait for 10 ns;
     assert(Sout = '1') report "Sout error 2" severity error;
     assert(Cout = '1') report "Cout error 2" severity error;
     if(Sout /= '0' or Cout /= '1') then
        errCnt := errCnt + 1;
     end if;

   --TEST 3
   A <= '1';
     B <= '0';
     wait for 10 ns;
     assert(Sout = '0') report "Sout error 3" severity error;
     assert(Cout = '1') report "Cout error 3" severity error;
     if(Sout /= '1' or Cout /= '0') then
        errCnt := errCnt + 1;
     end if;

     ---- SoutMARY ----
     if(errCnt = 0) then
        assert false report "Success!" severity note;
     else
        assert false report "Faillure!" severity note;
     end if;

   end process;
end tb;
-------------------------------------------------------------
configuration cfg_tb of FA_tb is
   for tb
   end for;
end cfg_tb;
----------------------------------------------------------END
----------------------------------------------------------END