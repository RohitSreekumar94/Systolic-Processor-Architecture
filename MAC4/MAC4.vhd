library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAC4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (7 downto 0));
end MAC4;


architecture MAC4_arch of MAC4 is
	component HA 
		port(A,B: in STD_LOGIC; Sout, Cout: out STD_LOGIC);
	end component;

	component HAM
		port(X,Y,B: in STD_LOGIC; Sout, Cout: out STD_LOGIC);
	end component;
	
	component FA
		port(A,B,Cin: in STD_LOGIC; Sout, Cout: out STD_LOGIC);
	end component;
	
	component FAM
		port(X,Y,B,Cin: in STD_LOGIC; Sout, Cout: out STD_LOGIC);
	end component;

	signal S0,S1,S2,S3,S4,C1,C2,C3,C4 : STD_LOGIC_VECTOR(3 downto 0);
	begin
		S0(0) <= A(0) AND B(0);
		S0(1) <= A(1) AND B(0);
		S0(2) <= A(2) AND B(0);
		S0(3) <= A(3) AND B(0);
		HAM10: HAM port map(A(0),B(1),S0(1),S1(0),C1(0));
		HAM11: HAM port map(A(1),B(1),S0(2),S1(1),C1(1));
		HAM12: HAM port map(A(2),B(1),S0(3),S1(2),C1(2));
		HAM13: HAM port map(A(3),B(1),'0',S1(3),C1(3));
		FAM20: FAM port map(A(0),B(2),S1(1),C1(0),S2(0),C2(0));
		FAM21: FAM port map(A(1),B(2),S1(2),C1(1),S2(1),C2(1));
		FAM22: FAM port map(A(2),B(2),S1(3),C1(2),S2(2),C2(2));
		HAM23: HAM port map(A(3),B(2),C1(3),S2(3),C2(3));
		FAM30: FAM port map(A(0),B(3),S2(1),C2(0),S3(0),C3(0));
		FAM31: FAM port map(A(1),B(3),S2(2),C2(1),S3(1),C3(1));
		FAM32: FAM port map(A(2),B(3),S2(3),C2(2),S3(2),C3(2));
		HAM33: HAM port map(A(3),B(3),C2(3),S3(3),C3(3));
		HA40: HA port map(S3(1),C3(0),S4(0),C4(0));
		FA41: FA port map(S3(2),C3(1),C4(0),S4(1),C4(1));
		FA42: FA port map(S3(3),C3(2),C4(1),S4(2),C4(2));
		HA44: HA port map(C3(3),C4(2),S4(3),open);
		Z(0)<=S0(0);
		Z(1)<=S1(0);
		Z(2)<=S2(0);
		Z(3)<=S3(0);
		Z(4)<=S4(0);
		Z(5)<=S4(1);
		Z(6)<=S4(2);
		Z(7)<=S4(3);

end MAC4_arch;

