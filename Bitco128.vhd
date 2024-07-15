library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity Bitco128 is
  port (A :in std_logic_vector(127 downto 0);
  Y: out std_logic_vector(6 downto 0));
end entity Bitco128;
architecture Struct of Bitco128 is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
signal C: std_logic_vector(5 downto 0);
signal B: std_logic_vector(5 downto 0);
signal E: std_logic_vector(31 downto 0);
signal T: std_logic_vector(4 downto 0);
signal D: std_logic;
begin
counter1: PE16_4 port map (A => A(127 downto 64), Y => C); 
counter0: PE16_4 port map (A => A(63 downto 0), Y => B); 
or1: OR_2 port map(A => C(0), B => C(1), Y => T(0));
or2: OR_2 port map(A => C(2), B => C(3), Y => T(1));
or3: OR_2 port map(A => C(4), B => C(5), Y => T(2));
or4: OR_2 port map(A => T(0), B => T(1), Y => T(3));
or5: OR_2 port map(A => T(3), B => T(2), Y => D);
plex1: plex port map(A => C(0), B => B(0), L => D, Y => Y(0));
plex2: plex port map(A => C(1), B => B(1), L => D, Y => Y(1));
plex3: plex port map(A => C(2), B => B(2), L => D, Y => Y(2));
plex4: plex port map(A => C(3), B => B(3), L => D, Y => Y(3));
plex5: plex port map(A => C(4), B => B(4), L => D, Y => Y(4));
plex6: plex port map(A => C(5), B => B(5), L => D, Y => Y(5));
or6: OR_2 port map(A => '0', B => D, Y => Y(6)); 
end Struct;