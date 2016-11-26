library ieee;
use ieee.std_logic_1164.all;

entity DPU_array_matrix_multiplication_3 is
    port ( A0 : in  STD_LOGIC_VECTOR (3 downto 0);
           A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           B0 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  CLK: in  STD_LOGIC;
			  clear: in  STD_LOGIC;
--			  preset: in  STD_LOGIC_VECTOR;
           O0 : out  STD_LOGIC_VECTOR (9 downto 0);
           O1 : out  STD_LOGIC_VECTOR (9 downto 0);
           O2 : out  STD_LOGIC_VECTOR (9 downto 0);
           O3 : out  STD_LOGIC_VECTOR (9 downto 0);
           O4 : out  STD_LOGIC_VECTOR (9 downto 0);
           O5 : out  STD_LOGIC_VECTOR (9 downto 0);
           O6 : out  STD_LOGIC_VECTOR (9 downto 0);
           O7 : out  STD_LOGIC_VECTOR (9 downto 0);
           O8 : out  STD_LOGIC_VECTOR (9 downto 0));
end DPU_array_matrix_multiplication_3;


architecture DPU_array_matrix_multiplication_3_arch of DPU_array_matrix_multiplication_3 is
	
	component DPU_matrix_multiplication
		port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
             Bin : in  STD_LOGIC_VECTOR (3 downto 0);
             CLK : in  STD_LOGIC;
				 clear: in STD_LOGIC;
             Aout : out  STD_LOGIC_VECTOR (3 downto 0);
             Bout : out  STD_LOGIC_VECTOR (3 downto 0);
             Result : out  STD_LOGIC_VECTOR (9 downto 0));
		end component;
		
signal S01,S12,S03,S14,S25,S34,S45,S36,S47,S58,S67,S78 : STD_LOGIC_VECTOR (3 downto 0);

begin
DPU0: DPU_matrix_multiplication port map(A0,B0,CLK,clear,S03,S01,O0);
DPU1: DPU_matrix_multiplication port map(A1,S01,CLK,clear,S14,S12,O1);
DPU2: DPU_matrix_multiplication port map(A2,S12,CLK,clear,S25,open,O2);
DPU3: DPU_matrix_multiplication port map(S03,B1,CLK,clear,S36,S34,O3);
DPU4: DPU_matrix_multiplication port map(S14,S34,CLK,clear,S47,S45,O4);
DPU5: DPU_matrix_multiplication port map(S25,S45,CLK,clear,S58,open,O5);
DPU6: DPU_matrix_multiplication port map(S36,B2,CLK,clear,open,S67,O6);
DPU7: DPU_matrix_multiplication port map(S47,S67,CLK,clear,open,S78,O7);
DPU8: DPU_matrix_multiplication port map(S58,S78,CLK,clear,open,open,O8);

end DPU_array_matrix_multiplication_3_arch;

