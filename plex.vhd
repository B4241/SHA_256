library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity plex  is
  port (A, B, L:in std_logic; Y: out std_logic);
end entity plex;
architecture Struct of plex is
  signal  t2, t3, Lb: std_logic;
begin     
not1: INVERTER port map(A => L, Y => Lb);
and1 : AND_2 port map(A => A, B => L, Y => t2);
and2 : AND_2 port map(A => B, B => Lb, Y => t3);

or1: OR_2 port map(A => t2, B => t3, Y => Y);
end Struct;