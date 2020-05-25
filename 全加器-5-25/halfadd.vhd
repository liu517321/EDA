LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY halfadd IS   
   PORT(           
        a  : IN  STD_LOGIC;
        b  : IN  STD_LOGIC;
        s : OUT STD_LOGIC;
        co : OUT STD_LOGIC
        );
END ENTITY halfadd;
ARCHITECTURE fh1 OF halfadd IS  
   BEGIN
      s <= NOT(a XOR (NOT b));
      co <= a AND b;
END ARCHITECTURE fh1;
