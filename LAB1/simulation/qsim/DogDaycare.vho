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

-- DATE "01/20/2022 13:14:51"

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

ENTITY 	DogDaycare IS
    PORT (
	Warning : OUT std_logic;
	M : IN std_logic;
	F2 : IN std_logic;
	B1 : IN std_logic;
	F1 : IN std_logic;
	B2 : IN std_logic;
	Alarm : OUT std_logic
	);
END DogDaycare;

ARCHITECTURE structure OF DogDaycare IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Warning : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_F1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_Alarm : std_logic;
SIGNAL \Warning~output_o\ : std_logic;
SIGNAL \Alarm~output_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \F2~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \F1~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \ALT_INV_B2~input_o\ : std_logic;
SIGNAL \ALT_INV_F1~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_F2~input_o\ : std_logic;
SIGNAL \ALT_INV_M~input_o\ : std_logic;

BEGIN

Warning <= ww_Warning;
ww_M <= M;
ww_F2 <= F2;
ww_B1 <= B1;
ww_F1 <= F1;
ww_B2 <= B2;
Alarm <= ww_Alarm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B2~input_o\ <= NOT \B2~input_o\;
\ALT_INV_F1~input_o\ <= NOT \F1~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_F2~input_o\ <= NOT \F2~input_o\;
\ALT_INV_M~input_o\ <= NOT \M~input_o\;

\Warning~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \Warning~output_o\);

\Alarm~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => \Alarm~output_o\);

\M~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

\F2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2,
	o => \F2~input_o\);

\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

\F1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1,
	o => \F1~input_o\);

\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

\inst14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = ( \B2~input_o\ & ( (!\M~input_o\ & (((\F2~input_o\ & \B1~input_o\)) # (\F1~input_o\))) ) ) # ( !\B2~input_o\ & ( (!\M~input_o\ & (\F2~input_o\ & \B1~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101010101000000010000000100000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M~input_o\,
	datab => \ALT_INV_F2~input_o\,
	datac => \ALT_INV_B1~input_o\,
	datad => \ALT_INV_F1~input_o\,
	datae => \ALT_INV_B2~input_o\,
	combout => \inst14~0_combout\);

\inst15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = ( \B2~input_o\ & ( ((\F1~input_o\ & ((\B1~input_o\) # (\M~input_o\)))) # (\F2~input_o\) ) ) # ( !\B2~input_o\ & ( (\B1~input_o\ & (((\M~input_o\ & \F2~input_o\)) # (\F1~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001111001100110111111100000001000011110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M~input_o\,
	datab => \ALT_INV_F2~input_o\,
	datac => \ALT_INV_B1~input_o\,
	datad => \ALT_INV_F1~input_o\,
	datae => \ALT_INV_B2~input_o\,
	combout => \inst15~0_combout\);

ww_Warning <= \Warning~output_o\;

ww_Alarm <= \Alarm~output_o\;
END structure;


