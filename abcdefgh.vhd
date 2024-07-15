library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.ALL;
library work;
use work.Gates.all;
entity Data is 
port(ai, bi, ci, di, ei, fi, gi, hi: in std_logic_vector(31 downto 0); clock,reset:in std_logic; a, b, c, d, e, f, g, h:out std_logic_vector(31 downto 0));
end entity Data;
architecture behav of Data is

signal h0: std_logic_vector(31 downto 0):="01101010000010011110011001100111";
signal h1: std_logic_vector(31 downto 0):="10111011011001111010111010000101";
signal h2: std_logic_vector(31 downto 0):="00111100011011101111001101110010";
signal h3: std_logic_vector(31 downto 0):="10100101010011111111010100111010";
signal h4: std_logic_vector(31 downto 0):="01010001000011100101001001111111";
signal h5: std_logic_vector(31 downto 0):="10011011000001010110100010001100";
signal h6: std_logic_vector(31 downto 0):="00011111100000111101100110101011";
signal h7: std_logic_vector(31 downto 0):="01011011111000001100110100011001";
signal Z: std_logic_vector(6 downto 0);
signal j, k, l, o, p, key: std_logic;

begin 

c: Count port map(clock => clock, Y => Z);
or1: OR_2 port map(A => Z(0), B => Z(1), Y => j);
or2: OR_2 port map(A => Z(2), B => Z(3), Y => k);
or3: OR_2 port map(A => Z(4), B => Z(5), Y => l);
or4: OR_2 port map(A => k, B => j, Y => o);
or5: OR_2 port map(A => o, B => l, Y => p);
or6: OR_2 port map(A => Z(6), B => p, Y => key);

plex1: largeplex port map(A => ai, B => h0, L => key, Y => a);
plex2: largeplex port map(A => bi, B => h1, L => key, Y => b);
plex3: largeplex port map(A => ci, B => h2, L => key, Y => c);
plex4: largeplex port map(A => di, B => h3, L => key, Y => d);
plex5: largeplex port map(A => ei, B => h4, L => key, Y => e);
plex6: largeplex port map(A => fi, B => h5, L => key, Y => f);
plex7: largeplex port map(A => gi, B => h6, L => key, Y => g);
plex8: largeplex port map(A => hi, B => h7, L => key, Y => h);

end behav;

