library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.ALL;
library work;
use work.Gates.all;

entity Registo is 
 port(A: in std_logic_vector(31 downto 0); clock,reset:in std_logic; Q:out std_logic_vector(31 downto 0));
end entity Registo;

architecture bi of Registo is
begin
one: dff_reset port map(D => A(0), clock => clock, reset => reset, Q => Q(0));
two: dff_reset port map(D => A(1), clock => clock, reset => reset, Q => Q(1));
three: dff_reset port map(D => A(2), clock => clock, reset => reset, Q => Q(2));
four: dff_reset port map(D => A(3), clock => clock, reset => reset, Q => Q(3));
five: dff_reset port map(D => A(4), clock => clock, reset => reset, Q => Q(4));
six: dff_reset port map(D => A(5), clock => clock, reset => reset, Q => Q(5));
seven: dff_reset port map(D => A(6), clock => clock, reset => reset, Q => Q(6));
eight: dff_reset port map(D => A(7), clock => clock, reset => reset, Q => Q(7));
nine: dff_reset port map(D => A(8), clock => clock, reset => reset, Q => Q(8));
ten: dff_reset port map(D => A(9), clock => clock, reset => reset, Q => Q(9));
eleven: dff_reset port map(D => A(10), clock => clock, reset => reset, Q => Q(10));
twelve: dff_reset port map(D => A(11), clock => clock, reset => reset, Q => Q(11));
thirteen: dff_reset port map(D => A(12), clock => clock, reset => reset, Q => Q(12));
fourteen: dff_reset port map(D => A(13), clock => clock, reset => reset, Q => Q(13));
fifteen: dff_reset port map(D => A(14), clock => clock, reset => reset, Q => Q(14));
sixteen: dff_reset port map(D => A(15), clock => clock, reset => reset, Q => Q(15));
seventeen: dff_reset port map(D => A(16), clock => clock, reset => reset, Q => Q(16));
eighteen: dff_reset port map(D => A(17), clock => clock, reset => reset, Q => Q(17));
nineteen: dff_reset port map(D => A(18), clock => clock, reset => reset, Q => Q(18));
twenty: dff_reset port map(D => A(19), clock => clock, reset => reset, Q => Q(19));
twenty_one: dff_reset port map(D => A(20), clock => clock, reset => reset, Q => Q(20));
twenty_two: dff_reset port map(D => A(21), clock => clock, reset => reset, Q => Q(21));
twenty_three: dff_reset port map(D => A(22), clock => clock, reset => reset, Q => Q(22));
twenty_four: dff_reset port map(D => A(23), clock => clock, reset => reset, Q => Q(23));
twenty_five: dff_reset port map(D => A(24), clock => clock, reset => reset, Q => Q(24));
twenty_six: dff_reset port map(D => A(25), clock => clock, reset => reset, Q => Q(25));
twenty_seven: dff_reset port map(D => A(26), clock => clock, reset => reset, Q => Q(26));
twenty_eight: dff_reset port map(D => A(27), clock => clock, reset => reset, Q => Q(27));
twenty_nine: dff_reset port map(D => A(28), clock => clock, reset => reset, Q => Q(28));
thirty: dff_reset port map(D => A(29), clock => clock, reset => reset, Q => Q(29));
thirty_one: dff_reset port map(D => A(30), clock => clock, reset => reset, Q => Q(30));
thirty_two: dff_reset port map(D => A(31), clock => clock, reset => reset, Q => Q(31));

end bi;