library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HAM is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sout : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end HAM;

architecture HA_arch of HAM is
component HA
	port(A,B: in STD_LOGIC;Sout,Cout: out STD_LOGIC);
end component;
signal A: STD_LOGIC;

begin
A <= X AND Y;
H1: HA port map(A,B,Sout,Cout);
end HA_arch;