--------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
--
-- Create Date:   01:30:28 03/09/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/JK_flip_flop/JKFF_TB.vhd
-- Project Name:  JK_flip_flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JKFF
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY JKFF_TB IS
END JKFF_TB;
 
ARCHITECTURE behavior OF JKFF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JKFF
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLK : IN  std_logic;
         Q : INOUT  std_logic;
         Q1 : INOUT  std_logic;
         Z : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal Q : std_logic;
   signal Q1 : std_logic;
   signal Z : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JKFF PORT MAP (
          J => J,
          K => K,
          CLK => CLK,
          Q => Q,
          Q1 => Q1,
          Z => Z
        );

   -- Clock process definitions
   CLK_process :process
   begin
		
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 50 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 

      J<='1'; wait for 100ns;
		J<='0'; wait for 100ns;
   end process;
	process
	begin
	   K<='1'; wait for 150ns;
		K<='0'; wait for 150ns;
   end process;
	
END;
