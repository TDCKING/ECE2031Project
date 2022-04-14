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
-- Generated on "03/03/2022 14:43:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SCOMP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SCOMP_vhd_vec_tst IS
END SCOMP_vhd_vec_tst;
ARCHITECTURE SCOMP_arch OF SCOMP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL dbg_AC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dbg_FETCH : STD_LOGIC;
SIGNAL dbg_IR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dbg_MA : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL dbg_MD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dbg_PC : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL IO_ADDR : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL IO_CYCLE : STD_LOGIC;
SIGNAL IO_DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IO_WRITE : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
COMPONENT SCOMP
	PORT (
	clock : IN STD_LOGIC;
	dbg_AC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dbg_FETCH : OUT STD_LOGIC;
	dbg_IR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dbg_MA : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	dbg_MD : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dbg_PC : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	IO_ADDR : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	IO_CYCLE : OUT STD_LOGIC;
	IO_DATA : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	IO_WRITE : OUT STD_LOGIC;
	resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SCOMP
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	dbg_AC => dbg_AC,
	dbg_FETCH => dbg_FETCH,
	dbg_IR => dbg_IR,
	dbg_MA => dbg_MA,
	dbg_MD => dbg_MD,
	dbg_PC => dbg_PC,
	IO_ADDR => IO_ADDR,
	IO_CYCLE => IO_CYCLE,
	IO_DATA => IO_DATA,
	IO_WRITE => IO_WRITE,
	resetn => resetn
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 30000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 187
	LOOP
		clock <= '0';
		WAIT FOR 40000 ps;
		clock <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END SCOMP_arch;
