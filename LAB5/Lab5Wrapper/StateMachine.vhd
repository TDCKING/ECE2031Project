-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity StateMachine is

	port(
		
		xmas	: in std_logic;
		cool	: in std_logic;
		clk		 : in	std_logic;
		reset	 : in	std_logic;
		--output	 : out	std_logic_vector(1 downto 0);
		r_en	: out std_logic;
		g_en	: out std_logic;
		b_en	: out std_logic
		
	);

end entity;

architecture rtl of StateMachine is

	-- Build an enumerated type for the state machine
	type state_type is (red, green, blue);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '0' then
			state <= red;
		elsif (rising_edge(clk)) then
			case state is
				when red=>
					state <= green;
				when green=>
					if xmas = '1' and cool = '0' then
						state <= red;
					else
						state <= blue;
					end if;
				when blue=>
					if cool = '0' then
						state <= red;
					else
						state <= blue;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when red =>
				-- output <= "00";
				r_en <= '1';
				g_en <= '0';
				b_en <= '0';
			when green =>
				-- output <= "01";
				r_en <= '0';
				g_en <= '1';
				b_en <= '0';
			when blue =>
				-- output <= "10";
				r_en <= '0';
				g_en <= '0';
				b_en <= '1';
		end case;
	end process;

end rtl;
