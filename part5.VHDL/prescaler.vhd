LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY prescaler IS
    PORT (
          clk    : IN  STD_LOGIC;
			 prescale : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          clkout : OUT STD_LOGIC
         );
END prescaler;

ARCHITECTURE rtl OF prescaler IS

SIGNAL s_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s_clkout : STD_LOGIC;

BEGIN

PROCESS (clk)
VARIABLE s_count_check : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

	CASE prescale IS
		WHEN "000" => s_count_check :="00000001";
		WHEN "001" => s_count_check :="00000011";
		WHEN "010" => s_count_check :="00000111";
		WHEN "011" => s_count_check :="00001111";
		WHEN "100" => s_count_check :="00011111";
		WHEN "101" => s_count_check :="00111111";
		WHEN "110" => s_count_check :="01111111";
		WHEN "111" => s_count_check :="11111111";
		WHEN OTHERS => s_count_check :="00000001";
	END CASE;

    IF clk'EVENT AND clk = '1' THEN
         IF s_count <= s_count_check THEN
            s_clkout <= '0';
        ELSE
            s_clkout <= '1';        
        END IF;
		  
        IF s_count  <= (s_count_check+s_count_check) THEN
            s_count <= s_count + 1;
        ELSE
            s_count <= (OTHERS => '0');
        END IF;
		  
		  
    END IF;
END PROCESS;

clkout <= s_clkout;

END;