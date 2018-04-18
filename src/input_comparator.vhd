ENTITY input_comparator IS

	PORT (
		a, b: 	IN BIT;
		input: 	IN BIT_VECTOR(2 downto 0);
		s: 		OUT BIT_VECTOR(2 downto 0)
	);
	END input_comparator;

ARCHITECTURE structural of input_comparator IS

BEGIN

	s(0) <= (((a AND b) OR (NOT a AND NOT b)) AND input(0));	-- equality of elements
	s(1) <= ((a AND NOT b) AND input(0)) OR input(1);			-- bigger than
	s(2) <= ((b AND NOT a) and input(0)) OR input(2);			-- less than

END structural;
