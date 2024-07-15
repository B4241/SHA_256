library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Gates.all;
entity kf  is
  port (A :in std_logic_vector(5 downto 0);
Y: out std_logic_vector(31 downto 0));
end entity kf;
architecture bhv of kf is
---------------Define state type here-----------------------------
---------------Define signals of state type-----------------------
begin
clock_proc:process(A)
begin
case A is
    when "000000" =>
        Y <= x"428a2f98";
    when "000001" =>
        Y <= x"71374491";
    when "000010" =>
        Y <= x"b5c0fbcf";
    when "000011" =>
        Y <= x"e9b5dba5";
    when "000100" =>
        Y <= x"3956c25b";
    when "000101" =>
        Y <= x"59f111f1";
    when "000110" =>
        Y <= x"923f82a4";
    when "000111" =>
        Y <= x"ab1c5ed5";
    when "001000" =>
        Y <= x"d807aa98";
    when "001001" =>
        Y <= x"12835b01";
    when "001010" =>
        Y <= x"243185be";
    when "001011" =>
        Y <= x"550c7dc3";
    when "001100" =>
        Y <= x"72be5d74";
    when "001101" =>
        Y <= x"80deb1fe";
    when "001110" =>
        Y <= x"9bdc06a7";
    when "001111" =>
        Y <= x"c19bf174";
    when "010000" =>
        Y <= x"e49b69c1";
    when "010001" =>
        Y <= x"efbe4786";
    when "010010" =>
        Y <= x"0fc19dc6";
    when "010011" =>
        Y <= x"240ca1cc";
    when "010100" =>
        Y <= x"2de92c6f";
    when "010101" =>
        Y <= x"4a7484aa";
    when "010110" =>
        Y <= x"5cb0a9dc";
    when "010111" =>
        Y <= x"76f988da";
    when "011000" =>
        Y <= x"983e5152";
    when "011001" =>
        Y <= x"a831c66d";
    when "011010" =>
        Y <= x"b00327c8";
    when "011011" =>
        Y <= x"bf597fc7";
    when "011100" =>
        Y <= x"c6e00bf3";
    when "011101" =>
        Y <= x"d5a79147";
    when "011110" =>
        Y <= x"06ca6351";
    when "011111" =>
        Y <= x"14292967";
    when "100000" =>
        Y <= x"27b70a85";
    when "100001" =>
        Y <= x"2e1b2138";
    when "100010" =>
        Y <= x"4d2c6dfc";
    when "100011" =>
        Y <= x"53380d13";
    when "100100" =>
        Y <= x"650a7354";
    when "100101" =>
        Y <= x"766a0abb";
    when "100110" =>
        Y <= x"81c2c92e";
    when "100111" =>
        Y <= x"92722c85";
    when "101000" =>
        Y <= x"a2bfe8a1";
    when "101001" =>
        Y <= x"a81a664b";
    when "101010" =>
        Y <= x"c24b8b70";
    when "101011" =>
        Y <= x"c76c51a3";
    when "101100" =>
        Y <= x"d192e819";
    when "101101" =>
        Y <= x"d6990624";
    when "101110" =>
        Y <= x"f40e3585";
    when "101111" =>
        Y <= x"106aa070";
    when "110000" =>
        Y <= x"19a4c116";
    when "110001" =>
        Y <= x"1e376c08";
    when "110010" =>
        Y <= x"2748774c";
    when "110011" =>
        Y <= x"34b0bcb5";
    when "110100" =>
        Y <= x"391c0cb3";
    when "110101" =>
        Y <= x"4ed8aa4a";
    when "110110" =>
        Y <= x"5b9cca4f";
    when "110111" =>
        Y <= x"682e6ff3";
    when "111000" =>
        Y <= x"748f82ee";
    when "111001" =>
        Y <= x"78a5636f";
    when "111010" =>
        Y <= x"84c87814";
    when "111011" =>
        Y <= x"8cc70208";
    when "111100" =>
        Y <= x"90befffa";
    when "111101" =>
        Y <= x"a4506ceb";
    when "111110" =>
        Y <= x"bef9a3f7";
    when "111111" =>
        Y <= x"c67178f2";
    when others =>
        Y <= (others => '0'); -- Handle any other case (if needed)
end case;



end process;
end bhv;