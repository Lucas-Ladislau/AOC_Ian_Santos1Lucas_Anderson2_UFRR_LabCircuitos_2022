library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
  port (A,B,C: in std_logic; 
  snand: out std_logic);
 end nand_gate;


architecture behavioral of nand_gate is  
 begin
	snand <= not((A and B)and C);
end behavioral;