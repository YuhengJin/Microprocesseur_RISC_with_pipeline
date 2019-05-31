----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:32 05/15/2019 
-- Design Name: 
-- Module Name:    Processus - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Processus is
	
    Port ( CLK : in STD_LOGIC;
			  RST : in STD_LOGIC;
			  ENTER : in  STD_LOGIC_VECTOR (31 downto 0)			  
			  -- LC
			  --OP : in  STD_LOGIC_VECTOR (7 downto 0);
           --Sortie : out  STD_LOGIC_VECTOR (7 downto 0);
			  -- MUX
			  --QA : in  STD_LOGIC_VECTOR (15 downto 0);
           --OP : in  STD_LOGIC_VECTOR (7 downto 0);
           --Bin : in  STD_LOGIC_VECTOR (15 downto 0);
           --Bout : out  STD_LOGIC_VECTOR (15 downto 0)
			  );
			  
end Processus;

architecture Behavioral of Processus is
	--Déclaration 4 Pipelines
--	type pipeline is record
--		LI_DI, DI_EX, EX_MEM,MEM_RE : STD_LOGIC;
--	end record
--	
--	type Registre is record
--		RE : STD_LOGIC;
--	end record
--	
--	type Decodeur is record
--		DE : STD_LOGIC;
--	end record
	
	COMPONENT Decodeur
    PORT(
         INS_DI : IN  std_logic_vector(31 downto 0);
         A : OUT  std_logic_vector(15 downto 0);
         OP : OUT  std_logic_vector(7 downto 0);
         B : OUT  std_logic_vector(15 downto 0);
         C : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT pipeline
    PORT(
         Ain : IN  std_logic_vector(15 downto 0);
         OPin : IN  std_logic_vector(7 downto 0);
         Bin : IN  std_logic_vector(15 downto 0);
         Cin : IN  std_logic_vector(15 downto 0);
         Aout : OUT  std_logic_vector(15 downto 0);
         OPout : OUT  std_logic_vector(7 downto 0);
         Bout : OUT  std_logic_vector(15 downto 0);
         Cout : OUT  std_logic_vector(15 downto 0);
         CLK : IN  std_logic
        );
    END COMPONENT;
	 
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

    COMPONENT ALU
     PORT(
				A : IN  std_logic_vector(15 downto 0);
				B : IN  std_logic_vector(15 downto 0);
				C : OUT  std_logic;
				O : OUT  std_logic;
				N : OUT  std_logic;
				Z : OUT  std_logic;
				Ctr_Alu : IN  std_logic_vector(3 downto 0);
				S : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT Memory
		PORT(
			  adr : in  STD_LOGIC_VECTOR (7 downto 0);
           RW : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
           dIN : in  STD_LOGIC_VECTOR (7 downto 0);
           dOUT : out  STD_LOGIC_VECTOR (7 downto 0));
	 END COMPONENT;
	 
	 type sign_memory is
	 record
		adr : STD_LOGIC_VECTOR (7 downto 0);
      RW :  STD_LOGIC;
		CLK : STD_LOGIC;
		RST : STD_LOGIC;
      dIN : STD_LOGIC_VECTOR (7 downto 0);
      dOUT : STD_LOGIC_VECTOR (7 downto 0);
	 end record;
	 signal m : sign_memory;	
	 
	type sign_pipeline is
	record
		Ain : std_logic_vector(15 downto 0);
      OPin : std_logic_vector(7 downto 0);
      Bin : std_logic_vector(15 downto 0);
      Cin : std_logic_vector(15 downto 0);
      Aout : std_logic_vector(15 downto 0);
      OPout : std_logic_vector(7 downto 0);
      Bout : std_logic_vector(15 downto 0);
      Cout : std_logic_vector(15 downto 0);
      CLK : std_logic;
	end record;
	signal li : sign_pipeline;
	signal di : sign_pipeline;
	signal ex : sign_pipeline;
	signal mem : sign_pipeline;
	
	type sign_reg is
	record
		aA : std_logic_vector(3 downto 0);
      aB : std_logic_vector(3 downto 0);
      aW : std_logic_vector(3 downto 0);
      WE : std_logic;
      DATA : std_logic_vector(15 downto 0);
      RST : std_logic;
      CLK : std_logic;
      QA : std_logic_vector(15 downto 0);
      QB : std_logic_vector(15 downto 0);
	end record;
	signal re : sign_reg;
	
	type sign_a is
	record
		A : std_logic_vector(15 downto 0);
      B : std_logic_vector(15 downto 0);
      C : std_logic;
      O : std_logic;
      N : std_logic;
      Z : std_logic;
      Ctr_Alu : std_logic_vector(3 downto 0);
      S : std_logic_vector(15 downto 0);
	end record;
	signal al : sign_a;
	
	type sign_dec is
	record
		INS_DI : std_logic_vector(31 downto 0);
      A : std_logic_vector(15 downto 0);
      OP : std_logic_vector(7 downto 0);
      B : std_logic_vector(15 downto 0);
      C : std_logic_vector(15 downto 0);
	end record;
	signal de : sign_dec;
	
	signal o : STD_LOGIC_VECTOR (7 downto 0);

begin

 
	-- Instantiate the Unit Under Test (UUT)
   i_dec: Decodeur PORT MAP (
          INS_DI => de.INS_DI,
          A => de.A,
          OP => de.OP,
          B => de.B,
          C => de.C
        );
		  
	i_reg: Registre PORT MAP (
          aA => re.aA,
          aB => re.aB,
          aW => re.aW,
          WE => re.WE,
          DATA => re.DATA,
          RST => RST,
          CLK => CLK,
          QA => re.QA,
          QB => re.QB
        );
	
	i_alu: ALU PORT MAP (
          A => al.A,
          B => al.B,
          C => al.C,
          O => al.O,
          N => al.N,
          Z => al.Z,
          Ctr_Alu => al.Ctr_Alu,
          S => al.S
        );
		  
	i_li: pipeline PORT MAP (
          Ain => li.Ain,
          OPin => li.OPin,
          Bin => li.Bin,
          Cin => li.Cin,
          Aout => li.Aout,
          OPout => li.OPout,
          Bout => li.Bout,
          Cout => li.Cout,
          CLK => CLK
        );
	i_di: pipeline PORT MAP (
          Ain => di.Ain,
          OPin => di.OPin,
          Bin => di.Bin,
          Cin => di.Cin,
          Aout => di.Aout,
          OPout => di.OPout,
          Bout => di.Bout,
          Cout => di.Cout,
          CLK => CLK
        );
	i_ex: pipeline PORT MAP (
          Ain => ex.Ain,
          OPin => ex.OPin,
          Bin => ex.Bin,
          Cin => ex.Cin,
          Aout => ex.Aout,
          OPout => ex.OPout,
          Bout => ex.Bout,
          Cout => ex.Cout,
          CLK => CLK
        );
	i_mem: pipeline PORT MAP (
          Ain => mem.Ain,
          OPin => mem.OPin,
          Bin => mem.Bin,
          Cin => mem.Cin,
          Aout => mem.Aout,
          OPout => mem.OPout,
          Bout => mem.Bout,
          Cout => mem.Cout,
          CLK => CLK
        );
	i_memory: Memory PORT MAP (
          adr => m.adr,
          RW => m.RW,
			 CLK => CLK,
			 RST => RST,
          dIN => m.dIN,
          dOUT => m.dOUT
        );
		  
	de.INS_DI <= ENTER;
		  		  
	li.Ain <= de.A;
	li.OPin <= de.OP;
	li.Bin <= de.B;
	li.Cin <= de.C;
	
	di.Ain <= li.Aout;
	di.OPin <= li.OPout;
	di.Bin <= re.QA when li.OPout=x"05" or li.OPout=x"01" or li.OPout=x"02" or li.OPout=x"03" or li.OPout=x"08" else --COP
				li.Bout;
	
	ex.Ain <= di.Aout;
	ex.OPin <= di.OPout;
	ex.Bin <= al.S when di.OPout=x"01" else --ADD
			    al.S when di.OPout=x"03" else --SUB
			    al.S when di.OPout=x"02" else --MUL
				 di.Bout;
	
	mem.Ain <= ex.Aout;
	mem.OPin <= ex.OPout;
	mem.Bin <= x"00" & m.dOUT when ex.OPout=x"07" else --LOAD
				  ex.Bout;
	
	re.DATA <= mem.Bout;
	re.aW <= mem.Aout(3 downto 0);
	re.WE <= '1' when mem.OPout=x"08" or mem.OPout=x"06" or mem.OPout=x"01" or mem.OPout=x"02" or mem.OPout=x"03" else
				 '0';
	--COP
	re.aA <= li.Bout(3 downto 0) when li.OPout=x"05" or li.OPout=x"01" or li.OPout=x"02" or li.OPout=x"03" or li.OPout=x"08" else
				x"0";
				
	--ALU
	re.aB <= li.Cout(3 downto 0);
	di.Cin <= re.QB;	
	al.B <= di.Cout; --quand ADD,SUB,MUL,DIV
				
	al.A <= di.Bout when di.OPout=x"01" else --ADD
			  di.Bout when di.OPout=x"03" else --SUB
			  di.Bout when di.OPout=x"02" else --MUL
			  --di.Bout when di.OPout=x"04" else --DIV
			  x"0000";
			  
	al.Ctr_Alu <= di.OPout(3 downto 0);
	
	--LOAD
	m.adr <= ex.Aout(7 downto 0) when ex.OPout=x"08" else --STORE
				ex.Bout(7 downto 0); 
	m.RW <= '1' when ex.OPout=x"08" else --STORE
			  '0';
			  
	--STORE
	m.dIN <= ex.Bout(7 downto 0) when ex.OPout=x"08" else
				x"00";
				
	
	
	
				 
	
	

end Behavioral;

