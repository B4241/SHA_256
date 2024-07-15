library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity Capsigma0  is
  port (A :in std_logic_vector(31 downto 0);
  Y: out std_logic_vector(31 downto 0));
end entity Capsigma0;
architecture bhv of Capsigma0 is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
signal C: std_logic_vector(31 downto 0);
signal B: std_logic_vector(31 downto 0);
signal E: std_logic_vector(31 downto 0);
begin
right7: C(29 downto 0) <= A(31 downto 2);
        C(31 downto 30) <= A(1 downto 0);
        B(18 downto 0) <= A(31 downto 13);
        B(31 downto 19) <= A(12 downto 0);
        E(9 downto 0) <= A(31 downto 22);
        E(31 downto 10) <= A(21 downto 0);
        Y <= C XOR B XOR E;
end bhv;