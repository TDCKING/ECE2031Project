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

-- DATE "03/17/2022 13:07:11"

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

ENTITY 	ContestJudge IS
    PORT (
	resetn : IN std_logic;
	clock : IN std_logic;
	CL : IN std_logic;
	CR : IN std_logic;
	WL : OUT std_logic;
	WR : OUT std_logic
	);
END ContestJudge;

ARCHITECTURE structure OF ContestJudge IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_CL : std_logic;
SIGNAL ww_CR : std_logic;
SIGNAL ww_WL : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL \WL~output_o\ : std_logic;
SIGNAL \WR~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \CL~input_o\ : std_logic;
SIGNAL \CR~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.gameOn~q\ : std_logic;
SIGNAL \state.winL~0_combout\ : std_logic;
SIGNAL \state.winL~q\ : std_logic;
SIGNAL \state.winR~0_combout\ : std_logic;
SIGNAL \state.winR~q\ : std_logic;
SIGNAL \ALT_INV_CR~input_o\ : std_logic;
SIGNAL \ALT_INV_CL~input_o\ : std_logic;
SIGNAL \ALT_INV_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_state.gameOn~q\ : std_logic;
SIGNAL \ALT_INV_state.winR~q\ : std_logic;
SIGNAL \ALT_INV_state.winL~q\ : std_logic;

BEGIN

ww_resetn <= resetn;
ww_clock <= clock;
ww_CL <= CL;
ww_CR <= CR;
WL <= ww_WL;
WR <= ww_WR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_CR~input_o\ <= NOT \CR~input_o\;
\ALT_INV_CL~input_o\ <= NOT \CL~input_o\;
\ALT_INV_state.idle~q\ <= NOT \state.idle~q\;
\ALT_INV_state.gameOn~q\ <= NOT \state.gameOn~q\;
\ALT_INV_state.winR~q\ <= NOT \state.winR~q\;
\ALT_INV_state.winL~q\ <= NOT \state.winL~q\;

\WL~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.winL~q\,
	devoe => ww_devoe,
	o => \WL~output_o\);

\WR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.winR~q\,
	devoe => ww_devoe,
	o => \WR~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\CL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CL,
	o => \CL~input_o\);

\CR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CR,
	o => \CR~input_o\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\CL~input_o\ & (\CR~input_o\ & \state.idle~q\)) # (\CL~input_o\ & ((\state.idle~q\) # (\CR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CL~input_o\,
	datab => \ALT_INV_CR~input_o\,
	datac => \ALT_INV_state.idle~q\,
	combout => \Selector0~0_combout\);

\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\CL~input_o\ & (\CR~input_o\ & ((!\state.idle~q\) # (\state.gameOn~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000001000100010000000100010001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CL~input_o\,
	datab => \ALT_INV_CR~input_o\,
	datac => \ALT_INV_state.gameOn~q\,
	datad => \ALT_INV_state.idle~q\,
	combout => \Selector1~0_combout\);

\state.gameOn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.gameOn~q\);

\state.winL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.winL~0_combout\ = (!\CR~input_o\ & (\CL~input_o\ & ((\state.gameOn~q\) # (\state.winL~q\)))) # (\CR~input_o\ & (\state.winL~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100110101000101010011010100010101001101010001010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.winL~q\,
	datab => \ALT_INV_CL~input_o\,
	datac => \ALT_INV_CR~input_o\,
	datad => \ALT_INV_state.gameOn~q\,
	combout => \state.winL~0_combout\);

\state.winL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.winL~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.winL~q\);

\state.winR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.winR~0_combout\ = (!\CL~input_o\ & (\CR~input_o\ & ((\state.gameOn~q\) # (\state.winR~q\)))) # (\CL~input_o\ & (\state.winR~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100011101000101010001110100010101000111010001010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.winR~q\,
	datab => \ALT_INV_CL~input_o\,
	datac => \ALT_INV_CR~input_o\,
	datad => \ALT_INV_state.gameOn~q\,
	combout => \state.winR~0_combout\);

\state.winR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.winR~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.winR~q\);

ww_WL <= \WL~output_o\;

ww_WR <= \WR~output_o\;
END structure;


