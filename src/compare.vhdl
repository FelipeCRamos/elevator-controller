entity comparator is
	port(
		a, b: in bit;
		s: out bit_vector(2 downto 0)
	);
end comparator;

architecture structural of comparator is
begin
	s(0) <= (a and b) or (not a and not b); -- then, it's the same
	s(1) <= (a and not b);
	s(2) <= (not a and b);
end structural;
