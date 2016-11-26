library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PIPO10 is
    Port ( Rin: in  STD_LOGIC_VECTOR (9 downto 0); 
			  CLK,Preset,Clear: in STD_LOGIC; 
           Rout : out  STD_LOGIC_VECTOR (9 downto 0));
end PIPO10;


architecture PIPO10_arch of PIPO10 is

component DFF_PC
	port(D,CLK,Preset,Clear: in STD_LOGIC; Q,Qnot: out STD_LOGIC);
end component;

begin
DFF0: DFF_PC port map(Rin(0),CLK,Preset,Clear,Rout(0),open);
DFF1: DFF_PC port map(Rin(1),CLK,Preset,Clear,Rout(1),open);
DFF2: DFF_PC port map(Rin(2),CLK,Preset,Clear,Rout(2),open);
DFF3: DFF_PC port map(Rin(3),CLK,Preset,Clear,Rout(3),open);
DFF4: DFF_PC port map(Rin(4),CLK,Preset,Clear,Rout(4),open);
DFF5: DFF_PC port map(Rin(5),CLK,Preset,Clear,Rout(5),open);
DFF6: DFF_PC port map(Rin(6),CLK,Preset,Clear,Rout(6),open);
DFF7: DFF_PC port map(Rin(7),CLK,Preset,Clear,Rout(7),open);
DFF8: DFF_PC port map(Rin(8),CLK,Preset,Clear,Rout(8),open);
DFF9: DFF_PC port map(Rin(9),CLK,Preset,Clear,Rout(9),open);
	
end PIPO10_arch;

