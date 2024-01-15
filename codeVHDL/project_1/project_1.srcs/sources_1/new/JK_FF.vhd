----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2023 11:28:54 PM
-- Design Name: 
-- Module Name: JK_FF - Behavioral
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

entity JK_FF is
 Port ( J : in std_logic;
        K : in std_logic;
        Clock: in std_logic;
        Q: out std_logic;
        QD: out std_logic
        );
end JK_FF;

architecture Behavioral of JK_FF is

begin
    process(Clock)
           variable state:std_logic :='0';
        begin
            if(Clock='0' and Clock'event) then
            if(J='0' and K='0') then state:=state;
            elsif(J='1' and K='1') then state:= not state;
            elsif(J='0' and K='1') then state:='0';
            else 
                state:='1';
            end if;
            end if;
        Q <= state;
        QD <= not state;
    
    end process;

end Behavioral;
