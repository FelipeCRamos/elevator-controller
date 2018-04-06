entity coder is
	port (
		a, b, c, d, e, f, g, h, i, j: in bit;
		b0, b1, b2, b3: out bit
	);
end coder;

architecture structural of coder is
begin

	b3 <= b OR d OR f OR h OR j;
	b2 <= c OR d OR g OR h;
	b1 <= e OR f OR g OR h;
	b0 <= i OR j;

end structural; 
