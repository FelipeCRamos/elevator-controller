ENTITY display IS 

	PORT(
		a: 	IN BIT_VECTOR(3 downto 0);
		s: 	OUT BIT_VECTOR(6 downto 0)
	);
	END display;

ARCHITECTURE structural OF display IS

BEGIN

	s(0) <= a(2) OR a(0) OR (NOT a(1) AND NOT a(3)) OR (a(1) AND a(3));
	s(1) <= NOT a(1) OR (NOT a(2) AND NOT a(3)) OR (a(2) AND a(3));
	s(2) <= NOT a(2) OR a(3) OR a(1);
	s(3) <= a(0) OR (NOT a(1) AND NOT a(3)) OR (NOT a(1) AND a(2)) OR (a(2) AND NOT a(3)) OR (a(1) AND NOT a(2) AND a(3));
	s(4) <= (NOT a(1) AND NOT a(3)) OR (a(2) AND NOT a(3));
	s(5) <= a(0) OR (NOT a(2) AND NOT a(3)) OR (a(1) AND NOT a(2)) OR (a(1) AND NOT a(3));
	s(6) <= a(0) OR (NOT a(1) AND a(2)) OR (a(2) AND NOT a(3)) OR (a(1) AND NOT a(2));

END structural;
