library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Input_data_controller is
	port(	data_in: in STD_LOGIC_VECTOR(3 downto 0);
			data_ready : in STD_LOGIC);
end Input_data_controller;

architecture Input_data_controller_arch of Input_data_controller is
signal count_in,count_out: STD_LOGIC_VECTOR(3 downto 0);

begin
	process(in_ready)
	if count_in<19 then
		if(in_ready='1')
			PIPO_21x4_data_in <= data_in;
			PIPO_21x4_clock <= '0';
			PIPO_21x4_clock <= '1';
			count_in <= count_in + 1;
		end if;
	end if;
end process;


end Input_data_controller_arch;

