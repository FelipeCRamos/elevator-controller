ENTITY subtrator IS
	PORT(
		a, b: IN BIT;
		s, cout: OUT BIT
		);
END subtrator;

ARCHITECTURE structural OF subtrator IS
BEGIN
	s <= (a XOR b);
	cout <= (NOT a and B);
END structural;
