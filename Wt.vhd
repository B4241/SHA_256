library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MessageExpansion is
    Port (
        Wt15, Wt16, Wt2, Wt7 : in STD_LOGIC_VECTOR(31 downto 0);
		  clock:in std_logic; -- Input message
        Wt : out STD_LOGIC_VECTOR(31 downto 0) ARRAY (0 to 63) -- Output expanded message
    );
end MessageExpansion;

architecture Behavioral of MessageExpansion is
    -- Constants for rotations and shifts
	 signal A : std_logic_vector:= "000000";
    constant ROT7 : integer := 7;
    constant ROT18 : integer := 18;
    constant ROT3 : integer := 3;
    constant ROT17 : integer := 17;
    constant ROT19 : integer := 19;
    constant ROT10 : integer := 10;
	 signal B, C: std_logic;

    -- Internal signals
    signal sigma0, sigma1 : STD_LOGIC_VECTOR(31 downto 0);
begin

clock_proc:process(clock,reset)
	if(clock='1' and clock' event) then
		if(reset='1') then
			A <= 1;
			else
			A <= A+1;
		end if;
	end if;
or1: OR_2 port map(A => A(4) ,B => A(5), Y => B);

				 begin
        -- First 16 iterations
        for i in 0 to 15 loop
            w(i) <= m(i*32 + 31 downto i*32);
        end loop;

        -- Next 48 iterations
        for i in 16 to 63 loop
            sigma0 <= (w(i-2) srl ROT17) XOR (w(i-2) srl ROT19) XOR (w(i-2) srl ROT10);
            sigma1 <= (w(i-15) srl ROT7) XOR (w(i-15) srl ROT18) XOR (w(i-15) srl ROT3);s

            w(i) <= sigma1 + w(i-7) + sigma0 + w(i-16);
        end loop;
    end process;
end Behavioral;