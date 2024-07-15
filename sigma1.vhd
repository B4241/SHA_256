library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity sigma1  is
  port (A :in std_logic_vector(31 downto 0);
  Y: out std_logic_vector(31 downto 0));
end entity sigma1;
architecture bhv of sigma1 is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
signal C: std_logic_vector(31 downto 0);
signal B: std_logic_vector(31 downto 0);
signal E: std_logic_vector(31 downto 0);
begin
right7: C(14 downto 0) <= A(31 downto 17);
        C(31 downto 15) <= A(16 downto 0);
        B(12 downto 0) <= A(31 downto 19);
        B(31 downto 13) <= A(18 downto 0);
        E(21 downto 0) <= A(31 downto 10);
        E(31 downto 22) <= "0000000000";
        Y <= C XOR B XOR E;
end bhv;