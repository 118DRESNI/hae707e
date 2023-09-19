library ieee;
use ieee.std_logic_1164.all;

entity exo1_tb is
end exo1_tb;

architecture Behavioral of exo1_tb is
-- Component Declaration
	component exo1a
		port(
			A 	: 	in  STD_ULOGIC;
			B 	: 	in  STD_ULOGIC;
			COM : 	in  STD_ULOGIC;
			S 	: 	OUT STD_ULOGIC
		);
	end component;
	signal A, B, COM, S : STD_ULOGIC;
	begin
	-- Component Instantiation
	mux: exo1a port map(A => A, B => B, COM => COM, S => S);
	
	process
	begin
		A <= 'X';
		B <= 'X';
		COM <= 'X';
		wait for 1 ns;
		
		A <= '0';
		B <= '0';
		COM <= '0';
		wait for 1 ns;
		A <= '1';
		B <= '0';
		COM <= '0';
		wait for 1 ns;
		A <= '0';
		B <= '1';
		COM <= '1';
		wait for 1 ns;
		A <= '1';
		B <= '1';
		COM <= '1';
		wait for 1 ns;
		
		assert false report "Reached end of test !";
		wait;
	end process;
end Behavioral;

