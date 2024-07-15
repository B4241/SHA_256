library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity PE83  is
  port (A :in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(3 downto 0));
end entity PE83;
architecture Struct of PE83 is
  signal Y1l, Y2l, t1, t2, t3, t3b, u1, u2, oz, oo, s1, s2, s3, s4 : std_logic;
begin


PE42one: encoder422 port map (A => A(7), B => A(6), C => A(5), D => A(4), Y1 => t1, Y2 => t2, Y => oo); 
PE42two: encoder422 port map (A => A(3), B => A(2), C => A(1), D => A(0), Y1 => u1, Y2 => u2, Y => oz); 
or1: OR_2 port map (A => A(7), B => A(6), Y => Y1l);
or2: OR_2 port map (A => A(2), B => A(3), Y => Y2l);
or3: OR_2 port map (A => Y1l, B => Y2l, Y => t3);

not1: INVERTER port map (A => t3, Y => t3b);

and1: AND_2 port map (A => t3, B => t2, Y => s2);
and2: AND_2 port map (A => t3, B => t1, Y => s1);
and3: AND_2 port map (A => t3b, B => u2, Y => s4);
and4: AND_2 port map (A => t3b, B => u1, Y => s3);

or4: OR_2 port map (A => s1, B => s3, Y => Y(1));
or5: OR_2 port map (A => s2, B => s4, Y => Y(2));
not2: INVERTER port map (A => t3b, Y => Y(3));
or6: OR_2 port map (A => oo, B => oz, Y => Y(0));

	  
end Struct;