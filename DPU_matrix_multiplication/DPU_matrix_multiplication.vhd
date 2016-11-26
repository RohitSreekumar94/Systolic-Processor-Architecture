library ieee;
use ieee.std_logic_1164.all;

entity DPU_matrix_multiplication is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
			  clear: in STD_LOGIC;
           Aout : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC_VECTOR (9 downto 0));
end DPU_matrix_multiplication;

architecture DPU_matrix_multiplication_arch of DPU_matrix_multiplication is

	component PIPO4
		port( Rin: in  STD_LOGIC_VECTOR (3 downto 0); 
			  CLK,Preset,Clear: in STD_LOGIC; 
           Rout : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
			
	component MAC4
		port( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component FA10
		port( A : in  STD_LOGIC_VECTOR (9 downto 0);
           B : in  STD_LOGIC_VECTOR (9 downto 0);
           Sout : out  STD_LOGIC_VECTOR (9 downto 0);
           Cout : out  STD_LOGIC);
	end component;
		
	component PIPO10
		port( Rin: in  STD_LOGIC_VECTOR (9 downto 0); 
			  CLK,Preset,Clear: in STD_LOGIC; 
           Rout : out  STD_LOGIC_VECTOR (9 downto 0));
		end component;
		
	signal S1,S2: STD_LOGIC_VECTOR (3 downto 0);
	signal S3: STD_LOGIC_VECTOR (7 downto 0);
	signal S4,S5,S6: STD_LOGIC_VECTOR (9 downto 0);
	
	begin
	R0: PIPO4 port map(Ain,CLK,'1',clear,S1);
	R1: PIPO4 port map(Bin,CLK,'1',clear,S2);
	MAC: MAC4 port map(S1,S2,S3);
	
	S4(0)<=S3(0);
	S4(1)<=S3(1);
	S4(2)<=S3(2);
	S4(3)<=S3(3);
	S4(4)<=S3(4);
	S4(5)<=S3(5);
	S4(6)<=S3(6);
	S4(7)<=S3(7);
	S4(8)<='0';
	S4(9)<='0';
	
	FA: FA10 port map(S4,S5,S6,open);
	R2: PIPO10 port map(S6,CLK,'1',clear,S5);
	Aout <= S1;
	Bout <= S2;
	Result <= S5;
	
end DPU_matrix_multiplication_arch;

