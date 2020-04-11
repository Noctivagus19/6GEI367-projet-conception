LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 


ENTITY timer IS
 PORT (
 clk: IN STD_LOGIC;
 timer_on : IN STD_LOGIC;
 selecteur8_16: IN STD_LOGIC; 
 sortie: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
 );
END timer; 


ARCHITECTURE rtl OF timer IS
SIGNAL s_count : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL s_count_check : STD_LOGIC_VECTOR(15 DOWNTO 0);
--SIGNAL init_timer: STD_LOGIC;

BEGIN
	PROCESS (clk)

	BEGIN
	
	--Compteur 8 et 16 bits
	
	CASE selecteur8_16 IS
		WHEN '0' => s_count_check <="1111111111111111"; --compteur 16 bits
		WHEN '1' => s_count_check <="0000000011111111"; --compteur 8 bits
		WHEN OTHERS => s_count_check <="1111111111111111";
	END CASE;
	
	
	
		IF clk'EVENT AND clk = '1' AND timer_on = '1' THEN
		
				IF s_count < s_count_check THEN
					sortie <= "0000000000000000";
				ELSE
					sortie <= "0000000000000001";
				END IF;
				
				IF s_count  < (s_count_check + s_count_check) THEN 
            s_count <= s_count + 1;
				ELSE
            s_count <= (OTHERS => '0');
				END IF;
				
		END IF;
	END PROCESS;
END; 