ENTITY swap IS 

	PORT(
		a, b: 	IN BIT_VECTOR(3 downto 0);
		sel: 	IN BIT;
		s0: 	OUT BIT_VECTOR(3 downto 0);
		s1: 	OUT BIT_VECTOR(3 downto 0)
	);
	END swap;

ARCHITECTURE behavior of swap IS

BEGIN

	PROCESS(a, b, sel)

	BEGIN
		IF( sel = '0' ) THEN
			s0 <= a;
			s1 <= b;
		ELSE
			s0 <= b;
			s1 <= a;
		END IF;
	END PROCESS;

END behavior;
