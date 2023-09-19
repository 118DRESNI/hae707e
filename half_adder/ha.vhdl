library ieee;
use ieee.std_logic_1164.all;

entity ha is
	port(
		a: 	in 		std_ulogic;
		b: 	in 		std_ulogic;
		s: 	out 	std_ulogic;
		co: out 	std_ulogic
	);
end ha;

architecture simple of ha is
begin
	s  <= a XOR b;
	co <= a AND b;
end simple;
