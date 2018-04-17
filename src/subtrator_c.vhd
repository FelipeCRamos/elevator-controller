ENTITY subtrator_c IS
	PORT(
		a, b, cin: IN BIT;
		s, cout: OUT BIT
		);
END subtrator_c;

ARCHITECTURE structural OF subtrator_c IS
BEGIN
	s <= (a XOR b) xor cin;
	cout <= (NOT a AND b) or (NOT a AND cin) or (b AND cin);
END structural;
