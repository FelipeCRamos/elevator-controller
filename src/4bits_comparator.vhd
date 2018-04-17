ENTITY 4bits_comparator IS
	PORT (
		a, b: in BIT_VECTOR(3 downto 0);
		s: OUT BIT_VECTOR(2 downto 0)
		 );
	 END 4bits_comparator;

ARCHITECTURE structural OF 4bits_comparator IS
	COMPONENT comparator IS
		PORT (
			a, b: IN BIT;
			s: OUT BIT_VECTOR(2 downto 0)
			 );
	END COMPONENT;

	COMPONENT input_comparator IS
		PORT (
			a: IN BIT;
			b: IN BIT;
			input: IN BIT_VECTOR(2 downto 0);
			s: OUT BIT_VECTOR(2 downto 0)
			 );
	END COMPONENT;
	
	SIGNAL sig1, sig2, sig3, sigh: BIT_VECTOR(2 downto 0);

BEGIN
	u0: comparator PORT MAP ( a(3), b(3), sigh );
	u1: input_comparator PORT MAP( a(2), b(2), sigh, sig1 );
	u2: input_comparator PORT MAP( a(1), b(1), sig1, sig2 );
	u3: input_comparator PORT MAP( a(0), b(0), sig2, sig3 );
	
	s(0) <= sig3(0);
	s(1) <= sig3(1);
	s(2) <= sig3(2);
END structural;
