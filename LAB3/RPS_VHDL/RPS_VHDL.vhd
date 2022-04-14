library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RPS_VHDL is                -- Describes the device from the outside
    port(                          -- Defines the signals coming into and out of the device
        R1, P1, S1  : in  std_logic;
        R2, P2, S2  : in  std_logic;
        W1, W2      : out std_logic;
		  E1, E2      : out std_logic
    );
end RPS_VHDL;


architecture Internals of RPS_VHDL is   -- Define the internal architecture of the device

	-- Create a 6-bit vector that will give us easy access to all inputs
	signal all_inputs : std_logic_vector(5 downto 0);
	
begin

	-- "&" is CONCATENATION, not logical AND.
	all_inputs <= R1 & P1 & S1 & R2 & P2 & S2;
	
	-- Using a "selected signal assignment", aka "with/select"
	with all_inputs select W1 <=
		'1' when "100001", 
		'1' when"010100", 
		'1' when "001010",
		'0' when others;

	-- Using a "conditional signal assignment", aka "when/else"
	W2 <=
		'1' when (all_inputs = "100010") or (all_inputs = "001100") or (all_inputs = "010001") else
		'0';
	
	-- Using when/else in a different way
	E1 <=
		'1' when ((R1 = '1') and (S1 = '1')) or ((R1 = '1') and (P1 = '1')) or ((S1 = '1') and (P1 = '1')) else
		'0';
	
	-- Using Boolean expression
	E2 <= (R2 and S2) or (R2 and P2) or (S2 and P2);
			

end Internals;
