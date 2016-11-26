
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sout : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FA;

architecture FA_arch of FA is
component HA
	port(A,B: in STD_LOGIC; Sout,Cout: out STD_LOGIC);
end component;

signal S1,C1,C2: STD_LOGIC;

begin
H1: HA port map(A,B,S1,C1);
H2: HA port map(S1,Cin,Sout,C2);
Cout <= C1 OR C2;
end FA_arch;