library ieee;
use ieee.std_logic_1164.all;

entity ha_tb is
end ha_tb;

architecture ha_test of ha_tb is
	component ha
		port(
			a: 	in 		std_ulogic;
			b: 	in 		std_ulogic;
			s: 	out 	std_ulogic;
			co: out 	std_ulogic
		);
	end component;
	
	signal a, b, s, co : std_ulogic;
begin
	half_adder: ha port map(a => a, b => b, s => s, co => co);
	
	process
	begin
		a <= 'X';
		b <= 'X';
		wait for 1 ns;
		
		a <= '0';
		b <= '0';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		wait for 1 ns;
		
		a <= '0';
		b <= '1';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		wait for 1 ns;
		
		assert false report "Reached end of test !";
		wait;
					
	end process;
	
end ha_test;

