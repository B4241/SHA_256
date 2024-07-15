library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;
entity Count3 is 
 port(clock:in std_logic;Y:out std_logic);
end entity Count3;
architecture behav of Count3 is
signal A:std_logic:='0';
begin
dff_reset_proc: process (clock,A)
begin
if(clock'event and (clock='0')) then
Y <= A;
if(A = '0') then
A <= not A;
end if;
end if;
end process dff_reset_proc;
end behav;

