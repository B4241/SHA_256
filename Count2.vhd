library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;
entity Count2 is 
 port(clock:in std_logic;Y:out std_logic_vector(4 downto 0));
end entity Count2;
architecture behav of Count2 is
signal A:std_logic_vector(4 downto 0):="00000";
begin
dff_reset_proc: process (clock,A)
begin
if(clock'event and (clock='0') and ((A(4)='0')or(A(3)='0'))) then
A <= A + "00001";
end if ;
Y <= A;
end process dff_reset_proc;
end behav;

