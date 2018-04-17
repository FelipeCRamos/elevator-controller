ENTITY subtrator4bits IS
	PORT(
		a, b: IN bit_vector(3 downto 0);
		s: OUT bit_vector(3 downto 0)
		);
END subtrator4bits;

ARCHITECTURE structural OF subtrator4bits IS
	COMPONENT subtrator_c is
		PORT (
			a, b, cin: IN BIT;
			s, cout: OUT BIT
			 );
	END COMPONENT;

	COMPONENT subtrator IS
		PORT (
			a, b: IN BIT;
			s, cout: OUT BIT
			 );
	END COMPONENT;

	SIGNAL c: BIT_VECTOR(3 downto 0);

BEGIN
	i0: subtrator PORT MAP( a(0), b(0), s(0), c(0) );
	i1: subtrator_c PORT MAP( a(1),b(1),c(0),s(1),c(1) );
	i2: subtrator_c PORT MAP( a(2),b(2),c(1),s(2),c(2) );
	i3: subtrator_c PORT MAP( a(3),b(3),c(2),s(3),c(3) );
END structural;
