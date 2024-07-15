library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity encoder422  is
  port (A, B, C, D :in std_logic;
  Y2, Y1, Y: out std_logic);
end entity encoder422;
architecture Struct of encoder422 is
  signal Y1l, Y2l, t1, t2, t3, A0, B0, C0, D0, zo, oz, oo : std_logic;
begin
  -- component instances
  --ha: Half_Adder 
     --  port map (A => A, B => B, S => tS, C => tC)
or1: OR_2 port map (A => A, B => B, Y =>t1);
or2: OR_2 port map (A => C, B => D, Y =>t2);
or3: OR_2 port map (A => t1, B => t2, Y =>Y);
not1: INVERTER port map (A => A,Y => A0);
not2: INVERTER port map (A => B,Y =>B0);
and1: AND_2 port map (A => A0, B => B0, Y => t3);
and2: AND_2 port map (A => t3, B => C, Y => zo);
and3: AND_2 port map (A => A0, B => B, Y => oz);
and4: AND_2 port map (A => '1', B => A, Y => oo);
or4: OR_2 port map (A => oo, B => oz, Y =>Y2);
or5: OR_2 port map (A => oo, B => zo, Y =>Y1);
	  
	  
end Struct;