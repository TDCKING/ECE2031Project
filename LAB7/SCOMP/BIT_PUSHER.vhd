-- SCOMP peripheral that spits out a sequence of bits
-- sent from SCOMP.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity BIT_PUSHER is

	-- "Generic" parameters are parameters that can be configured by
	-- the end user.  You've used this functionality before, when you
	-- configured devices using the Quartus Megawizard
	generic(
		num_bits : integer := 4
	);
	
	port(
		clk      : in   std_logic ;
		resetn   : in   std_logic ;
		io_write : in   std_logic ;
		cs_data  : in   std_logic ;
		in_data  : in   std_logic ;
		cs_index : in   std_logic ;
		in_index : in   std_logic_vector(15 downto 0) ;
		bit_out  : out  std_logic
	); 

end entity;

architecture internals of BIT_PUSHER is

	-- Index that will be written to
	signal write_pos  : std_logic_vector(15 downto 0);
	
	-- type and signal to store an array of N 1-bit values
	type data_array is array (0 to (num_bits-1)) of std_logic;	
	signal data_buffer : data_array;
	
	
	
begin

	process (clk, resetn)
		
	-- Just like when you enumerated a state type and left the
	-- specific encoding up to the hardware synthesizer, you
	-- can create "variables" of types like "integer" and leave
	-- it up to the synthesizer to figure out how to implement
	-- that in hardware.

	-- Keep in mind though that variables are NOT signals
	-- (and vice versa), and they behave differently.  Most
	-- notably, the synthesizer will always interpret assignments
	-- to variables sequentially.

	-- Variable to track which bit in the sequence is being read
	variable read_pos   : integer range 0 to num_bits-1;
	
	begin
		if resetn = '0' then
			-- reset the index
			read_pos := 0;
			-- set bit_out inactive
			bit_out <= '0';

		elsif (rising_edge(clk)) then
			
			-- Set the output using the currently-indexed bit of the array
			bit_out <= data_buffer(read_pos);
			-- Increment the index
			read_pos := read_pos + 1;
			
		end if;
		
	end process;
	
	process(cs_data, cs_index, resetn)
	begin
		if resetn = '0' then
			-- Note that loops in VHDL do NOT "execute".  They
			-- define hardware.  The following loop is exactly
			-- the same as writing out a bunch of separate lines of
			-- VHDL, one for each index.  It's just a lot more compact.
			for i in 0 to num_bits-1 loop
				data_buffer(i) <= '0';
			end loop;
			
		else
			-- If SCOMP is writing to this device...
			if io_write = '1' then
				-- If SCOMP is writing to the data port, store the bit
				if rising_edge(cs_data) then
					data_buffer(to_integer(unsigned(write_pos))) <= in_data;
				end if;
				
				-- If SCOMP is writing to the index port, store the index
				if rising_edge(cs_index) then
					write_pos <= in_index;
				end if;
			end if;
		end if;
	end process;


end internals;
