library ieee;
use ieee.std_logic_1164.all;

entity exo1 is
	port(
		A 	: 	in 	STD_ULOGIC;
		B 	: 	in 	STD_ULOGIC;
		COM : 	in 	STD_ULOGIC;
		S 	: 	OUT STD_ULOGIC
	);
end exo1;

architecture mux of exo1 is
begin
	with COM select S <=
			A when '0',
            B when others;
end mux;
