----------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
-- 
-- Create Date:    16:28:28 03/15/2015 
-- Design Name: 
-- Module Name:    DECADE_COUNTER - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DECADE_COUNTER is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end DECADE_COUNTER;

architecture Behavioral of DECADE_COUNTER is

signal clk_div : std_logic_vector(2 downto 0):= "000";
signal temp_count : std_logic_vector(3 downto 0) := "0000";
signal slow_clk : std_logic;

begin

process(clk, clk_div)
begin
	if(clk'event and clk='1') then
		clk_div <= clk_div + 1;
	end if;
	slow_clk <= clk_div(2);
end process;

counting: process(reset,slow_clk,temp_count)
begin
	if reset ='1' then
		temp_count<="0000";
	else
			if(slow_clk'event and slow_clk='1') then
				if(temp_count<9) then
					temp_count <= temp_count + 1;
				else
					temp_count<="0000";
				end if;
			end if;
	end if;
count<=temp_count;	
end process;

end Behavioral;

