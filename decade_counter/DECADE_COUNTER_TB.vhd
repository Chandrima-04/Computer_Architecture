--------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
--
-- Create Date:   16:47:12 03/15/2015
-- Design Name:   
-- Module Name:   C:/decade_counter/DECADE_COUNTER_TB.vhd
-- Project Name:  decade_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECADE_COUNTER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DECADE_COUNTER_TB IS
END DECADE_COUNTER_TB;
 
ARCHITECTURE behavior OF DECADE_COUNTER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECADE_COUNTER
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECADE_COUNTER PORT MAP (
          reset => reset,
          clk => clk,
          count => count
        );

   -- Clock process definitions
   clk_process :process
   begin
	
		wait for clk_period;
		clk <= not clk;
		wait for clk_period;
	
   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clk_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
