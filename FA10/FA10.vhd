library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA10 is
    Port ( A : in  STD_LOGIC_VECTOR (9 downto 0);
           B : in  STD_LOGIC_VECTOR (9 downto 0);
--			  Cin : in  STD_LOGIC;
           Sout : out  STD_LOGIC_VECTOR (9 downto 0);
           Cout : out  STD_LOGIC);
end FA10;

architecture FA10_arch of FA10 is
	component HA
		port(A,B: in STD_LOGIC; Sout, Cout: out STD_LOGIC);
	end component;

	component FA
		port(A,B,Cin: in STD_LOGIC; Sout, Cout: out STD_LOGIC);
	end component;
	
	signal D: STD_LOGIC_VECTOR (8 downto 0);
	begin
		HA0: HA port map(A(0),B(0),Sout(0),D(0));
--		FA0: FA port map(A(0),B(0),Cin,Sout(0),D(0));
		FA1: FA port map(A(1),B(1),D(0),Sout(1),D(1));
		FA2: FA port map(A(2),B(2),D(1),Sout(2),D(2));
		FA3: FA port map(A(3),B(3),D(2),Sout(3),D(3));
		FA4: FA port map(A(4),B(4),D(3),Sout(4),D(4));
		FA5: FA port map(A(5),B(5),D(4),Sout(5),D(5));
		FA6: FA port map(A(6),B(6),D(5),Sout(6),D(6));
		FA7: FA port map(A(7),B(7),D(6),Sout(7),D(7));
		FA8: FA port map(A(8),B(8),D(7),Sout(8),D(8));
		FA9: FA port map(A(9),B(9),D(8),Sout(9),Cout);
end FA10_arch;

