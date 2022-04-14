library ieee;
use ieee.std_logic_1164.all;

-- do not modify this entity statement.
entity ContestJudge is  
	port(
		resetn,
		clock,
		CL, CR      : in  std_logic;
		WL, WR      : out std_logic
	);
end ContestJudge;


architecture internals of ContestJudge is
-- do not change anything above this comment.

	type state_type is ( idle, gameOn, winR, winL ); -- define a type to represent the state
	signal state : state_type;   -- create a signal to store the state
	-- you may declare additional signals here if desired.

	begin

	-- process block for the state machine
	process(clock, resetn) begin
		if resetn = '0' then
			state <= idle ;
		elsif rising_edge(clock) then
			case state is
				when gameOn =>
					if (CL = '0') and (CR = '0') then
						state <= idle;
					elsif (CL = '0') and (CR = '1') then
						state <= winR;
					elsif (CL = '1') and (CR = '0') then
						state <= winL;
					elsif (CL = '1') and (CR = '1') then
						state <= gameOn;
					end if;
					
				when idle =>
					if (CL = '1') and (CR = '1') then
						state <= gameOn;
					else
						state <= idle;
					end if;
				
				when winR =>
					if (CL = '0') and (CR = '0') then
						state <= idle;
					else
						state <= winR;
					end if;
					
				when winL =>
					if (CL = '0') and (CR = '0') then
						state <= idle;
					else
						state <= winL;
					end if;
					
				when others =>
					state <= idle;
				end case;
		end if;
	end process;

	-- combinational assignments for the outputs
	WL <= '1' WHEN state = winL ELSE '0';
	WR <= '1' WHEN state = winR ELSE '0';

-- do not change anything below this comment.
end internals;