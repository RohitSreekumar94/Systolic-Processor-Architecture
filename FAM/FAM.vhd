----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:33 02/10/2016 
-- Design Name: 
-- Module Name:    FAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FAM is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sout : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FAM;

architecture FAM_arch of FAM is
component HA
	port(A,B: in STD_LOGIC; Sout,Cout: out STD_LOGIC);
end component;

signal A,S1,C1,C2: STD_LOGIC;

begin
A <= X AND Y;
H1: HA port map(A,B,S1,C1);
H2: HA port map(S1,Cin,Sout,C2);
Cout <= C1 OR C2;
end FAM_arch;
