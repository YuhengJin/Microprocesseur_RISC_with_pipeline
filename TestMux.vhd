--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:00:43 05/15/2019
-- Design Name:   
-- Module Name:   /home/yujin/4B/ArchiMat/Projet-System-Info/TestMux.vhd
-- Project Name:  Projet-System-Info
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
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
 
ENTITY TestMux IS
END TestMux;
 
ARCHITECTURE behavior OF TestMux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         QA : IN  std_logic_vector(15 downto 0);
         OP : IN  std_logic_vector(7 downto 0);
         Bin : IN  std_logic_vector(15 downto 0);
         Bout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal QA : std_logic_vector(15 downto 0) := (others => '0');
   signal OP : std_logic_vector(7 downto 0) := (others => '0');
   signal Bin : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Bout : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          QA => QA,
          OP => OP,
          Bin => Bin,
          Bout => Bout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		QA <= x"0A0B";
		OP <= x"05";
		Bin <= x"0002";
      wait;
   end process;

END;
