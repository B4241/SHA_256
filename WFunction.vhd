library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
library work;
use work.Gates.all;

entity WFunction is
 port (Wt7, Wt2, Wt15, Wt16, Rt : in STD_LOGIC_VECTOR(31 downto 0);clock:in std_logic;Wt : out STD_LOGIC_VECTOR(31 downto 0));
end WFunction;

architecture Behavioral of WFunction is
	 signal Z: std_logic_vector(4 downto 0);
	 signal temp1, temp2, temp3: std_logic_vector(31 downto 0);
	 signal B, C, L, J: std_logic;
    signal igma0, igma1 : STD_LOGIC_VECTOR(31 downto 0);
begin
--Warning You have to somehow implement increasing clock here

--Won't work without it

countop: Count000 port map(clock => clock, Y => Z);
or2: OR_2 port map(A => Z(0), B => Z(1), Y => C);
or3: OR_2 port map(A => Z(2), B => Z(3), Y => L);
or4: OR_2 port map(A => L, B => C, Y => J);
and1: AND_2 port map(A => Z(4), B => J, Y => B);

t1: sigma1 port map(A => Wt2, Y => igma0);
t2: sigma0 port map(A => Wt15, Y => igma1);

add1: BitCounter port map(A => igma0, B => Wt7, M => '0', S => temp1);
add2: BitCounter port map(A => Wt16, B => igma1, M => '0', S => temp2);
add3: BitCounter port map(A => temp1, B => temp2, M => '0', S => temp3);
choose1: largeplex port map(A => temp3, B => Rt, L => B, Y => Wt);
end Behavioral;