entity display is
	port (
		b1, b2, b3, b4: in bit; -- 4 bit number input
		t1, t2, t3, t4, t5, t6, t7: out bit -- traces[1, 7]
	);
end display;

architecture structural of display is
begin
	t1 <= (not b1 and not b2 and b3 and not b4) or /
		  (not b1 and not b2 and b3 and b4) or /
		  (not b1 and b2 and not b3 and b4) or /
		  (not b1 and b2 and b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and b4);

	t2 <= (not b1 and not b2 and not b3 and b4) or /
		  (not b1 and not b2 and b3 and not b4) or /
		  (not b1 and not b2 and b3 and b4) or /
		  (not b1 and b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and b4);

	t3 <= (not b1 and not b2 and not b3 and b4) or /
		  (not b1 and not b2 and b3 and b4) or /
		  (not b1 and b2 and not b3 and not b4) or /
		  (not b1 and b2 and not b3 and b4) or /
		  (not b1 and b2 and b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and b4);

	t4 <= (not b1 and not b2 and b3 and not b4) or /
		  (not b1 and not b2 and b3 and b4) or /
		  (not b1 and b2 and not b3 and b4) or /
		  (not b1 and b2 and b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and b4);

	t5 <= (not b1 and not b2 and b3 and not b4) or /
		  (not b1 and b2 and b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4);	

	t6 <= (not b1 and b2 and not b3 and not b4) or /
		  (not b1 and b2 and not b3 and b4) or /
		  (not b1 and b2 and b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and b4);

	t7 <= (not b1 and not b2 and b3 and not b4) or /
		  (not b1 and not b2 and b3 and b4) or /
		  (not b1 and b2 and not b3 and not b4) or /
		  (not b1 and b2 and not b3 and b4) or /
		  (not b1 and b2 and b3 and not b4) or /
		  (b1 and not b2 and not b3 and not b4) or /
		  (b1 and not b2 and not b3 and b4);
end structural;
