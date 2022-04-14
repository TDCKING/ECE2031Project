-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "02/17/2022 11:50:43"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StateMachine IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	cool : IN std_logic;
	xmas : IN std_logic;
	output : OUT std_logic_vector(1 DOWNTO 0);
	r_en : OUT std_logic;
	g_en : OUT std_logic;
	b_en : OUT std_logic
	);
END StateMachine;

ARCHITECTURE structure OF StateMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cool : std_logic;
SIGNAL ww_xmas : std_logic;
SIGNAL ww_output : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_r_en : std_logic;
SIGNAL ww_g_en : std_logic;
SIGNAL ww_b_en : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \r_en~output_o\ : std_logic;
SIGNAL \g_en~output_o\ : std_logic;
SIGNAL \b_en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \xmas~input_o\ : std_logic;
SIGNAL \cool~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.blue~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.red~q\ : std_logic;
SIGNAL \state.green~0_combout\ : std_logic;
SIGNAL \state.green~q\ : std_logic;
SIGNAL \ALT_INV_cool~input_o\ : std_logic;
SIGNAL \ALT_INV_xmas~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_state.red~q\ : std_logic;
SIGNAL \ALT_INV_state.blue~q\ : std_logic;
SIGNAL \ALT_INV_state.green~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_cool <= cool;
ww_xmas <= xmas;
output <= ww_output;
r_en <= ww_r_en;
g_en <= ww_g_en;
b_en <= ww_b_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cool~input_o\ <= NOT \cool~input_o\;
\ALT_INV_xmas~input_o\ <= NOT \xmas~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_state.red~q\ <= NOT \state.red~q\;
\ALT_INV_state.blue~q\ <= NOT \state.blue~q\;
\ALT_INV_state.green~q\ <= NOT \state.green~q\;

\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.green~q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.blue~q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

\r_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.red~q\,
	devoe => ww_devoe,
	o => \r_en~output_o\);

\g_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.green~q\,
	devoe => ww_devoe,
	o => \g_en~output_o\);

\b_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.blue~q\,
	devoe => ww_devoe,
	o => \b_en~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\xmas~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xmas,
	o => \xmas~input_o\);

\cool~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cool,
	o => \cool~input_o\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.green~q\ & (\state.blue~q\ & ((\cool~input_o\)))) # (\state.green~q\ & (((!\xmas~input_o\) # (\cool~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110111010100000111011101010000011101110101000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.green~q\,
	datab => \ALT_INV_state.blue~q\,
	datac => \ALT_INV_xmas~input_o\,
	datad => \ALT_INV_cool~input_o\,
	combout => \Selector1~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\state.blue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.blue~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((!\state.blue~q\ & ((!\state.green~q\) # (!\xmas~input_o\)))) # (\cool~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011111111110010001111111111001000111111111100100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.green~q\,
	datab => \ALT_INV_state.blue~q\,
	datac => \ALT_INV_xmas~input_o\,
	datad => \ALT_INV_cool~input_o\,
	combout => \Selector0~0_combout\);

\state.red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.red~q\);

\state.green~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.green~0_combout\ = !\state.red~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.red~q\,
	combout => \state.green~0_combout\);

\state.green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.green~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.green~q\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_r_en <= \r_en~output_o\;

ww_g_en <= \g_en~output_o\;

ww_b_en <= \b_en~output_o\;
END structure;


