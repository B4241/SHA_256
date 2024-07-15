library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity PE16_4  is
  port (A :in std_logic_vector(63 downto 0);
  Y: out std_logic_vector(5 downto 0));
end entity PE16_4;
architecture Struct of PE16_4 is
  signal out0: std_logic_vector(3 downto 0);
  signal out1: std_logic_vector(3 downto 0);
  signal out2: std_logic_vector(3 downto 0);
  signal out3: std_logic_vector(3 downto 0);
  signal out4: std_logic_vector(3 downto 0);
  signal out5: std_logic_vector(3 downto 0);
  signal out6: std_logic_vector(3 downto 0);
  signal out7: std_logic_vector(3 downto 0);
  signal o: std_logic_vector(7 downto 0);
  signal chaavi: std_logic_vector(3 downto 0);
begin
PE83on: PE83 port map (A => A(63 downto 56), Y => out7); 
PE83tw: PE83 port map (A => A(55 downto 48), Y => out6); 
PE83thr: PE83 port map (A => A(47 downto 40), Y => out5);
PE83fo: PE83 port map (A => A(39 downto 32), Y => out4);
PE83fi: PE83 port map (A => A(31 downto 24), Y => out3);
PE83si: PE83 port map (A => A(23 downto 16), Y => out2);
PE83se: PE83 port map (A => A(15 downto 8), Y => out1);
PE83ei: PE83 port map (A => A(7 downto 0), Y => out0);

or1: OR_2 port map (A => '0', B => out7(0), Y => o(7));
or2: OR_2 port map (A => '0', B => out6(0), Y => o(6));
or3: OR_2 port map (A => '0', B => out5(0), Y => o(5));
or4: OR_2 port map (A => '0', B => out4(0), Y => o(4));
or5: OR_2 port map (A => '0', B => out3(0), Y => o(3));
or6: OR_2 port map (A => '0', B => out2(0), Y => o(2));
or7: OR_2 port map (A => '0', B => out1(0), Y => o(1));
or8: OR_2 port map (A => '0', B => out0(0), Y => o(0));

PE83ni: PE83 port map (A => o, Y => chaavi);



plex31: plex3 port map (A(10 downto 8) => chaavi(3 downto 1), A(7) => out7(1), A(6) => out6(1), A(5) => out5(1), A(4) => out4(1), A(3) => out3(1), A(2) => out2(1), A(1) => out1(1), A(0) => out0(1), Y => Y(0));
plex32: plex3 port map (A(10 downto 8) => chaavi(3 downto 1), A(7) => out7(2), A(6) => out6(2), A(5) => out5(2), A(4) => out4(2), A(3) => out3(2), A(2) => out2(2), A(1) => out1(2), A(0) => out0(2), Y => Y(1));
plex33: plex3 port map (A(10 downto 8) => chaavi(3 downto 1), A(7) => out7(3), A(6) => out6(3), A(5) => out5(3), A(4) => out4(3), A(3) => out3(3), A(2) => out2(3), A(1) => out1(3), A(0) => out0(3), Y => Y(2));

or9: OR_2 port map(A => '0', B => chaavi(1), Y => Y(3));
or10: OR_2 port map(A => '0', B => chaavi(2), Y => Y(4));
or11: OR_2 port map(A => '0', B => chaavi(3), Y => Y(5));
end Struct;