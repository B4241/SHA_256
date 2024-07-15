library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
library work;
use work.Gates.all;

entity Blocks12 is
 port (A : in STD_LOGIC_VECTOR(31 downto 0);clock:in std_logic;Y : out STD_LOGIC_VECTOR(31 downto 0));
end Blocks12;

architecture Behavioral of Blocks12 is
	 signal Z: std_logic_vector(4 downto 0);
	 signal temp1, temp2, temp3, temp4, temp5: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
	 signal B, C: std_logic;
    signal igma0, igma1 : STD_LOGIC_VECTOR(31 downto 0);
begin
w1: WFunction port map(Rt => A, Wt2 => temp1, Wt7 => temp2, Wt15 => temp3, Wt16 => temp4, clock => clock, Wt => temp5);
Y <= temp5;
d1: Data port map(A => temp5, clock => clock, reset => '0', Wt2 => temp1, Wt7 => temp2, Wt15 => temp3, Wt16 => temp4);
end Behavioral;