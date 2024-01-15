----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2023 12:45:30 AM
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
 Port (
          CLK : in std_logic;
        Q : out std_logic
  );
end main;

architecture Behavioral of main is
component JK_FF
            port( J : in std_logic;
        K : in std_logic;
        Clock: in std_logic;
        Q: out std_logic;
        QD: out std_logic);
end component
       signal Q1,Q2,Q3,Q4,QD1,QD2,QD3,QD4: std_lgic :='0';
begin
      
        
        
        
end Behavioral;
