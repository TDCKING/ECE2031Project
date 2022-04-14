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
-- Generated on "03/17/2022 13:07:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ContestJudge
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ContestJudge_vhd_vec_tst IS
END ContestJudge_vhd_vec_tst;
ARCHITECTURE ContestJudge_arch OF ContestJudge_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CL : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL CR : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL WL : STD_LOGIC;
SIGNAL WR : STD_LOGIC;
COMPONENT ContestJudge
	PORT (
	CL : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	CR : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	WL : OUT STD_LOGIC;
	WR : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContestJudge
	PORT MAP (
-- list connections between master ports and signals
	CL => CL,
	clock => clock,
	CR => CR,
	resetn => resetn,
	WL => WL,
	WR => WR
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 1000000 ps;
	resetn <= '1';
	WAIT FOR 6500000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
	WAIT FOR 7500000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
	WAIT FOR 8000000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
	WAIT FOR 22000000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
	WAIT FOR 8500000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
	WAIT FOR 14000000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
	WAIT FOR 9500000 ps;
	resetn <= '0';
	WAIT FOR 500000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 250000 ps;
	clock <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- CL
t_prcs_CL: PROCESS
BEGIN
	CL <= '0';
	WAIT FOR 2000000 ps;
	CL <= '1';
	WAIT FOR 4000000 ps;
	CL <= '0';
	WAIT FOR 3000000 ps;
	CL <= '1';
	WAIT FOR 2500000 ps;
	CL <= '0';
	WAIT FOR 6000000 ps;
	CL <= '1';
	WAIT FOR 5000000 ps;
	CL <= '0';
	WAIT FOR 5000000 ps;
	CL <= '1';
	WAIT FOR 1500000 ps;
	CL <= '0';
	WAIT FOR 4500000 ps;
	CL <= '1';
	WAIT FOR 4500000 ps;
	CL <= '0';
	WAIT FOR 4000000 ps;
	CL <= '1';
	WAIT FOR 3500000 ps;
	CL <= '0';
	WAIT FOR 2000000 ps;
	CL <= '1';
	WAIT FOR 3500000 ps;
	CL <= '0';
	WAIT FOR 2500000 ps;
	CL <= '1';
	WAIT FOR 1500000 ps;
	CL <= '0';
	WAIT FOR 2000000 ps;
	CL <= '1';
	WAIT FOR 2000000 ps;
	CL <= '0';
	WAIT FOR 1000000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 1000000 ps;
	CL <= '1';
	WAIT FOR 1000000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 1000000 ps;
	CL <= '0';
	WAIT FOR 1000000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 2000000 ps;
	CL <= '0';
	WAIT FOR 2000000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 1500000 ps;
	CL <= '1';
	WAIT FOR 1000000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 1000000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 1500000 ps;
	CL <= '0';
	WAIT FOR 5500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 2500000 ps;
	CL <= '1';
	WAIT FOR 1000000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 1000000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 1500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 1000000 ps;
	CL <= '1';
	WAIT FOR 1500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
	WAIT FOR 500000 ps;
	CL <= '0';
	WAIT FOR 500000 ps;
	CL <= '1';
WAIT;
END PROCESS t_prcs_CL;

-- CR
t_prcs_CR: PROCESS
BEGIN
	CR <= '0';
	WAIT FOR 2000000 ps;
	CR <= '1';
	WAIT FOR 2500000 ps;
	CR <= '0';
	WAIT FOR 4500000 ps;
	CR <= '1';
	WAIT FOR 5000000 ps;
	CR <= '0';
	WAIT FOR 5500000 ps;
	CR <= '1';
	WAIT FOR 1500000 ps;
	CR <= '0';
	WAIT FOR 4500000 ps;
	CR <= '1';
	WAIT FOR 6000000 ps;
	CR <= '0';
	WAIT FOR 2000000 ps;
	CR <= '1';
	WAIT FOR 7500000 ps;
	CR <= '0';
	WAIT FOR 1000000 ps;
	CR <= '1';
	WAIT FOR 2000000 ps;
	CR <= '0';
	WAIT FOR 3500000 ps;
	CR <= '1';
	WAIT FOR 1000000 ps;
	CR <= '0';
	WAIT FOR 1500000 ps;
	CR <= '1';
	WAIT FOR 2000000 ps;
	CR <= '0';
	WAIT FOR 1500000 ps;
	CR <= '1';
	WAIT FOR 1000000 ps;
	CR <= '0';
	WAIT FOR 2500000 ps;
	CR <= '1';
	WAIT FOR 2000000 ps;
	CR <= '0';
	WAIT FOR 1500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 1000000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 2500000 ps;
	CR <= '1';
	WAIT FOR 1000000 ps;
	CR <= '0';
	WAIT FOR 1000000 ps;
	CR <= '1';
	WAIT FOR 2000000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 1000000 ps;
	CR <= '0';
	WAIT FOR 6500000 ps;
	CR <= '1';
	WAIT FOR 1000000 ps;
	CR <= '0';
	WAIT FOR 500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 3000000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 1000000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 1500000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 2000000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 1000000 ps;
	CR <= '1';
	WAIT FOR 500000 ps;
	CR <= '0';
	WAIT FOR 2000000 ps;
	CR <= '1';
	WAIT FOR 1500000 ps;
	CR <= '0';
WAIT;
END PROCESS t_prcs_CR;
END ContestJudge_arch;
