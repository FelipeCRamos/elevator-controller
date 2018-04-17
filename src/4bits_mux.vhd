ENTITY four_bits_mux IS 
	PORT(
		a, b, c, d: IN BIT;
		sel0, sel1: IN BIT;
		s: OUT BIT
		);
	END four_bits_mux;

ARCHITECTURE structural OF four_bits_mux IS
	COMPONENT mux_2x1 IS
		PORT (
			a, b, sel: IN BIT;
			s: OUT BIT
			 );
	END COMPONENT;

	SIGNAL s0, s1: BIT;
BEGIN
	u0: mux_2x1 PORT MAP( a, b, sel0, s0 );
	u1: mux_2x1 PORT MAP( c, d, sel0, s1 );
	u2: mux_2x1 PORT MAP( s0, s1, sel1, s );
END structural;
