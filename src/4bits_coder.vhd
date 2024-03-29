ENTITY coder IS

	PORT(
		a:	IN BIT_VECTOR(9 downto 0);
		s: 	OUT BIT_VECTOR(3 downto 0)
	);
	END coder;

ARCHITECTURE structural OF coder IS

BEGIN

	s(0) <= a(8) or a(9);
	s(1) <= a(4) or a(5) or a(6) or a(7);
	s(2) <= a(2) or a(3) or a(6) or a(7);
	s(3) <= a(1) or a(3) or a(5) or a(7) or a(9);

END structural;
