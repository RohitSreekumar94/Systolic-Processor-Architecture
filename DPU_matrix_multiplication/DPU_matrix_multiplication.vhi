
-- VHDL Instantiation Created from source file DPU_matrix_multiplication.vhd -- 00:06:19 02/22/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DPU_matrix_multiplication
	PORT(
		Ain : IN std_logic_vector(3 downto 0);
		Bin : IN std_logic_vector(3 downto 0);
		CLK : IN std_logic;          
		Aout : OUT std_logic_vector(3 downto 0);
		Bout : OUT std_logic_vector(3 downto 0);
		Result : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_DPU_matrix_multiplication: DPU_matrix_multiplication PORT MAP(
		Ain => ,
		Bin => ,
		CLK => ,
		Aout => ,
		Bout => ,
		Result => 
	);


