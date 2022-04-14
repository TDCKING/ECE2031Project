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
-- Generated on "01/20/2022 13:14:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DogDaycare
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DogDaycare_vhd_vec_tst IS
END DogDaycare_vhd_vec_tst;
ARCHITECTURE DogDaycare_arch OF DogDaycare_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Alarm : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL F1 : STD_LOGIC;
SIGNAL F2 : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL Warning : STD_LOGIC;
COMPONENT DogDaycare
	PORT (
	Alarm : OUT STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	F1 : IN STD_LOGIC;
	F2 : IN STD_LOGIC;
	M : IN STD_LOGIC;
	Warning : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DogDaycare
	PORT MAP (
-- list connections between master ports and signals
	Alarm => Alarm,
	B1 => B1,
	B2 => B2,
	F1 => F1,
	F2 => F2,
	M => M,
	Warning => Warning
	);

-- B1
t_prcs_B1: PROCESS
BEGIN
LOOP
	B1 <= '0';
	WAIT FOR 400000 ps;
	B1 <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B1;

-- B2
t_prcs_B2: PROCESS
BEGIN
LOOP
	B2 <= '0';
	WAIT FOR 200000 ps;
	B2 <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B2;

-- F1
t_prcs_F1: PROCESS
BEGIN
LOOP
	F1 <= '0';
	WAIT FOR 100000 ps;
	F1 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_F1;

-- F2
t_prcs_F2: PROCESS
BEGIN
LOOP
	F2 <= '0';
	WAIT FOR 50000 ps;
	F2 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_F2;

-- M
t_prcs_M: PROCESS
BEGIN
LOOP
	M <= '0';
	WAIT FOR 800000 ps;
	M <= '1';
	WAIT FOR 800000 ps;
	IF (NOW >= 1600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_M;
END DogDaycare_arch;
