ENTITY coder IS
	PORT (
		a, b, c, d, e, f, g, h, i, j: IN BIT;	-- KEYBOARD NUMBERS
		s0, s1, s2, s3: OUT BIT 				-- LESS SIGNIFICANT BIT
		 );
	END coder;

ARCHITECTURE structural OF coder IS
BEGIN
	s0 <= j OR i;
	s1 <= e OR g OR f OR h;
	s2 <= c OR d OR g OR h;
	s3 <= b OR d OR f OR h OR j;
END structural;
