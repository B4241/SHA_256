library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity plex3  is
  port (A:in std_logic_vector(10 downto 0); Y: out std_logic);
end entity plex3;
architecture Struct of plex3 is
  signal  m1, m2, m3, m4, m5, m6, m7: std_logic;
begin     
plex1: plex port map(A => A(7), B => A(3), L => A(8), Y => m1 );
plex2: plex port map(A => A(5), B => A(1), L => A(8), Y => m2 );
plex3: plex port map(A => A(6), B => A(2), L => A(8), Y => m3 );
plex4: plex port map(A => A(4), B => A(0), L => A(8), Y => m4 );
plex5: plex port map(A => m1, B => m2, L => A(9), Y => m5 );
plex6: plex port map(A => m3, B => m4, L => A(9), Y => m6 );
plex7: plex port map(A => m5, B => m6, L => A(10), Y => Y );
end Struct;