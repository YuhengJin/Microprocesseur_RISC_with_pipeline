----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:29 05/15/2019 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
    Port ( QA : in  STD_LOGIC_VECTOR (15 downto 0);
           OP : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin : in  STD_LOGIC_VECTOR (15 downto 0);
           Bout : out  STD_LOGIC_VECTOR (15 downto 0)
			  );
end MUX;

architecture Behavioral of MUX is

begin
	Bout <= QA (15 downto 0) when OP=x"05" else
				Bin (15 downto 0);
	-- Si copie alors copie de data QA sinon reçoit data B.
	-- Car si OP != 05 alors B_pipeline1 = B_pipeline2

end Behavioral;

