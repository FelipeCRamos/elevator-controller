entity subtractor is
	port (
		a, b: in bit;
		s, cout: out bit
	);
end subtractor;

architecture subtract of subtractor is
begin
	s <= (a xor b);
	cout <= (not a and b);
end subtract;
