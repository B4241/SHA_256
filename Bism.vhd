library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
library work;
use work.Gates.all;

entity Bism is
    port (Wt : in STD_LOGIC_VECTOR(31 downto 0);clock:in std_logic;h : out STD_LOGIC_VECTOR(31 downto 0));
end Bism;

architecture bhv of Bism is
	 signal o1,o2, o3, o4, o5, o6, o7, o8: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
    signal t1, t2 ,t3, t4, t5, t6, t7, t8, Wt0: std_logic_vector(31 downto 0);
	 signal h0: std_logic_vector(31 downto 0):="01101010000010011110011001100111";
	 signal h1: std_logic_vector(31 downto 0):="10111011011001111010111010000101";
	 signal h2: std_logic_vector(31 downto 0):="00111100011011101111001101110010";                                  
	 signal h3: std_logic_vector(31 downto 0):="10100101010011111111010100111010";
	 signal h4: std_logic_vector(31 downto 0):="01010001000011100101001001111111";
	 signal h5: std_logic_vector(31 downto 0):="10011011000001010110100010001100";
	 signal h6: std_logic_vector(31 downto 0):="00011111100000111101100110101011";
	 signal h7: std_logic_vector(31 downto 0):="01011011111000001100110100011001";
	 signal counter: std_logic_vector(6 downto 0);
	 signal Wti, Wtj,aalmost ,balmost, calmost, dalmost, ealmost, falmost, galmost, halmost, aalmost2, ealmost2: std_logic_vector(31 downto 0);
	 signal notclock, choose, key, q,notclock64,clock64,keyclock64, check64 : std_logic;
begin
count3000: Count3 port map(clock => clock, Y => choose);
plex3000: plex port map(A => notclock, B => '1', L => choose, Y => key);
registo1000: Registo port map(A => Wt, clock => clock, reset => '0', Q => Wtj);
registo2000: Registo port map(A => Wtj, clock => notclock, reset => '0', Q => Wti);
inverter000: INVERTER port map(A => clock, Y => notclock);
coun64: Count64 port map(clock => clock, Y => counter);
checkkkk: check64 <= (counter(6) AND (not counter(5)) AND (not counter(4)) AND (not counter(3)) AND (not counter(2)) AND (not counter(1)) AND counter(0));
block12000: Blocks12 port map(A => Wti, clock => key, Y => Wt0);
abcdata000: abcData port map(ai => o1, bi => o2, ci => o3, di => o4, ei => o5, fi => o6, gi => o7, hi => o8, clock => notclock, a => t1, b => t2, c => t3, d => t4, e => t5, f => t6, g => t7, h => t8);
Compress000: Compress port map(ai => t1, bi => t2, ci => t3, di => t4, ei => t5, fi => t6, gi => t7, hi => t8, Wt => Wt0, clock => clock, a => o1, b => o2, c => o3, d => o4, e => o5, f => o6, g => o7, h => o8);
b0: BitCOunter port map(A => o8, B => h7, M => '0', S => halmost);
b1: BitCOunter port map(A => o7, B => h6, M => '0', S => galmost);
b2: BitCOunter port map(A => o6, B => h5, M => '0', S => falmost);
b3: BitCOunter port map(A => o5, B => h4, M => '0', S => ealmost);
b4: BitCOunter port map(A => o4, B => h3, M => '0', S => dalmost);
b5: BitCOunter port map(A => o3, B => h2, M => '0', S => calmost);
b6: BitCOunter port map(A => o2, B => h1, M => '0', S => balmost);
b7: BitCOunter port map(A => o1, B => h0, M => '0', S => aalmost);
end bhv;
	  