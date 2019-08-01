----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    15:12:44 03/15/2015 
-- Design Name: 
-- Module Name:    UD_countER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UD_COUNTER is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pause : in  STD_LOGIC;
			  mode : in STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end UD_COUNTER;

architecture Behavioral of UD_COUNTER is

signal temp_count : std_logic_vector(3 downto 0) := x"0";
signal slow_clk : std_logic;
signal clk_div : std_logic_vector(2 downto 0) := "000";

begin

clk_division : process(clk,clk_div)
begin
	if(clk='1' and clk'event) then
		clk_div<= clk_div + 1;
	end if;
	slow_clk<=clk_div(2);
	
end process;

counting: process(reset,pause,slow_clk,temp_count,mode)
begin
if mode ='1' then
	if reset ='1' then
		temp_count<="0000";
	elsif pause='1' then
		temp_count<=temp_count;
	else
			if(slow_clk'event and slow_clk='1') then
				if(temp_count<15) then
					temp_count <= temp_count + 1;
				else
					temp_count<="0000";
				end if;
			end if;
	end if;
else
	if reset ='1' then
		temp_count<="0000";
	elsif pause='1' then
		temp_count<=temp_count;
	else
			if(slow_clk'event and slow_clk='1') then
				if(temp_count>0) then
					temp_count <= temp_count - 1;
				else
					temp_count<="1111";
				end if;
			end if;
	end if;
end if;	
count<=temp_count;	
end process;

end Behavioral;
