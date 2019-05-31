----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:03 05/15/2019 
-- Design Name: 
-- Module Name:    LC - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LC is
    Port ( OP : in  STD_LOGIC_VECTOR (7 downto 0);
           Sortie : out  STD_LOGIC_VECTOR (7 downto 0));
end LC;

architecture Behavioral of LC is

begin
	Sortie <= '0' when OP=x"07" else --lecture à l'adresse @j
					'1' when OP=x"08" else --ecriture dans l'@j
					OP (7 downto 0); --Ctrl_Alu

end Behavioral;

