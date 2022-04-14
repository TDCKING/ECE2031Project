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

-- DATE "02/03/2022 12:03:05"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RPS_VHDL IS
    PORT (
	R1 : IN std_logic;
	P1 : IN std_logic;
	S1 : IN std_logic;
	R2 : IN std_logic;
	P2 : IN std_logic;
	S2 : IN std_logic;
	W1 : OUT std_logic;
	W2 : OUT std_logic;
	E1 : OUT std_logic;
	E2 : OUT std_logic
	);
END RPS_VHDL;

ARCHITECTURE structure OF RPS_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_W1 : std_logic;
SIGNAL ww_W2 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL \W1~output_o\ : std_logic;
SIGNAL \W2~output_o\ : std_logic;
SIGNAL \E1~output_o\ : std_logic;
SIGNAL \E2~output_o\ : std_logic;
SIGNAL \R1~input_o\ : std_logic;
SIGNAL \P1~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \R2~input_o\ : std_logic;
SIGNAL \P2~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \W2~0_combout\ : std_logic;
SIGNAL \E1~0_combout\ : std_logic;
SIGNAL \E2~0_combout\ : std_logic;
SIGNAL \ALT_INV_S2~input_o\ : std_logic;
SIGNAL \ALT_INV_P2~input_o\ : std_logic;
SIGNAL \ALT_INV_R2~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_P1~input_o\ : std_logic;
SIGNAL \ALT_INV_R1~input_o\ : std_logic;

BEGIN

ww_R1 <= R1;
ww_P1 <= P1;
ww_S1 <= S1;
ww_R2 <= R2;
ww_P2 <= P2;
ww_S2 <= S2;
W1 <= ww_W1;
W2 <= ww_W2;
E1 <= ww_E1;
E2 <= ww_E2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S2~input_o\ <= NOT \S2~input_o\;
\ALT_INV_P2~input_o\ <= NOT \P2~input_o\;
\ALT_INV_R2~input_o\ <= NOT \R2~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_P1~input_o\ <= NOT \P1~input_o\;
\ALT_INV_R1~input_o\ <= NOT \R1~input_o\;

\W1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \W1~output_o\);

\W2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \W2~0_combout\,
	devoe => ww_devoe,
	o => \W2~output_o\);

\E1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \E1~0_combout\,
	devoe => ww_devoe,
	o => \E1~output_o\);

\E2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \E2~0_combout\,
	devoe => ww_devoe,
	o => \E2~output_o\);

\R1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1,
	o => \R1~input_o\);

\P1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P1,
	o => \P1~input_o\);

\S1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

\R2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2,
	o => \R2~input_o\);

\P2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2,
	o => \P2~input_o\);

\S2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\P2~input_o\ & ( \S2~input_o\ & ( (\R1~input_o\ & (!\P1~input_o\ & (!\S1~input_o\ & !\R2~input_o\))) ) ) ) # ( \P2~input_o\ & ( !\S2~input_o\ & ( (!\R1~input_o\ & (!\P1~input_o\ & (\S1~input_o\ & !\R2~input_o\))) ) ) ) # ( 
-- !\P2~input_o\ & ( !\S2~input_o\ & ( (!\R1~input_o\ & (\P1~input_o\ & (!\S1~input_o\ & \R2~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000010000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R1~input_o\,
	datab => \ALT_INV_P1~input_o\,
	datac => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_R2~input_o\,
	datae => \ALT_INV_P2~input_o\,
	dataf => \ALT_INV_S2~input_o\,
	combout => \Mux0~0_combout\);

\W2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \W2~0_combout\ = ( !\P2~input_o\ & ( \S2~input_o\ & ( (!\R1~input_o\ & (\P1~input_o\ & (!\S1~input_o\ & !\R2~input_o\))) ) ) ) # ( \P2~input_o\ & ( !\S2~input_o\ & ( (\R1~input_o\ & (!\P1~input_o\ & (!\S1~input_o\ & !\R2~input_o\))) ) ) ) # ( 
-- !\P2~input_o\ & ( !\S2~input_o\ & ( (!\R1~input_o\ & (!\P1~input_o\ & (\S1~input_o\ & \R2~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000010000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R1~input_o\,
	datab => \ALT_INV_P1~input_o\,
	datac => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_R2~input_o\,
	datae => \ALT_INV_P2~input_o\,
	dataf => \ALT_INV_S2~input_o\,
	combout => \W2~0_combout\);

\E1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \E1~0_combout\ = (!\R1~input_o\ & (\P1~input_o\ & \S1~input_o\)) # (\R1~input_o\ & ((\S1~input_o\) # (\P1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R1~input_o\,
	datab => \ALT_INV_P1~input_o\,
	datac => \ALT_INV_S1~input_o\,
	combout => \E1~0_combout\);

\E2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \E2~0_combout\ = (!\R2~input_o\ & (\P2~input_o\ & \S2~input_o\)) # (\R2~input_o\ & ((\S2~input_o\) # (\P2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R2~input_o\,
	datab => \ALT_INV_P2~input_o\,
	datac => \ALT_INV_S2~input_o\,
	combout => \E2~0_combout\);

ww_W1 <= \W1~output_o\;

ww_W2 <= \W2~output_o\;

ww_E1 <= \E1~output_o\;

ww_E2 <= \E2~output_o\;
END structure;


