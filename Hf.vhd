library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity Hf  is
  port (A :in std_logic_vector(2 downto 0);
Y: out std_logic_vector(31 downto 0));
end entity Hf;
architecture bhv of Hf is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
begin
clock_proc:process(A)
begin
case A is
    when "000" =>
        Y <= "01101010000010011110011001100111";
    when "001" =>
        Y <= "10111011011001111010111010000101";
    when "010" =>
        Y <= "00111100011011101111001101110010";
    when "011" =>
        Y <= "10100101010011111111010100111010";
    when "100" =>
        Y <= "01010001000011100101001001111111";
    when "101" =>
        Y <= "10011011000001010110100010001100";
    when "110" =>
        Y <= "00011111100000111101100110101011";
    when "111" =>
        Y <= "01011011111000001100110100011001";
    when others =>
        Y <= (others => '0'); -- Handle any other case (if needed)
end case;
	end process;
end bhv;