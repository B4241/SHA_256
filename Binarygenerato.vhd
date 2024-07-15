library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use ieee.numeric_std.all;
entity DB is
port(A:in INTEGER;
Y : out std_logic_vector(7 downto 0));
end DB;
architecture bhv of DB is
begin
clock_proc:process(A)
	begin
	Y <= std_logic_vector(to_unsigned((A),8));
	end process;
end bhv;