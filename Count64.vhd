library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;
entity Count64 is 
 port(clock:in std_logic;Y:out std_logic_vector(6 downto 0));
end entity Count64;
architecture behav of Count64 is
signal A:std_logic_vector(6 downto 0):="0000000";
begin
dff_reset_proc: process (clock,A)
begin
if(clock'event and (clock='0') and not ((A(6)='1') and (A(5)='0') and (A(4)='0')and (A(3)='0') and (A(2)='0') and (A(1)='0') and (A(0)='1'))) then
A <= A + "0000001";
end if ;
Y <= A;
end process dff_reset_proc;
end behav;

