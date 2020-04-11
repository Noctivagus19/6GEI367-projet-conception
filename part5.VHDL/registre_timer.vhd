LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY registre_timer IS
    GENERIC ( n : INTEGER := 16);
    PORT ( R           : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
           Rin, Clock  : IN  STD_LOGIC;
           Q           : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END registre_timer;


ARCHITECTURE Behavior OF registre_timer IS
BEGIN
    PROCESS (Clock)
    BEGIN
        IF Clock'EVENT AND Clock = '1' THEN
            IF Rin = '1' THEN
                Q <= R;
            END IF;
        END IF;
    END PROCESS;
END Behavior;