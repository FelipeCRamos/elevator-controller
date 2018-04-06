entity subtractor is
	port (
		a, b: in bit;
		s, o: out bit
	);
end subtractor;

architecture structure of subtractor is
begin

	s <= (a xor b);
	o <= (not a and b);

end structure;
