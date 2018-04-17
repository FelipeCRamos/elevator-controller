-- AUTHOR: FELIPE RAMOS
-- ELEVATOR CONTROLLER FOR A 9 FLOOR BUILDING
-- 04/17/2018
ENTITY elevator IS 
	PORT(
		a: 	IN BIT_VECTOR(8 downto 0);
		floor: 	IN BIT_VECTOR(3 downto 0);
		s1, s2: OUT BIT_VECTOR(6 downto 0)
		 );
	END elevator;

ARCHITECTURE structural OF elevator IS 
	-- COMPONENTS AREA
	COMPONENT coder IS
		PORT (
			a, b, c, d, e, f, g, h, i, j: IN BIT;
			s0, s1, s2, s3: OUT BIT
			 );
	END COMPONENT;

	COMPONENT four_bits_comparator IS 
		PORT(
			a, b: 	IN BIT_VECTOR(3 downto 0);
			s: 		OUT BIT_VECTOR(2 downto 0)
			 );
	END COMPONENT;

	COMPONENT display IS
		PORT (
			a, b, c, d: 				IN BIT;
			s0, s1, s2, s3, s4, s5, s6: OUT BIT
			 );
	END COMPONENT;

	COMPONENT swap IS
		PORT (
			a, b: 	IN BIT_VECTOR(3 downto 0);
			sel: 	IN BIT;
			s0, s1: OUT BIT_VECTOR(3 downto 0)
			 );
	END COMPONENT;
	-- END OF COMPONENTS AREA

	SIGNAL 	ic: BIT_VECTOR(8 downto 0);
	SIGNAL  cd: BIT_VECTOR(6 downto 0);
	SIGNAL  do: BIT_VECTOR(6 downto 0);
	SIGNAL 	cdes: BIT_VECTOR(3 downto 0);
	SIGNAL 	ea: BIT_VECTOR(3 downto 0);
	SIGNAL 	eaSUB: BIT_VECTOR(3 downto 0);
	SIGNAL  ebSUB: BIT_VECTOR(3 downto 0);
	SIGNAL  sCOMP: BIT;
	SIGNAL  swap_s0: BIT_VECTOR(3 downto 0);
	SIGNAL 	swap_s1: BIT_VECTOR(3 downto 0);
	SIGNAL  sSUB:	BIT_VECTOR(3 downto 0);


BEGIN
	-- TODO
END structural;

