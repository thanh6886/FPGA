-----------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;
architecture Behavioral of testbench is
component main is 
  Port (
            CLK : in std_logic;
            Input : in std_logic;
            Reset : in std_logic;
            Q : out std_logic
   );
end component;
  signal CLK  : std_logic:='1'; 
  signal Reset: std_logic :='0';
  signal  Input,Q : std_logic;
begin
uut:main port map(
        ClK => CLK,
        Input=>Input,
        Q=>Q,
        Reset=>Reset        
);




CLK<= not CLK after 5ns;

process
begin
     Input<='1';
          wait for 10 ns;
     Input<='1';
          wait for 10 ns;
     Input<='1';
          wait for 10 ns;
     Input<='1';
          wait for 10 ns;
          
     Input<='1';
          wait for 10 ns;
          
               Input<='0';
          wait for 10 ns;
               Input<='0';
          wait for 10 ns;
                         Input<='0';
          wait for 10 ns;
                         Input<='1';
          wait for 10 ns;
               Input<='0';
          wait for 10 ns;
                   Input<='0';
          wait for 10 ns;
          wait;
end process;


end Behavioral;
