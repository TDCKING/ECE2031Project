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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/03/2022 12:03:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RPS_VHDL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RPS_VHDL_vhd_vec_tst IS
END RPS_VHDL_vhd_vec_tst;
ARCHITECTURE RPS_VHDL_arch OF RPS_VHDL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E1 : STD_LOGIC;
SIGNAL E2 : STD_LOGIC;
SIGNAL P1 : STD_LOGIC;
SIGNAL P2 : STD_LOGIC;
SIGNAL R1 : STD_LOGIC;
SIGNAL R2 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL W1 : STD_LOGIC;
SIGNAL W2 : STD_LOGIC;
COMPONENT RPS_VHDL
	PORT (
	E1 : OUT STD_LOGIC;
	E2 : OUT STD_LOGIC;
	P1 : IN STD_LOGIC;
	P2 : IN STD_LOGIC;
	R1 : IN STD_LOGIC;
	R2 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	S2 : IN STD_LOGIC;
	W1 : OUT STD_LOGIC;
	W2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RPS_VHDL
	PORT MAP (
-- list connections between master ports and signals
	E1 => E1,
	E2 => E2,
	P1 => P1,
	P2 => P2,
	R1 => R1,
	R2 => R2,
	S1 => S1,
	S2 => S2,
	W1 => W1,
	W2 => W2
	);

-- R1
t_prcs_R1: PROCESS
BEGIN
LOOP
	R1 <= '0';
	WAIT FOR 800000 ps;
	R1 <= '1';
	WAIT FOR 800000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R1;

-- P1
t_prcs_P1: PROCESS
BEGIN
LOOP
	P1 <= '0';
	WAIT FOR 400000 ps;
	P1 <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_P1;

-- S1
t_prcs_S1: PROCESS
BEGIN
LOOP
	S1 <= '0';
	WAIT FOR 200000 ps;
	S1 <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S1;

-- R2
t_prcs_R2: PROCESS
BEGIN
LOOP
	R2 <= '0';
	WAIT FOR 100000 ps;
	R2 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R2;

-- P2
t_prcs_P2: PROCESS
BEGIN
LOOP
	P2 <= '0';
	WAIT FOR 50000 ps;
	P2 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_P2;

-- S2
t_prcs_S2: PROCESS
BEGIN
LOOP
	S2 <= '0';
	WAIT FOR 25000 ps;
	S2 <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S2;
END RPS_VHDL_arch;
