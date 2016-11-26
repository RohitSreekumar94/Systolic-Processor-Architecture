library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PIPO4 is
    Port ( Rin: in  STD_LOGIC_VECTOR (3 downto 0); 
			  CLK,Preset,Clear: in STD_LOGIC; 
           Rout : out  STD_LOGIC_VECTOR (3 downto 0));
end PIPO4;


architecture PIPO4_arch of PIPO4 is
component DFF_PC
	port(D,CLK,Preset,Clear: in STD_LOGIC; Q,Qnot: out STD_LOGIC);
end component;

begin
DFF0: DFF_PC port map(Rin(0),CLK,Preset,Clear,Rout(0),open);
DFF1: DFF_PC port map(Rin(1),CLK,Preset,Clear,Rout(1),open);
DFF2: DFF_PC port map(Rin(2),CLK,Preset,Clear,Rout(2),open);
DFF3: DFF_PC port map(Rin(3),CLK,Preset,Clear,Rout(3),open);
end PIPO4_arch;

