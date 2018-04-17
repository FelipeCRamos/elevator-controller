ENTITY comparator IS
	PORT (
		a, b: IN BIT;
		s: OUT BIT_VECTOR(2 downto 0)
		 );
	END comparator;

ARCHITECTURE structural OF comparator IS
BEGIN
	s(0) <= ((a AND b) or (NOT a AND NOT b));
	s(1) <= (a AND NOT b);
	s(2) <= (NOT a AND b);
END structural;
