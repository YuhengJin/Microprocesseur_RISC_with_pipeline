----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:36 05/14/2019 
-- Design Name: 
-- Module Name:    Decodeur - Behavioral 
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

entity Decodeur is
    Port ( INS_DI : in  STD_LOGIC_VECTOR (31 downto 0);
           A : out  STD_LOGIC_VECTOR (15 downto 0);
           OP : out  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (15 downto 0);
           C : out  STD_LOGIC_VECTOR (15 downto 0));
end Decodeur;

architecture Behavioral of Decodeur is
	signal o : STD_LOGIC_VECTOR (7 downto 0);
begin
	o <= INS_DI (31 downto 24);
	OP <= o;
	A <= INS_DI (23 downto 8) when o=x"08" else
		  x"00" & INS_DI (23 downto 16);
	B <= INS_DI(15 downto 0) when o=x"06" or o=x"07" else
		  (x"00" & INS_DI(7 downto 0)) when o=x"08" else
		  (x"00" & INS_DI (15 downto 8));
	C <= x"00" & INS_DI (7 downto 0);

end Behavioral;

