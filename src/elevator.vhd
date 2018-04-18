-- AUTHOR: FELIPE RAMOS
-- ELEVATOR CONTROLLER FOR A 9 FLOOR BUILDING
-- 04/17/2018

ENTITY elevator IS 

	PORT(
		a: 		IN BIT_VECTOR(9 downto 0);
		fl: 	IN BIT_VECTOR(3 downto 0);
		s1: 	OUT BIT_VECTOR(6 downto 0);
		s2: 	OUT BIT_VECTOR(6 downto 0)
	);
	END elevator;

ARCHITECTURE structural OF elevator IS 
	-- COMPONENTS AREA
	-- coder component
	COMPONENT coder IS
		PORT(
			a: IN BIT_VECTOR(9 downto 0);
			s: OUT BIT_VECTOR(3 downto 0)
		);
	END COMPONENT;

	-- 4 bits comparator component
	COMPONENT four_bitcomparator IS 
		PORT(
			a, b: 	IN BIT_VECTOR(3 downto 0);
			s: 		OUT BIT_VECTOR(2 downto 0)
		);
	END COMPONENT;

	-- Display 7 seg component
	COMPONENT display IS
		PORT(
			a: 		IN BIT_VECTOR(3 downto 0);
			s: 		OUT BIT_VECTOR(6 downto 0)
		);
	END COMPONENT;

	-- Swap function component
	COMPONENT swap IS
		PORT(
			a, b: 	IN BIT_VECTOR(3 downto 0);
			sel: 	IN BIT;
			s0, s1: OUT BIT_VECTOR(3 downto 0)
		);
	END COMPONENT;

	-- Substrator component
	COMPONENT subtrator4bits IS
		PORT(
			a, b: 	IN BIT_VECTOR(3 downto 0);
			s: 		OUT BIT_VECTOR(3 downto 0)
		);
	END COMPONENT;
	-- END OF COMPONENTS AREA

	-- Mostly debugging signals
	SIGNAL ic: 				BIT_VECTOR (8 downto 0);
	SIGNAL cd: 				BIT_VECTOR (3 downto 0);
	SIGNAL do: 				BIT_VECTOR (6 downto 0);
	SIGNAL cdes: 			BIT_VECTOR (3 downto 0);
	SIGNAL ea: 				BIT_VECTOR (3 downto 0);
	SIGNAL ea_sub, eb_sub: 	BIT_VECTOR (3 downto 0);
	SIGNAL cmp: 			BIT_VECTOR (2 downto 0);
	SIGNAL swap0: 		BIT_VECTOR (3 downto 0);
	SIGNAL swap1: 		BIT_VECTOR(3 downto 0);
	SIGNAL sub: 			BIT_VECTOR (3 downto 0);
	SIGNAL sub_display: 	BIT_VECTOR (6 downto 0);


BEGIN

	u1: coder 					PORT MAP ( a, cd );
	u2: display 				PORT MAP ( cd, s2 );
	u3: four_bitcomparator 	PORT MAP ( ea_sub, eb_sub, cmp );
	u4: swap 					PORT MAP ( ea_sub, eb_sub, cmp(0), swap0, swap1 );
	u5: subtrator4bits 			PORT MAP ( swap0, swap1, sub );
	u6: display 				PORT MAP ( sub, sub_display );

END structural;

