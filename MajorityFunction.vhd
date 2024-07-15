library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MajorityFunction is
	  port(A, B, C: in std_logic_vector(31 downto 0);Y : out std_logic_vector(31 downto 0));
end entity MajorityFunction;
architecture Beh of MajorityFunction is
begin
j1: Majority_2 port map(A => A(0), B => B(0), C => C(0), Y => Y(0));
j2: Majority_2 port map(A => A(1), B => B(1), C => C(1), Y => Y(1));
j3: Majority_2 port map(A => A(2), B => B(2), C => C(2), Y => Y(2));
j4: Majority_2 port map(A => A(3), B => B(3), C => C(3), Y => Y(3));
j5: Majority_2 port map(A => A(4), B => B(4), C => C(4), Y => Y(4));
j6: Majority_2 port map(A => A(5), B => B(5), C => C(5), Y => Y(5));
j7: Majority_2 port map(A => A(6), B => B(6), C => C(6), Y => Y(6));
j8: Majority_2 port map(A => A(7), B => B(7), C => C(7), Y => Y(7));
j9: Majority_2 port map(A => A(8), B => B(8), C => C(8), Y => Y(8));
j10: Majority_2 port map(A => A(9), B => B(9), C => C(9), Y => Y(9));
j11: Majority_2 port map(A => A(10), B => B(10), C => C(10), Y => Y(10));
j12: Majority_2 port map(A => A(11), B => B(11), C => C(11), Y => Y(11));
j13: Majority_2 port map(A => A(12), B => B(12), C => C(12), Y => Y(12));
j14: Majority_2 port map(A => A(13), B => B(13), C => C(13), Y => Y(13));
j15: Majority_2 port map(A => A(14), B => B(14), C => C(14), Y => Y(14));
j16: Majority_2 port map(A => A(15), B => B(15), C => C(15), Y => Y(15));
j17: Majority_2 port map(A => A(16), B => B(16), C => C(16), Y => Y(16));
j18: Majority_2 port map(A => A(17), B => B(17), C => C(17), Y => Y(17));
j19: Majority_2 port map(A => A(18), B => B(18), C => C(18), Y => Y(18));
j20: Majority_2 port map(A => A(19), B => B(19), C => C(19), Y => Y(19));
j21: Majority_2 port map(A => A(20), B => B(20), C => C(20), Y => Y(20));
j22: Majority_2 port map(A => A(21), B => B(21), C => C(21), Y => Y(21));
j23: Majority_2 port map(A => A(22), B => B(22), C => C(22), Y => Y(22));
j24: Majority_2 port map(A => A(23), B => B(23), C => C(23), Y => Y(23));
j25: Majority_2 port map(A => A(24), B => B(24), C => C(24), Y => Y(24));
j26: Majority_2 port map(A => A(25), B => B(25), C => C(25), Y => Y(25));
j27: Majority_2 port map(A => A(26), B => B(26), C => C(26), Y => Y(26));
j28: Majority_2 port map(A => A(27), B => B(27), C => C(27), Y => Y(27));
j29: Majority_2 port map(A => A(28), B => B(28), C => C(28), Y => Y(28));
j30: Majority_2 port map(A => A(29), B => B(29), C => C(29), Y => Y(29));
j31: Majority_2 port map(A => A(30), B => B(30), C => C(30), Y => Y(30));
j32: Majority_2 port map(A => A(31), B => B(31), C => C(31), Y => Y(31));
end Beh;