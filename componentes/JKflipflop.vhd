library ieee;
use ieee.std_logic_1164.all;

entity JKflipflop is
  port (CLK: in std_logic; 
  J, K: in std_logic; 
  Q, Qbar: out std_logic);
 end JKflipflop;


architecture behavioral of JKflipflop is 
component nand_gate is
port (A,B,C: in std_logic; 
  snand: out std_logic);
end component;  

component nand_gate2 is
port (A,B: in std_logic; 
  snand: out std_logic);
end component;  

 signal qx, nand1,nand2, nand3, nand4: std_logic;
 begin
	NAJ:nand_gate port map(J,nand4,CLK, nand1);
	NAK:nand_gate port map(K,nand3,CLK, nand2);
	NAQ:nand_gate2 port map(nand1,nand4, nand3);
	NAQbar:nand_gate2 port map(nand2,nand3, nand4);
	Q<=  nand3;
	Qbar<=  nand4;
end behavioral;