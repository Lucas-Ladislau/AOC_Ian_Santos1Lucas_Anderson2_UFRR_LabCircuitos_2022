library ieee;
use ieee.std_logic_1164.all;

entity nand_gate2 is
  port (A,B: in std_logic; 
  snand: out std_logic);
 end nand_gate2;


architecture behavioral of nand_gate2 is  
 begin
	snand <= A nand B;
end behavioral;