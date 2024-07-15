library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.ALL;
library work;
use work.Gates.all;
entity Data is 
 port(A: in std_logic_vector(31 downto 0); clock,reset:in std_logic; Wt2, Wt7, Wt16, Wt15:out std_logic_vector(31 downto 0));
end entity Data;
architecture behav of Data is

signal t1: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t2: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t3: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t4: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t5: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t6: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t7: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t8: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t9: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t10: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t11: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t12: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t13: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t14: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t15: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal t16: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal Z: std_logic_vector(4 downto 0);
signal q, w, e,r,t,y,u,i , key15, key7, key2: std_logic;

begin
c: Count port map(clock => clock, Y => Z);
lp1: largeplex port map(A => t2, B => "00000000000000000000000000000000", L => Z(4), Y => Wt2);
lp2: largeplex port map(A => t7, B => "00000000000000000000000000000000", L => Z(4), Y => Wt7);
lp3: largeplex port map(A => t15, B => "00000000000000000000000000000000", L => Z(4), Y => Wt15);
lp4: largeplex port map(A => t16, B => "00000000000000000000000000000000", L => Z(4), Y => Wt16);
r15: Registo port map(A => t15, reset => reset, clock => clock, Q => t16);
r14: Registo port map(A => t14, reset => reset, clock => clock, Q => t15);
r13: Registo port map(A => t13, reset => reset, clock => clock, Q => t14);
r12: Registo port map(A => t12, reset => reset, clock => clock, Q => t13);
r11: Registo port map(A => t11, reset => reset, clock => clock, Q => t12);
r10: Registo port map(A => t10, reset => reset, clock => clock, Q => t11);
r9: Registo port map(A => t9, reset => reset, clock => clock, Q => t10);
r8: Registo port map(A => t8, reset => reset, clock => clock, Q => t9);
r7: Registo port map(A => t7, reset => reset, clock => clock, Q => t8);
r6: Registo port map(A => t6, reset => reset, clock => clock, Q => t7);
r5: Registo port map(A => t5, reset => reset, clock => clock, Q => t6);
r4: Registo port map(A => t4, reset => reset, clock => clock, Q => t5);
r3: Registo port map(A => t3, reset => reset, clock => clock, Q => t4);
r2: Registo port map(A => t2, reset => reset, clock => clock, Q => t3);
r1: Registo port map(A => t1, reset => reset, clock => clock, Q => t2);
r0: Registo port map(A => A, reset => reset, clock => clock, Q => t1);

-- write flip flop output when not reset;;;;;:


end behav;
