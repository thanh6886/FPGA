----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2023 09:02:40 PM
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
entity main is
 Port (
          CLK : in std_logic;
          Input : in std_logic;
          Reset : in std_logic;
          Q : out std_logic
        
  );
end main;

architecture Behavioral of main is
        type state is (S0, S1, S2, S3, S4);
        signal prveState, nextState : state;
begin
        process(CLK, Reset)
            begin
                if reset = '1' then 
                    prveState <= S0;
                elsif rising_edge(CLK) then 
                    prveState <= nextState;
                end if;
        end process;
       ----------------------------------------
       process(Input, prveState)
        begin
            case prveState is 
                when S0 =>  Q <= '0';        
                    if Input = '1' then 
                        nextState <= S1;               
                    else 
                       nextState <= S4;    
                   end if;
                 when S1 =>  Q <= '0' ; 
                    if Input ='1'  then 
                        nextState <= S2;
                    else  
                        nextState<= S4;
                   end if;
                when S2 =>  Q <= '0' ; 
                    if Input ='1' then 
                        nextState <= S3;
                    else  
                        nextState <= S4;
                   end if;
                when S3 =>  Q <= '0' ; 
                    if Input ='1' then 
                        nextState <= S3;
                        Q<='1';
                    else  
                         nextState<=S4;
                   end if; 
               when S4 => Q<= '0';
                    if Input = '0' then
                        nextState <= S4;
                        Q <= '1';
                    else 
                        nextState <= S1;
                    end if;
               end case;
       end process;
end Behavioral;
