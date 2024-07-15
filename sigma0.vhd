library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity sigma0  is
  port (A :in std_logic_vector(31 downto 0);
  Y: out std_logic_vector(31 downto 0));
end entity sigma0;
architecture Struct of sigma0 is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
signal C: std_logic_vector(31 downto 0);
signal B: std_logic_vector(31 downto 0);
signal E: std_logic_vector(31 downto 0);
begin
right7: C(24 downto 0) <= A(31 downto 7);
        C(31 downto 25) <= A(6 downto 0);
        B(13 downto 0) <= A(31 downto 18);
        B(31 downto 14) <= A(17 downto 0);
        E(28 downto 0) <= A(31 downto 3);
        E(31 downto 29) <= "000";
        Y <= C XOR B XOR E;
end Struct;