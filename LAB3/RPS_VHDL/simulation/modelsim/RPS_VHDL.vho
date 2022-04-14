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

-- DATE "02/03/2022 13:23:39"

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
	W1 : BUFFER std_logic;
	W2 : BUFFER std_logic;
	E1 : BUFFER std_logic;
	E2 : BUFFER std_logic
	);
END RPS_VHDL;

-- Design Ports Information
-- W1	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- W2	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- E1	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- E2	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R1	=>  Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P1	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S1	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R2	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P2	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S2	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \R2~input_o\ : std_logic;
SIGNAL \R1~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \P2~input_o\ : std_logic;
SIGNAL \P1~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
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

-- Location: IOOBUF_X88_Y0_N54
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
	o => ww_W1);

-- Location: IOOBUF_X88_Y0_N37
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
	o => ww_W2);

-- Location: IOOBUF_X89_Y11_N45
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
	o => ww_E1);

-- Location: IOOBUF_X86_Y0_N2
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
	o => ww_E2);

-- Location: IOIBUF_X89_Y21_N38
\R2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2,
	o => \R2~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\R1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1,
	o => \R1~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\S2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\P2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2,
	o => \P2~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\P1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P1,
	o => \P1~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\S1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LABCELL_X88_Y21_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\P1~input_o\ & ( \S1~input_o\ & ( (!\R2~input_o\ & (!\R1~input_o\ & (!\S2~input_o\ & \P2~input_o\))) ) ) ) # ( \P1~input_o\ & ( !\S1~input_o\ & ( (\R2~input_o\ & (!\R1~input_o\ & (!\S2~input_o\ & !\P2~input_o\))) ) ) ) # ( 
-- !\P1~input_o\ & ( !\S1~input_o\ & ( (!\R2~input_o\ & (\R1~input_o\ & (\S2~input_o\ & !\P2~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000010000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R2~input_o\,
	datab => \ALT_INV_R1~input_o\,
	datac => \ALT_INV_S2~input_o\,
	datad => \ALT_INV_P2~input_o\,
	datae => \ALT_INV_P1~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X88_Y21_N6
\W2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \W2~0_combout\ = ( !\P1~input_o\ & ( \S1~input_o\ & ( (\R2~input_o\ & (!\R1~input_o\ & (!\S2~input_o\ & !\P2~input_o\))) ) ) ) # ( \P1~input_o\ & ( !\S1~input_o\ & ( (!\R2~input_o\ & (!\R1~input_o\ & (\S2~input_o\ & !\P2~input_o\))) ) ) ) # ( 
-- !\P1~input_o\ & ( !\S1~input_o\ & ( (!\R2~input_o\ & (\R1~input_o\ & (!\S2~input_o\ & \P2~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000010000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R2~input_o\,
	datab => \ALT_INV_R1~input_o\,
	datac => \ALT_INV_S2~input_o\,
	datad => \ALT_INV_P2~input_o\,
	datae => \ALT_INV_P1~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \W2~0_combout\);

-- Location: LABCELL_X88_Y21_N12
\E1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \E1~0_combout\ = ( \S1~input_o\ & ( (\P1~input_o\) # (\R1~input_o\) ) ) # ( !\S1~input_o\ & ( (\R1~input_o\ & \P1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_R1~input_o\,
	datac => \ALT_INV_P1~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \E1~0_combout\);

-- Location: LABCELL_X88_Y21_N15
\E2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \E2~0_combout\ = (!\S2~input_o\ & (\P2~input_o\ & \R2~input_o\)) # (\S2~input_o\ & ((\R2~input_o\) # (\P2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2~input_o\,
	datac => \ALT_INV_P2~input_o\,
	datad => \ALT_INV_R2~input_o\,
	combout => \E2~0_combout\);

-- Location: LABCELL_X40_Y4_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


