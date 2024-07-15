library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity Capsigma1  is
  port (A :in std_logic_vector(31 downto 0);
  Y: out std_logic_vector(31 downto 0));
end entity Capsigma1;
architecture bhv of Capsigma1 is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
signal C: std_logic_vector(31 downto 0);
signal B: std_logic_vector(31 downto 0);
signal E: std_logic_vector(31 downto 0);
begin
right7: C(25 downto 0) <= A(31 downto 6);
        C(31 downto 26) <= A(5 downto 0);
        B(20 downto 0) <= A(31 downto 11);
        B(31 downto 21) <= A(10 downto 0);
        E(6 downto 0) <= A(31 downto 25);
        E(31 downto 7) <= A(24 downto 0);
        Y <= C XOR B XOR E;
end bhv;