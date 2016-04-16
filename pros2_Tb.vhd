LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY pros2_Tb IS
END pros2_Tb;
 
ARCHITECTURE behavior OF pros2_Tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pros2
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ALURESULT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal ALURESULT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pros2 PORT MAP (
          clk => clk,
          reset => reset,
          ALURESULT => ALURESULT
        );

  -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
   end process;
 

	
   -- Stimulus process
   stim_proc: process
   begin		
    	reset <= '0';
		wait for 10 ns;
		reset <= '1' ;
		

  
      wait;
   end process;

END;
