--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:52:39 05/14/2019
-- Design Name:   
-- Module Name:   /home/yujin/4B/ArchiMat/Projet-System-Info/testRegistre.vhd
-- Project Name:  Projet-System-Info
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Registre
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
 
ENTITY testRegistre IS
END testRegistre;
 
ARCHITECTURE behavior OF testRegistre IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registre
    PORT(
         aA : IN  std_logic_vector(3 downto 0);
         aB : IN  std_logic_vector(3 downto 0);
         aW : IN  std_logic_vector(3 downto 0);
         WE : IN  std_logic;
         DATA : IN  std_logic_vector(15 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         QA : OUT  std_logic_vector(15 downto 0);
         QB : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal aA : std_logic_vector(3 downto 0) := (others => '0');
   signal aB : std_logic_vector(3 downto 0) := (others => '0');
   signal aW : std_logic_vector(3 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal DATA : std_logic_vector(15 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal QA : std_logic_vector(15 downto 0);
   signal QB : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registre PORT MAP (
          aA => aA,
          aB => aB,
          aW => aW,
          WE => WE,
          DATA => DATA,
          RST => RST,
          CLK => CLK,
          QA => QA,
          QB => QB
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

      wait for CLK_period*10;

      -- insert stimulus here 
		RST <= '1';
		--DATA <= x"0008";  --Test reussi pour écrire
		WE <= '1';
		
		--RST <= '0';     --Test reussi pour réinitialisation

		aA<= x"1";
		aW<= x"1";
		DATA <= x"0008";  --Test reussi pour écrire et lire en même temps, on lui forece le même regitre
		
		
		
		
		

      wait;
   end process;

END;
