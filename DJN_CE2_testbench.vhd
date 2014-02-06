--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:39:52 01/29/2014
-- Design Name:   
-- Module Name:   C:/Users/Danial.Neebel/Documents/GitHub/ECE281_CE2/DJN_CE2_testbench.vhd
-- Project Name:  DJN_CEX2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DJN_CEX2_Struct
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
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DJN_CE2_testbench IS
END DJN_CE2_testbench;
 
ARCHITECTURE behavior OF DJN_CE2_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DJN_CEX2_Struct
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         EN : IN  std_logic;
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);

   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	signal count : std_logic_vector(3 downto 0) := "0000";
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DJN_CEX2_Struct PORT MAP (
          I0 => count(1),
          I1 => count(2),
          EN => count(0),
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      -- insert stimulus here 
--		I0 <= '0';
--		I1 <= '0';
--		EN <= '0';
--		Assert Y = "0100"
--			REPORT "Enable Works!" SEVERITY NOTE;
--			
--				
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      -- insert stimulus here 
--		I0 <= '0';
--		I1 <= '0';
--		EN <= '1';
--
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      -- insert stimulus here 
--		I0 <= '1';
--		I1 <= '0';
--		EN <= '1';
--		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      -- insert stimulus here 
--		I0 <= '0';
--		I1 <= '1';
--		EN <= '1';
--		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      -- insert stimulus here 
--		I0 <= '1';
--		I1 <= '1';
--		EN <= '1';
		
		for I in 0 to 7 loop
			wait for 100 ns;
			REPORT "For I1 = "  
						& std_logic'image(count(2))
						& " I0 = "
						& std_logic'image(count(1))
						& " EN = "
						& std_logic'image(count(0))
						& " Y = "
						& std_logic'image(Y(3))
						& std_logic'image(Y(2))
						& std_logic'image(Y(1))
						& std_logic'image(Y(0))
						
				SEVERITY NOTE;
				count <= count + 1;
				
		end loop;
		
       wait;
   end process;

END;
