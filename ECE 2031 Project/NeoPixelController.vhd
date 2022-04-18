-- WS2812 communication interface starting point for
-- ECE 2031 final project spring 2022.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

library lpm;
use lpm.lpm_components.all;

entity NeoPixelController is

	port(
		clk_10M   : in   std_logic;
		resetn    : in   std_logic;
		io_write  : in   std_logic ;
		cs_addr   : in   std_logic ;
		cs_data   : in   std_logic ;
		ca_data	 : in   std_logic ;
		cr_data	 : in   std_logic ;
		save_data : in   std_logic ;
		load_data : in   std_logic ;
		red_data	 : in	  std_logic ;
		green_data  : in   std_logic ;
		blue_data : in   std_logic ;
		data_in   : inout   std_logic_vector(15 downto 0);
		sda       : out  std_logic
	); 

end entity;

architecture internals of NeoPixelController is
	
	-- Signals for the RAM read and write addresses
	signal ram_read_addr, ram_write_addr : std_logic_vector(9 downto 0);
	
	signal write_addr : std_logic_vector(7 downto 0);
	-- RAM write enable
	signal ram_we : std_logic;
	
	signal ram_re : std_logic;
	
	signal reading_buffer_all : std_logic_vector(23 downto 0);
	
	signal reading_buffer_red, reading_buffer_green, reading_buffer_blue : std_logic_vector(7 downto 0);
	
	signal reading_buffer : std_logic_vector(15 downto 0);

	-- Signals for data coming out of memory
	signal ram_read_data, ram_write_data : std_logic_vector(23 downto 0);
	-- Signal to store the current output pixel's color data
	signal pixel_buffer : std_logic_vector(23 downto 0);

	-- Signal SCOMP will write to before it gets stored into memory
	signal ram_write_buffer : std_logic_vector(23 downto 0);
	
	signal read_port : std_logic_vector(1 downto 0);
	signal write_port : std_logic_vector(1 downto 0);

	-- RAM interface state machine signals
	type write_states is (idle, change_all, storing, reading);
	signal wstate: write_states;

	
begin

	-- This is the RAM that will store the pixel data.
	-- It is dual-ported.  SCOMP will access port "A",
	-- and the NeoPixel controller will access port "B".
	pixelRAM : altsyncram
	GENERIC MAP (
		address_reg_b => "CLOCK0",
		clock_enable_input_a => "BYPASS",
		clock_enable_input_b => "BYPASS",
		clock_enable_output_a => "BYPASS",
		clock_enable_output_b => "BYPASS",
		indata_reg_b => "CLOCK0",
		init_file => "pixeldata.mif",
		intended_device_family => "Cyclone V",
		lpm_type => "altsyncram",
		numwords_a => 1024,
		numwords_b => 1024,
		operation_mode => "BIDIR_DUAL_PORT",
		outdata_aclr_a => "NONE",
		outdata_aclr_b => "NONE",
		outdata_reg_a => "UNREGISTERED",
		outdata_reg_b => "UNREGISTERED",
		power_up_uninitialized => "FALSE",
		read_during_write_mode_mixed_ports => "OLD_DATA",
		read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
		read_during_write_mode_port_b => "NEW_DATA_NO_NBE_READ",
		widthad_a => 10,
		widthad_b => 10,
		width_a => 24,
		width_b => 24,
		width_byteena_a => 1,
		width_byteena_b => 1,
		wrcontrol_wraddress_reg_b => "CLOCK0"
	)
	PORT MAP (
		address_a => ram_write_addr,
		address_b => ram_read_addr,
		clock0 => clk_10M,
		data_a => ram_write_buffer,
		data_b => x"000000",
		wren_a => ram_we,
		wren_b => '0',
		q_a => ram_write_data,
		q_b => ram_read_data
	);
	
	io_bus: lpm_bustri
	generic map (
		lpm_width => 16
	)
	port map (
		data     => reading_buffer,
		enabledt => ram_re,
		tridata  => data_in
	);


	-- This process implements the NeoPixel protocol by
	-- using several counters to keep track of clock cycles,
	-- which pixel is being written to, and which bit within
	-- that data is being written.
	process (clk_10M, resetn)
		-- protocol timing values (in 100s of ns)
		constant t1h : integer := 8; -- high time for '1'
		constant t0h : integer := 3; -- high time for '0'
		constant ttot : integer := 12; -- total bit time
		
		constant npix : integer := 256;

		-- which bit in the 24 bits is being sent
		variable bit_count   : integer range 0 to 31;
		-- counter to count through the bit encoding
		variable enc_count   : integer range 0 to 31;
		-- counter for the reset pulse
		variable reset_count : integer range 0 to 1000;
		-- Counter for the current pixel
		variable pixel_count : integer range 0 to 255;
		
		variable refresh_mode : integer range 0 to 3;
		
		
		
	begin
		
		if resetn = '0' then
			-- reset all counters
			bit_count := 23;
			enc_count := 0;
			reset_count := 1000;
			refresh_mode := 0;
			-- set sda inactive
			sda <= '0';

		elsif (rising_edge(clk_10M)) then
			
			if (cr_data = '1' and io_write = '1') then 
				if (refresh_mode = 0) then 
					if (data_in = "0000000000000001") then
						refresh_mode := 1;
					end if;
				elsif (refresh_mode = 1) then
					if (data_in = "0000000000000000") then
						refresh_mode := 0;
					elsif (data_in = "0000000000000001") then
						refresh_mode := 2;
					end if;
				end if;
			end if;
			
			if (load_data = '1' and io_write = '1') then
				if (data_in(1 downto 0) = "0000000000000000") then 
					read_port <= "00";
				elsif (data_in = "0000000000000001") then
					read_port <= "01";
				elsif (data_in = "0000000000000010") then
					read_port <= "10";
				elsif (data_in = "0000000000000011") then
					read_port <= "11";
				end if;
			end if;

			-- This IF block controls the various counters
			if reset_count /= 0 then -- in reset/end-of-frame period
				-- during reset period, ensure other counters are reset
				pixel_count := 0;
				bit_count := 23;
				enc_count := 0;
				-- decrement the reset count
				if (refresh_mode = 0 or refresh_mode = 2) then
					reset_count := reset_count - 1;
				end if;
				-- load data from memory
				pixel_buffer <= ram_read_data;
				
				
			else -- not in reset period (i.e. currently sending data)
				-- handle reaching end of a bit
				if (refresh_mode = 2) then
					refresh_mode := 1;
				end if;
				if enc_count = (ttot-1) then -- is end of this bit?
					enc_count := 0;
					-- shift to next bit
					pixel_buffer <= pixel_buffer(22 downto 0) & '0';
					if bit_count = 0 then -- is end of this pixels's data?
						bit_count := 23; -- start a new pixel
						pixel_buffer <= ram_read_data;
						if pixel_count = npix-1 then -- is end of all pixels?
							-- begin the reset period
							reset_count := 1000;
						else
							pixel_count := pixel_count + 1;
						end if;
					else
						-- if not end of this pixel's data, decrement count
						bit_count := bit_count - 1;
					end if;
				else
					-- within a bit, count to achieve correct pulse widths
					enc_count := enc_count + 1;
				end if;
			end if;
			
			
			
			-- This IF block controls the RAM read address to step through pixels
			if reset_count /= 0 then
				ram_read_addr <= read_port & x"00";
			elsif (bit_count = 1) AND (enc_count = 0) then
				-- increment the RAM address as each pixel ends
				ram_read_addr <= ram_read_addr + 1;
			end if;
			
			
			-- This IF block controls sda
			if reset_count > 0 then
				-- sda is 0 during reset/latch
				sda <= '0';
			elsif 
				-- sda is 1 in the first part of a bit.
				-- Length of first part depends on if bit is 1 or 0
				( (pixel_buffer(23) = '1') and (enc_count < t1h) )
				or
				( (pixel_buffer(23) = '0') and (enc_count < t0h) )
				then sda <= '1';
			else
				sda <= '0';
			end if;
			
		end if;
	end process;
	
	
	process(clk_10M, resetn, cs_addr)
	
		constant numpix	:	integer	:= 256;
		
		variable pixels	:	integer range 0 to 255;
		
		variable increment_en	:  integer range 0 to 1;
		
	begin
		-- For this implementation, saving the memory address
		-- doesn't require anything special.  Just latch it when
		-- SCOMP sends it.
		if resetn = '0' then
			ram_write_addr <= write_port & x"00";
		elsif rising_edge(clk_10M) then
			-- If SCOMP is writing to the address register...
			if (io_write = '1') and (cs_addr='1') then
				ram_write_addr <= write_port & data_in(7 downto 0);
			elsif (io_write = '1') and (ca_data='1') then
				ram_write_addr <= write_port & x"00";
			elsif (wstate = change_all) then
				ram_write_addr <= ram_write_addr + 1;
			elsif ((wstate = storing) and (increment_en = 1)) then
				if (ram_write_addr(7 downto 0) /= "11111111") then
					ram_write_addr <= ram_write_addr + 1;
				end if;
			end if;
		end if;
	
	
		-- The sequnce of events needed to store data into memory will be
		-- implemented with a state machine.
		-- Although there are ways to more simply connect SCOMP's I/O system
		-- to an altsyncram module, it would only work with under specific 
		-- circumstances, and would be limited to just simple writes.  Since
		-- you will probably want to do more complicated things, this is an
		-- example of something that could be extended to do more complicated
		-- things.
		-- Note that 'ram_we' is *not* implemented as a Moore output of this state
		-- machine, because Moore outputs are susceptible to glitches, and
		-- that's a bad thing for memory control signals.
		if resetn = '0' then
			wstate <= idle;
			ram_we <= '0';
			ram_write_buffer <= x"000000";
			-- Note that resetting this device does NOT clear the memory.
			-- Clearing memory would require cycling through each address
			-- and setting them all to 0.
		elsif rising_edge(clk_10M) then
			if (save_data = '1' and io_write = '1') then
				if (data_in(1 downto 0) = "0000000000000000") then 
					write_port <= "00";
				elsif (data_in = "0000000000000001") then
					write_port <= "01";
				elsif (data_in = "0000000000000010") then
					write_port <= "10";
				elsif (data_in = "0000000000000011") then
					write_port <= "11";
				end if;
			end if;
			
			case wstate is
			when idle =>
				pixels := 0;
				if (io_write = '1') and (cs_data='1') then
					-- latch the current data into the temporary storage register,
					-- because this is the only time it'll be available.
					-- Convert RGB565 to 24-bit color
					ram_write_buffer <= data_in(10 downto 5) & "00" & data_in(15 downto 11) & "000" & data_in(4 downto 0) & "000";
					-- can raise ram_we on the upcoming transition, because data
					-- won't be stored until next clock cycle.
					ram_we <= '1';
					-- Change state
					wstate <= storing;
				elsif (io_write = '1') and (ca_data='1') then
					ram_write_buffer <= data_in(10 downto 5) & "00" & data_in(15 downto 11) & "000" & data_in(4 downto 0) & "000";
					ram_we <= '1';
					wstate <= change_all;
				elsif (io_write = '1') and (red_data = '1') then
					ram_write_buffer <= reading_buffer_all(23 downto 16) & data_in(7 downto 0) & reading_buffer_all(7 downto 0);
					ram_we <= '1';
					increment_en := 0;
					wstate <= storing;
				elsif (io_write = '1') and (green_data = '1') then
					ram_write_buffer <= data_in(7 downto 0) & reading_buffer_all(15 downto 8) & reading_buffer_all(7 downto 0);
					ram_we <= '1';
					increment_en := 0;
					wstate <= storing;
				elsif (io_write = '1') and (blue_data = '1') then
					ram_write_buffer <= reading_buffer_all(23 downto 16) & reading_buffer_all(15 downto 8) & data_in(7 downto 0);
					ram_we <= '1';
					increment_en := 1;
					wstate <= storing;
				else
					reading_buffer_all <= ram_write_data;
				end if;
			when change_all =>
				if pixels = numpix-2 then
					wstate <= storing;
				else 
					pixels := pixels + 1;
				end if;
			when storing =>
				-- All that's needed here is to lower ram_we.  The RAM will be
				-- storing data on this clock edge, so ram_we can go low at the
				-- same time.
				ram_we <= '0';
				wstate <= idle;
			when others =>
				wstate <= idle;
			end case;
		end if;
	end process;
	
	process (reading_buffer_all, red_data, green_data, blue_data, cs_data, io_write, reading_buffer)

	
	begin
	
		if (red_data = '1' and io_write = '0') then
			reading_buffer <= x"00" & reading_buffer_all(15 downto 8);
		elsif (green_data = '1' and io_write = '0') then
			reading_buffer <= x"00" & reading_buffer_all(23 downto 16);
		elsif (blue_data = '1' and io_write = '0') then
			reading_buffer <= x"00" & reading_buffer_all(7 downto 0);
		elsif (cs_data ='1' and io_write = '0') then
			reading_buffer <= reading_buffer_all(15 downto 11) & reading_buffer_all(23 downto 18) & reading_buffer_all(7 downto 3);
		end if;
	
		ram_re <= ((red_data AND NOT (io_write)) OR (green_data AND NOT (io_write)) OR (blue_data AND NOT (io_write)));
	
	end process;
			

	
	
end internals;
