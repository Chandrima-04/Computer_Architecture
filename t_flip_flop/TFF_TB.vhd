--------------------------------------------------------------------------------
-- Company: 
-- Engineer:Goutam Debnath
--
-- Create Date:   21:14:52 03/08/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/t_flip_flop/TFF_TB.vhd
-- Project Name:  t_flip_flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_F_F
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
 
ENTITY TFF_TB IS
END TFF_TB;
 
ARCHITECTURE behavior OF TFF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T_F_F
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         PRS : IN  std_logic;
         Q : INOUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal PRS : std_logic := '0';

	--BiDirs
   signal Q : std_logic;

 	--Outputs
   signal QN : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T_F_F PORT MAP (
          T => T,
          CLK => CLK,
          CLR => CLR,
          PRS => PRS,
          Q => Q,
          QN => QN
        );

   -- Clock process definitions
   CLK_process :process
   begin
	wait for 50 ns;
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 
		PRS<='0','1' after 150ns;
		CLR<='0','1' after 150ns;
		T<='0','1' after 50ns;
		
      wait;
   end process;
--	process
--	begin
--		--wait for 50ns;
--		Q<='0'; wait for 100ns;
--		Q<='1'; wait for 100ns;
--	end process;
END;
