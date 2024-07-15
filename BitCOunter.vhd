library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity BitCOunter  is
  port (A, B: in std_logic_vector(31 downto 0); M: in std_logic;S: out std_logic_vector(31 downto 0));
end entity BitCOunter;
architecture Struct of BitCOunter is
  signal AX0, AX1, AX2, AX3, AX4, AX5, AX6, AX7, AX8, AX9, AX10, AX11, AX12, AX13, AX14, AX15, AX16, AX17, AX18, AX19, AX20, AX21, AX22, AX23, AX24, AX25, AX26, AX27, AX28, AX29, AX30, AX31, AX32 : std_logic;
  signal Cr0, Cr1, Cr2, Cr3, Cr4, Cr5, Cr6, Cr7, Cr8, Cr9, Cr10, Cr11, Cr12, Cr13, Cr14, Cr15, Cr16, Cr17, Cr18, Cr19, Cr20, Cr21, Cr22, Cr23, Cr24, Cr25, Cr26, Cr27, Cr28, Cr29, Cr30, Cr31, Cr32 : std_logic;
begin

  xor0: XOR_2 port map(A => M, B => A(0), Y => AX0);
  xor1: XOR_2 port map(A => M, B => A(1), Y => AX1);
  xor2: XOR_2 port map(A => M, B => A(2), Y => AX2);
  xor3: XOR_2 port map(A => M, B => A(3), Y => AX3);
  xor4: XOR_2 port map(A => M, B => A(4), Y => AX4);
  xor5: XOR_2 port map(A => M, B => A(5), Y => AX5);
  xor6: XOR_2 port map(A => M, B => A(6), Y => AX6);
  xor7: XOR_2 port map(A => M, B => A(7), Y => AX7);
  xor8: XOR_2 port map(A => M, B => A(8), Y => AX8);
  xor9: XOR_2 port map(A => M, B => A(9), Y => AX9);
  xor10: XOR_2 port map(A => M, B => A(10), Y => AX10);
  xor11: XOR_2 port map(A => M, B => A(11), Y => AX11);
  xor12: XOR_2 port map(A => M, B => A(12), Y => AX12);
  xor13: XOR_2 port map(A => M, B => A(13), Y => AX13);
  xor14: XOR_2 port map(A => M, B => A(14), Y => AX14);
  xor15: XOR_2 port map(A => M, B => A(15), Y => AX15);
  xor16: XOR_2 port map(A => M, B => A(16), Y => AX16);
  xor17: XOR_2 port map(A => M, B => A(17), Y => AX17);
  xor18: XOR_2 port map(A => M, B => A(18), Y => AX18);
  xor19: XOR_2 port map(A => M, B => A(19), Y => AX19);
  xor20: XOR_2 port map(A => M, B => A(20), Y => AX20);
  xor21: XOR_2 port map(A => M, B => A(21), Y => AX21);
  xor22: XOR_2 port map(A => M, B => A(22), Y => AX22);
  xor23: XOR_2 port map(A => M, B => A(23), Y => AX23);
  xor24: XOR_2 port map(A => M, B => A(24), Y => AX24);
  xor25: XOR_2 port map(A => M, B => A(25), Y => AX25);
  xor26: XOR_2 port map(A => M, B => A(26), Y => AX26);
  xor27: XOR_2 port map(A => M, B => A(27), Y => AX27);
  xor28: XOR_2 port map(A => M, B => A(28), Y => AX28);
  xor29: XOR_2 port map(A => M, B => A(29), Y => AX29);
  xor30: XOR_2 port map(A => M, B => A(30), Y => AX30);
  xor31: XOR_2 port map(A => M, B => A(31), Y => AX31);
--  xor32: XOR_2 port map(A => M, B => A(32), Y => AX32);
  fa0: F_Adder port map(A => AX0, B => B(0), Cin => M, Cout => Cr0, Sum => S(0));
  fa1: F_Adder port map(A => AX1, B => B(1), Cin => Cr0, Cout => Cr1, Sum => S(1));
  fa2: F_Adder port map(A => AX2, B => B(2), Cin => Cr1, Cout => Cr2, Sum => S(2));
  fa3: F_Adder port map(A => AX3, B => B(3), Cin => Cr2, Cout => Cr3, Sum => S(3));
  fa4: F_Adder port map(A => AX4, B => B(4), Cin => Cr3, Cout => Cr4, Sum => S(4));
  fa5: F_Adder port map(A => AX5, B => B(5), Cin => Cr4, Cout => Cr5, Sum => S(5));
  fa6: F_Adder port map(A => AX6, B => B(6), Cin => Cr5, Cout => Cr6, Sum => S(6));
  fa7: F_Adder port map(A => AX7, B => B(7), Cin => Cr6, Cout => Cr7, Sum => S(7));
  fa8: F_Adder port map(A => AX8, B => B(8), Cin => Cr7, Cout => Cr8, Sum => S(8));
  fa9: F_Adder port map(A => AX9, B => B(9), Cin => Cr8, Cout => Cr9, Sum => S(9));
  fa10: F_Adder port map(A => AX10, B => B(10), Cin => Cr9, Cout => Cr10, Sum => S(10));
  fa11: F_Adder port map(A => AX11, B => B(11), Cin => Cr10, Cout => Cr11, Sum => S(11));
  fa12: F_Adder port map(A => AX12, B => B(12), Cin => Cr11, Cout => Cr12, Sum => S(12));
  fa13: F_Adder port map(A => AX13, B => B(13), Cin => Cr12, Cout => Cr13, Sum => S(13));
  fa14: F_Adder port map(A => AX14, B => B(14), Cin => Cr13, Cout => Cr14, Sum => S(14));
  fa15: F_Adder port map(A => AX15, B => B(15), Cin => Cr14, Cout => Cr15, Sum => S(15));
  fa16: F_Adder port map(A => AX16, B => B(16), Cin => Cr15, Cout => Cr16, Sum => S(16));
  fa17: F_Adder port map(A => AX17, B => B(17), Cin => Cr16, Cout => Cr17, Sum => S(17));
  fa18: F_Adder port map(A => AX18, B => B(18), Cin => Cr17, Cout => Cr18, Sum => S(18));
  fa19: F_Adder port map(A => AX19, B => B(19), Cin => Cr18, Cout => Cr19, Sum => S(19));
  fa20: F_Adder port map(A => AX20, B => B(20), Cin => Cr19, Cout => Cr20, Sum => S(20));
  fa21: F_Adder port map(A => AX21, B => B(21), Cin => Cr20, Cout => Cr21, Sum => S(21));
  fa22: F_Adder port map(A => AX22, B => B(22), Cin => Cr21, Cout => Cr22, Sum => S(22));
  fa23: F_Adder port map(A => AX23, B => B(23), Cin => Cr22, Cout => Cr23, Sum => S(23));
  fa24: F_Adder port map(A => AX24, B => B(24), Cin => Cr23, Cout => Cr24, Sum => S(24));
  fa25: F_Adder port map(A => AX25, B => B(25), Cin => Cr24, Cout => Cr25, Sum => S(25));
  fa26: F_Adder port map(A => AX26, B => B(26), Cin => Cr25, Cout => Cr26, Sum => S(26));
  fa27: F_Adder port map(A => AX27, B => B(27), Cin => Cr26, Cout => Cr27, Sum => S(27));
  fa28: F_Adder port map(A => AX28, B => B(28), Cin => Cr27, Cout => Cr28, Sum => S(28));
  fa29: F_Adder port map(A => AX29, B => B(29), Cin => Cr28, Cout => Cr29, Sum => S(29));
  fa30: F_Adder port map(A => AX30, B => B(30), Cin => Cr29, Cout => Cr30, Sum => S(30));
  fa31: F_Adder port map(A => AX31, B => B(31), Cin => Cr30, Cout => Cr31, Sum => S(31));
--  fa32: F_Adder port map(A => AX32, B => B(32), Cin => Cr31, Cout => Cout, Sum => S(32));

end Struct;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity BitCOuntersix  is
  port (A, B: in std_logic_vector(5 downto 0); M: in std_logic;S: out std_logic_vector(5 downto 0));
end entity BitCOuntersix;

architecture Struct2 of BitCOuntersix is
  signal AX0, AX1, AX2, AX3, AX4, AX5: std_logic;
  signal Cr0, Cr1, Cr2, Cr3, Cr4, Cr5: std_logic;
begin 

xor0: XOR_2 port map(A => M, B => A(0), Y => AX0);
  xor1: XOR_2 port map(A => M, B => A(1), Y => AX1);
  xor2: XOR_2 port map(A => M, B => A(2), Y => AX2);
  xor3: XOR_2 port map(A => M, B => A(3), Y => AX3);
  xor4: XOR_2 port map(A => M, B => A(4), Y => AX4);
  xor5: XOR_2 port map(A => M, B => A(5), Y => AX5);
  
    fa0: F_Adder port map(A => AX0, B => B(0), Cin => M, Cout => Cr0, Sum => S(0));
  fa1: F_Adder port map(A => AX1, B => B(1), Cin => Cr0, Cout => Cr1, Sum => S(1));
  fa2: F_Adder port map(A => AX2, B => B(2), Cin => Cr1, Cout => Cr2, Sum => S(2));
  fa3: F_Adder port map(A => AX3, B => B(3), Cin => Cr2, Cout => Cr3, Sum => S(3));
  fa4: F_Adder port map(A => AX4, B => B(4), Cin => Cr3, Cout => Cr4, Sum => S(4));
  fa5: F_Adder port map(A => AX5, B => B(5), Cin => Cr4, Cout => Cr5, Sum => S(5));
  

end Struct2;