library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity largeplex  is
  port (A, B:in std_logic_vector(31 downto 0);
  L: in std_logic; Y: out std_logic_vector(31 downto 0));
end entity largeplex;
architecture Struct of largeplex is
signal Lb, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31, t32, t33, t34, t35, t36, t37, t38, t39, t40, t41, t42, t43, t44, t45, t46, t47, t48, t49, t50, t51, t52, t53, t54, t55, t56, t57, t58, t59, t60, t61, t62, t63, t64, t65, t66, t67: std_logic;  
begin     
not1: INVERTER port map(A => L, Y => Lb);
and1 : AND_2 port map(A => A(0), B => L, Y => t2);
and2 : AND_2 port map(A => B(0), B => Lb, Y => t3);
or1: OR_2 port map(A => t2, B => t3, Y => Y(0));

and3 : AND_2 port map(A => A(1), B => L, Y => t4);
and4 : AND_2 port map(A => B(1), B => Lb, Y => t5);
or2: OR_2 port map(A => t4, B => t5, Y => Y(1));

and5 : AND_2 port map(A => A(2), B => L, Y => t6);
and6 : AND_2 port map(A => B(2), B => Lb, Y => t7);
or3: OR_2 port map(A => t6, B => t7, Y => Y(2));

and7 : AND_2 port map(A => A(3), B => L, Y => t8);
and8 : AND_2 port map(A => B(3), B => Lb, Y => t9);
or4: OR_2 port map(A => t8, B => t9, Y => Y(3));

and9 : AND_2 port map(A => A(4), B => L, Y => t10);
and10 : AND_2 port map(A => B(4), B => Lb, Y => t11);
or5: OR_2 port map(A => t10, B => t11, Y => Y(4));

and11 : AND_2 port map(A => A(5), B => L, Y => t12);
and12 : AND_2 port map(A => B(5), B => Lb, Y => t13);
or6: OR_2 port map(A => t12, B => t13, Y => Y(5));

and13 : AND_2 port map(A => A(6), B => L, Y => t14);
and14 : AND_2 port map(A => B(6), B => Lb, Y => t15);
or7: OR_2 port map(A => t14, B => t15, Y => Y(6));

and15 : AND_2 port map(A => A(7), B => L, Y => t16);
and16 : AND_2 port map(A => B(7), B => Lb, Y => t17);
or8: OR_2 port map(A => t16, B => t17, Y => Y(7));

and17 : AND_2 port map(A => A(8), B => L, Y => t18);
and18 : AND_2 port map(A => B(8), B => Lb, Y => t19);
or9: OR_2 port map(A => t18, B => t19, Y => Y(8));

and19 : AND_2 port map(A => A(9), B => L, Y => t20);
and20 : AND_2 port map(A => B(9), B => Lb, Y => t21);
or10: OR_2 port map(A => t20, B => t21, Y => Y(9));

and23 : AND_2 port map(A => A(10), B => L, Y => t24);
and24 : AND_2 port map(A => B(10), B => Lb, Y => t25);
or12: OR_2 port map(A => t24, B => t25, Y => Y(10));

and25 : AND_2 port map(A => A(11), B => L, Y => t26);
and26 : AND_2 port map(A => B(11), B => Lb, Y => t27);
or13: OR_2 port map(A => t26, B => t27, Y => Y(11));

and27 : AND_2 port map(A => A(12), B => L, Y => t28);
and28 : AND_2 port map(A => B(12), B => Lb, Y => t29);
or14: OR_2 port map(A => t28, B => t29, Y => Y(12));

and29 : AND_2 port map(A => A(13), B => L, Y => t30);
and30 : AND_2 port map(A => B(13), B => Lb, Y => t31);
or15: OR_2 port map(A => t30, B => t31, Y => Y(13));

and31 : AND_2 port map(A => A(14), B => L, Y => t32);
and32 : AND_2 port map(A => B(14), B => Lb, Y => t33);
or16: OR_2 port map(A => t32, B => t33, Y => Y(14));

and33 : AND_2 port map(A => A(15), B => L, Y => t34);
and34 : AND_2 port map(A => B(15), B => Lb, Y => t35);
or17: OR_2 port map(A => t34, B => t35, Y => Y(15));

and35 : AND_2 port map(A => A(16), B => L, Y => t36);
and36 : AND_2 port map(A => B(16), B => Lb, Y => t37);
or18: OR_2 port map(A => t36, B => t37, Y => Y(16));

and37 : AND_2 port map(A => A(17), B => L, Y => t38);
and38 : AND_2 port map(A => B(17), B => Lb, Y => t39);
or19: OR_2 port map(A => t38, B => t39, Y => Y(17));

and39 : AND_2 port map(A => A(18), B => L, Y => t40);
and40 : AND_2 port map(A => B(18), B => Lb, Y => t41);
or20: OR_2 port map(A => t40, B => t41, Y => Y(18));

and41 : AND_2 port map(A => A(19), B => L, Y => t42);
and42 : AND_2 port map(A => B(19), B => Lb, Y => t43);
or21: OR_2 port map(A => t42, B => t43, Y => Y(19));

and43 : AND_2 port map(A => A(20), B => L, Y => t44);
and44 : AND_2 port map(A => B(20), B => Lb, Y => t45);
or22: OR_2 port map(A => t44, B => t45, Y => Y(20));

and45 : AND_2 port map(A => A(21), B => L, Y => t46);
and46 : AND_2 port map(A => B(21), B => Lb, Y => t47);
or23: OR_2 port map(A => t46, B => t47, Y => Y(21));

and47 : AND_2 port map(A => A(22), B => L, Y => t48);
and48 : AND_2 port map(A => B(22), B => Lb, Y => t49);
or24: OR_2 port map(A => t48, B => t49, Y => Y(22));

and49 : AND_2 port map(A => A(23), B => L, Y => t50);
and50 : AND_2 port map(A => B(23), B => Lb, Y => t51);
or25: OR_2 port map(A => t50, B => t51, Y => Y(23));

and51 : AND_2 port map(A => A(24), B => L, Y => t52);
and52 : AND_2 port map(A => B(24), B => Lb, Y => t53);
or26: OR_2 port map(A => t52, B => t53, Y => Y(24));

and53 : AND_2 port map(A => A(25), B => L, Y => t54);
and54 : AND_2 port map(A => B(25), B => Lb, Y => t55);
or27: OR_2 port map(A => t54, B => t55, Y => Y(25));

and55 : AND_2 port map(A => A(26), B => L, Y => t56);
and56 : AND_2 port map(A => B(26), B => Lb, Y => t57);
or28: OR_2 port map(A => t56, B => t57, Y => Y(26));

and57 : AND_2 port map(A => A(27), B => L, Y => t58);
and58 : AND_2 port map(A => B(27), B => Lb, Y => t59);
or29: OR_2 port map(A => t58, B => t59, Y => Y(27));

and59 : AND_2 port map(A => A(28), B => L, Y => t60);
and60 : AND_2 port map(A => B(28), B => Lb, Y => t61);
or30: OR_2 port map(A => t60, B => t61, Y => Y(28));

and61 : AND_2 port map(A => A(29), B => L, Y => t62);
and62 : AND_2 port map(A => B(29), B => Lb, Y => t63);
or31: OR_2 port map(A => t62, B => t63, Y => Y(29));

and63 : AND_2 port map(A => A(30), B => L, Y => t64);
and64 : AND_2 port map(A => B(30), B => Lb, Y => t65);
or32: OR_2 port map(A => t64, B => t65, Y => Y(30));

and65 : AND_2 port map(A => A(31), B => L, Y => t66);
and66 : AND_2 port map(A => B(31), B => Lb, Y => t67);
or33: OR_2 port map(A => t66, B => t67, Y => Y(31));


end Struct;