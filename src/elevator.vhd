-- AUTHOR: FELIPE RAMOS
-- ELEVATOR CONTROLLER FOR A 9 FLOOR BUILDING
-- 04/17/2018

ENTITY elevator IS 
	PORT(
		a: 	IN BIT_VECTOR(9 downto 0);
		floor: 	IN BIT_VECTOR(3 downto 0);
		s1: OUT BIT_VECTOR(6 downto 0);
		s2: OUT BIT_VECTOR(6 downto 0)
		 );
	END elevator;

ARCHITECTURE structural OF elevator IS 
	-- COMPONENTS AREA
	-- coder component
	COMPONENT coder IS
		PORT (
			a: IN BIT_VECTOR(9 downto 0);
			s: OUT BIT_VECTOR(3 downto 0)
			 );
	END COMPONENT;

	-- 4 bits comparator component
	COMPONENT four_bits_comparator IS 
		PORT(
			a, b: 	IN BIT_VECTOR(3 downto 0);
			s: 		OUT BIT_VECTOR(2 downto 0)
			 );
	END COMPONENT;

	-- Display 7 seg component
	COMPONENT display IS
		PORT (
			a: IN BIT_VECTOR(3 downto 0);
			s: OUT BIT_VECTOR(6 downto 0)
			 );
	END COMPONENT;

	-- Swap function component
	COMPONENT swap IS
		PORT (
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

	SIGNAL ic: BIT_VECTOR (8 downto 0);
	SIGNAL cd: BIT_VECTOR (3 downto 0);
	SIGNAL do: BIT_VECTOR (6 downto 0);
	--Signal coder - destino // entrada - andar atual // comparador - subtrator
	SIGNAL cdes: BIT_VECTOR (3 downto 0);
	SIGNAL ea: BIT_VECTOR (3 downto 0);
	SIGNAL eaSUB, ebSUB: BIT_VECTOR (3 downto 0);
	-- Mesmas entradas usadas no comparador, e a saida do comparador para a
	-- comparaçao de <

	SIGNAL sCOMP : BIT_VECTOR (2 downto 0);
	-- Mesmas entradas usadas no comparador, e a saida do comparador para a
	-- comparaçao de <

	SIGNAL s0TROCADOR : BIT_VECTOR (3 downto 0);
	SIGNAL s1TROCADOR : BIT_VECTOR(3 downto 0);

	SIGNAL sSUB : BIT_VECTOR (3 downto 0);
	-- saida subtrator que será
	-- mostrada no display de 7 segmentos

	SIGNAL sSUB_display: BIT_VECTOR (6 downto 0);


BEGIN
	u1: coder PORT MAP (a, cd);
	u2: display PORT MAP (cd, s2);
	u3: four_bits_comparator PORT MAP( eaSUB, ebSUB, sCOMP );
	u4: swap PORT MAP(eaSUB, ebSUB, sCOMP(0), s0TROCADOR, s1TROCADOR);
	u5: subtrator4bits PORT MAP(s0TROCADOR, s1TROCADOR, sSUB);
	u6: display PORT MAP (sSUB, sSUB_display);
END structural;

