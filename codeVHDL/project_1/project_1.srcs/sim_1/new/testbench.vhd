----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2023 01:04:21 AM
-- Design Name: 
-- Module Name: testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
end testbench;

architecture Behavioral of testbench is

 component main is 
       port(
                      CLK : in std_logic;
        input :  in std_logic;
        reset: in std_logic;
        Q : out std_logic
       
       
       );
 end component; 

  signal CLK , Input,Reset, Q : std_logic:='0'; 

begin
uut:main port map(
        ClK => CLK,
        Input=>input,
        Q=>Q,
        Reset=>reset        
);




CLK<= not CLK after 5ns;

process
begin
     Input<='0';
          wait for 10 ns;
     Input<='1';
          wait for 10 ns;
     Input<='1';
          wait for 10 ns;
     Input<='0';
          wait for 10 ns;
     Input<='1';
          wait for 10 ns;
               Input<='1';
          wait for 10 ns;
               Input<='0';
          wait for 10 ns;
          wait;
end process;




end Behavioral;
