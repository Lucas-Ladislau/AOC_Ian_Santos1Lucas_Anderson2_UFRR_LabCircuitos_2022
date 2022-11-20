Library IEEE;
USE IEEE.Std_logic_1164.all;

entity Dflipflop is 
   port(   
      Clk :in std_logic;   
      D :in  std_logic;
		Q : out std_logic 		
   );
end Dflipflop;
architecture Behavioral of Dflipflop is  
begin  
 process(Clk)
 begin 
    if(rising_edge(Clk)) then
   Q <= D; 
    end if;       
 end process;  
end Behavioral;