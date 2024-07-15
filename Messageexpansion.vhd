library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MessageExpansion is
    Port (
        Wt15, Wt16, Wt2, Wt7, Rt : in STD_LOGIC_VECTOR(31 downto 0);
		  clock:in std_logic; -- Input message
        Wt : out STD_LOGIC_VECTOR(31 downto 0)
    );
end MessageExpansion;

architecture Behavioral of MessageExpansion is
    -- Constants for rotations and shifts
	 signal A : std_logic_vector:= "000000";
	 signal temp1, temp2, temp3: std_logic_vector(31 downto 0);
	 signal B, C: std_logic;

    -- Internal signals
    signal igma0, sigma1 : STD_LOGIC_VECTOR(31 downto 0);
begin

clock_proc:process(clock,reset)
	if(clock='1' and clock' event) then
		A <= A + "000001";
	end if;
or1: OR_2 port map(A => A(4) ,B => A(5), Y => B);

t1: sigma1 port map(A => Wt2, Y => igma0);
t2: sigma0 port map(A => Wt15, Y => igma1);

add1: BitCounter port map(A => igma0, B => Wt7, M => '0', S => temp1);
add2: BitCounter port map(A => W16, B => igma1, M => '0', S => temp2);
add1: BitCounter port map(A => temp1, B => temp2, M => '0', S => temp3);
choose1: largeplex port map(A => temp3, B => Rt, L => B, Y => Wt);
    end process;
end Behavioral;