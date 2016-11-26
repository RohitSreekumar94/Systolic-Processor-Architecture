library ieee;
use ieee.std_logic_1164.all;
 
entity FA10_tb is
end FA10_tb;
 
architecture tb of FA10_tb is
 
    component FA10
    port(
         A : in  std_logic_vector(9 downto 0);
         B : in  std_logic_vector(9 downto 0);
         Sout : out  std_logic_vector(9 downto 0);
         Cout : out  std_logic
        );
    end component;
    
   signal A : std_logic_vector(9 downto 0);
   signal B : std_logic_vector(9 downto 0);
   signal Sout : std_logic_vector(9 downto 0);
   signal Cout : std_logic;
	
	begin
	mapping: FA10 port map(A,B,Sout,Cout);
--	A(0)<='0';
--	A(1)<='0';
--	A(2)<='0';
--	A(3)<='0';
--	A(4)<='0';
--	A(5)<='0';
--	A(6)<='0';
--	A(7)<='0';
--	A(8)<='0';
--	A(9)<='0';
--	B(0)<='0';
--	B(1)<='0';
--	B(2)<='0';
--	B(3)<='0';
--	B(4)<='0';
--	B(5)<='0';
--	B(6)<='0';
--	B(7)<='0';
--	B(8)<='0';
--	B(9)<='0';
	
	process
	begin
	 A(0)<='0';	wait for 1 ns;
	 A(0)<='1';	wait for 1 ns;
	end process;
	
	process
	begin
	 A(1)<='0';	wait for 2 ns;
	 A(1)<='1';	wait for 2 ns;
	end process;
	
	process
	begin
	 A(2)<='0';	wait for 4 ns;
	 A(2)<='1';	wait for 4 ns;
	end process;
	
	process
	begin
	 A(3)<='0';	wait for 8 ns;
	 A(3)<='1';	wait for 8 ns;
	end process;
	
	process
	begin
	 A(4)<='0';	wait for 16 ns;
	 A(4)<='1';	wait for 16 ns;
	end process;
	
	process
	begin
	 A(5)<='0';	wait for 32 ns;
	 A(5)<='1';	wait for 32 ns;
	end process;
	
	process
	begin
	 A(6)<='0';	wait for 64 ns;
	 A(6)<='1';	wait for 64 ns;
	end process;
	
	process
	begin
	 A(7)<='0';	wait for 128 ns;
	 A(7)<='1';	wait for 128 ns;
	end process;
	
	process
	begin
	 A(8)<='0';	wait for 256 ns;
	 A(8)<='1';	wait for 256 ns;
	end process;
	
	process
	begin
	 A(9)<='0';	wait for 512 ns;
	 A(9)<='1';	wait for 512 ns;
	end process;
	
	process
	begin
	 B(0)<='0';	wait for 1024 ns;
	 B(0)<='1';	wait for 1024 ns;
	end process;
	
	process
	begin
	 B(1)<='0';	wait for 2048 ns;
	 B(1)<='1';	wait for 2048 ns;
	end process;
	
	process
	begin
	 B(2)<='0';	wait for 4096 ns;
	 B(2)<='1';	wait for 4096 ns;
	end process;
	
	process
	begin
	 B(3)<='0';	wait for 8192 ns;
	 B(3)<='1';	wait for 8192 ns;
	end process;
	
	process
	begin
	 B(4)<='0';	wait for 16384 ns;
	 B(4)<='1';	wait for 16384 ns;
	end process;
	
	process
	begin
	 B(5)<='0';	wait for 32768 ns;
	 B(5)<='1';	wait for 32768 ns;
	end process;
	
	process
	begin
	 B(6)<='0';	wait for 65536 ns;
	 B(6)<='1';	wait for 65536 ns;
	end process;
	
	process
	begin
	 B(7)<='0';	wait for 131072 ns;
	 B(7)<='1';	wait for 131072 ns;
	end process;
	
	process
	begin
	 B(8)<='0';	wait for 262144 ns;
	 B(8)<='1';	wait for 262144 ns;
	end process;
	
	process
	begin
	 B(9)<='0';	wait for 524288 ns;
	 B(9)<='1';	wait for 524288 ns;
	end process;

end tb;

configuration cfg_tb of FA10_tb is
   for tb
   end for;
end cfg_tb;