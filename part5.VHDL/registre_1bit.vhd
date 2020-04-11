LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY registre_1bit IS
    PORT ( R           : IN  STD_LOGIC;
           Rin, Clock  : IN  STD_LOGIC;
           Q           : OUT STD_LOGIC);
END registre_1bit;

ARCHITECTURE Behavior OF registre_1bit IS
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