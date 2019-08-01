--------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
--
-- Create Date:   15:41:35 03/15/2015
-- Design Name:   
-- Module Name:   C:/ud_counter/UD_COUNTER_TB.vhd
-- Project Name:  ud_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UD_COUNTER
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UD_COUNTER_TB IS
END UD_COUNTER_TB;
 
ARCHITECTURE behavior OF UD_COUNTER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UD_COUNTER
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pause : IN  std_logic;
			mode : IN std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal pause : std_logic := '0';
	signal mode : std_logic := '1';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UD_COUNTER PORT MAP (
          clk => clk,
          reset => reset,
          pause => pause,
          count => count,
			 mode => mode
        );

   -- Clock process definitions
   clk_process :process
   begin
		wait for clk_period;
		clk <= not clk;
		wait for clk_period;
	
   end process;
	
	mode_process: process
	begin
	wait for 5000 ns;
	mode <= not mode;
	end process;

   -- Stimulus process
--   pause_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--		pause<='0';
--      wait for clk_period*74 ;	
--		pause <='1';
--      wait for clk_period*6;
--
--      -- insert stimulus here 
--
--      
--   end process;
--	
--	reset_proc:process
--	begin
--	
--	reset<='0';
--		wait for clk_period*106;
--	reset<='1';
--		wait for clk_period*2;
--	
--	end process;

END;
