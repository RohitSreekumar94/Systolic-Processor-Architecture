library ieee;
use ieee.std_logic_1164.all;

entity DPU_array_matrix_multiplication_3_tb is
end DPU_array_matrix_multiplication_3_tb;
 
architecture tb OF DPU_array_matrix_multiplication_3_tb is 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component DPU_array_matrix_multiplication_3
    port(
         A0 : IN  std_logic_vector(3 downto 0);
         A1 : IN  std_logic_vector(3 downto 0);
         A2 : IN  std_logic_vector(3 downto 0);
         B0 : IN  std_logic_vector(3 downto 0);
         B1 : IN  std_logic_vector(3 downto 0);
         B2 : IN  std_logic_vector(3 downto 0);
         CLK : IN  std_logic;
			clear: IN std_logic;
         O0 : OUT  std_logic_vector(9 downto 0);
         O1 : OUT  std_logic_vector(9 downto 0);
         O2 : OUT  std_logic_vector(9 downto 0);
         O3 : OUT  std_logic_vector(9 downto 0);
         O4 : OUT  std_logic_vector(9 downto 0);
         O5 : OUT  std_logic_vector(9 downto 0);
         O6 : OUT  std_logic_vector(9 downto 0);
         O7 : OUT  std_logic_vector(9 downto 0);
         O8 : OUT  std_logic_vector(9 downto 0)
        );
    end component;
    

   signal A0 : std_logic_vector(3 downto 0) := (others => '0');
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal A2 : std_logic_vector(3 downto 0) := (others => '0');
   signal B0 : std_logic_vector(3 downto 0) := (others => '0');
   signal B1 : std_logic_vector(3 downto 0) := (others => '0');
   signal B2 : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
	signal clear: std_logic := '0';

   signal O0 : std_logic_vector(9 downto 0);
   signal O1 : std_logic_vector(9 downto 0);
   signal O2 : std_logic_vector(9 downto 0);
   signal O3 : std_logic_vector(9 downto 0);
   signal O4 : std_logic_vector(9 downto 0);
   signal O5 : std_logic_vector(9 downto 0);
   signal O6 : std_logic_vector(9 downto 0);
   signal O7 : std_logic_vector(9 downto 0);
   signal O8 : std_logic_vector(9 downto 0);

 
	begin
   uut: DPU_array_matrix_multiplication_3 port map(A0,A1,A2,B0,B1,B2,CLK,clear,O0,O1,O2,O3,O4,O5,O6,O7,O8);
	
	
	process
	begin
		clear<='0';wait for 1 ps;
		clear<='1';
		wait;
	end process;
		
	process
	begin
		CLK<='1'; wait for 1 ps;
		CLK<='0'; wait for 1 ps;
	end process;
	
	process
	begin
		wait for 2 ps;
		A0<=x"1"; 
		B0<=x"1";
		wait for 2 ps;
		A0<=x"2"; 
		B0<=x"2";
		wait for 2 ps;
		A0<=x"3"; 
		B0<=x"3";
		wait for 2 ps;
		A0<=x"0";
		B0<=x"0";
		wait;
	end process;
		
	process
	begin
		wait for 2 ps;
		A1<=x"0";
		B1<=x"0";
		wait for 2 ps;
		A1<=x"2";
		B1<=x"2";
		wait for 2 ps;
		A1<=x"3";
		B1<=x"3";
		wait for 2 ps;
		A1<=x"1";
		B1<=x"1";
		wait for 2 ps;
		A1<=x"0";
		B1<=x"0";
		wait;
	end process;
		
	process
	begin
		wait for 2 ps;
		A2<=x"0";
		B2<=x"0";
		wait for 4 ps;
		A2<=x"3";
		B2<=x"3";
		wait for 2 ps;
		A2<=x"1";
		B2<=x"1";
		wait for 2 ps;
		A2<=x"2";
		B2<=x"2";
		wait for 2 ps;
		A2<=x"0";
		B2<=x"0";
		wait;
	end process;
end tb;