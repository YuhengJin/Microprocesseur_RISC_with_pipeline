--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:32:58 05/29/2019
-- Design Name:   
-- Module Name:   /home/yujin/4B/ArchiMat/Projet-System-Info/TestProcessus.vhd
-- Project Name:  Projet-System-Info
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Processus
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
 
ENTITY TestProcessus IS
END TestProcessus;
 
ARCHITECTURE behavior OF TestProcessus IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processus
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         ENTER : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal ENTER : std_logic_vector(31 downto 0) := (others => '0');

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processus PORT MAP (
          CLK => CLK,
          RST => RST,
          ENTER => ENTER
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
      wait for 100 ns;	
		RST <= '1';
      --wait for CLK_period*10;

      -- insert stimulus here 
		ENTER <= x"06090000";
		wait for 10 ns; 
		ENTER <= x"06050004";
		wait for 10 ns; 
		ENTER <= x"06010003";
		wait for 10 ns;
		ENTER <= x"02090501";
		wait for 40 ns;
		ENTER <= x"08000501"; --3		
		wait for 40 ns;
		ENTER <= x"07090005"; --3 au lieu de c

--		wait for 10 ns;
--		ENTER <= x"07030001";
--		wait for 10 ns;
--		ENTER <= x"01010904"; -- avec addition
--		wait for 10 ns;
--		ENTER <= x"06090501"; -- avec sub
--		wait for 10 ns;
--		ENTER <= x"06090501"; -- avec mul


      wait;
   end process;

END;
