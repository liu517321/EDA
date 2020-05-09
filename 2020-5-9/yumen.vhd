library ieee;
use ieee.std_logic_1164.all;
entity yumen is
	port(a:in std_logic;
			b:in std_logic;
			f:out std_logic);
end yumen;
architecture bav of yumen is
begin
	f<=a and b;
end bav;
