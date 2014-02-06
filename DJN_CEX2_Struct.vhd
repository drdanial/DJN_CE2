----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Danial Neebel
-- 
-- Create Date:    08:57:49 01/29/2014 
-- Design Name:   Decoder
-- Module Name:    DJN_CEX2_Struct - Structural 
-- Project Name: Computer Exercise 2
-- Target Devices: Artix 7
-- Tool versions: Xilinx 14.6
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

entity DJN_CEX2_Struct is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end DJN_CEX2_Struct;

architecture Structural of DJN_CEX2_Struct is

component INVERTER
    Port ( A : in  STD_LOGIC;
           F : out  STD_LOGIC);
end component;

component AND3
port (
		A : in  STD_LOGIC;
      B : in  STD_LOGIC;
      C : in  STD_LOGIC;
      F : out  STD_LOGIC);
end component;

signal I0not, I1not, Ynot : STD_LOGIC;

begin

I0inverter: INVERTER PORT MAP (I0, I0not);
--	A => I0,
--	F => I0not);
--	
I1inverter: INVERTER PORT MAP (
	A => I1,
	F => I1not);
	
AND_Y0:  AND3 PORT MAP (
	A => I0not,
	B => I1not,
	C => EN,
	F => Y(0));
	
AND_Y1:  AND3 PORT MAP (
	A => I0,
	B => I1not,
	C => EN,
	F => Y(1));
	
AND_Y2:  AND3 PORT MAP (
	A => I0not,
	B => I1,
	C => EN,
	F => Y(2));
	
AND_Y3:  AND3 PORT MAP (
	A => I0,
	B => I1,
	C => EN,
	F => Y(3));
	
				

end Structural;

