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

-- DATE "03/03/2022 14:43:08"

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

ENTITY 	SCOMP IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	IO_WRITE : OUT std_logic;
	IO_CYCLE : OUT std_logic;
	IO_ADDR : OUT std_logic_vector(10 DOWNTO 0);
	IO_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	dbg_FETCH : OUT std_logic;
	dbg_AC : OUT std_logic_vector(15 DOWNTO 0);
	dbg_PC : OUT std_logic_vector(10 DOWNTO 0);
	dbg_MA : OUT std_logic_vector(10 DOWNTO 0);
	dbg_MD : OUT std_logic_vector(15 DOWNTO 0);
	dbg_IR : OUT std_logic_vector(15 DOWNTO 0)
	);
END SCOMP;

ARCHITECTURE structure OF SCOMP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_IO_WRITE : std_logic;
SIGNAL ww_IO_CYCLE : std_logic;
SIGNAL ww_IO_ADDR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_FETCH : std_logic;
SIGNAL ww_dbg_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_PC : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_MA : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_MD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \IO_DATA[0]~output_o\ : std_logic;
SIGNAL \IO_DATA[1]~output_o\ : std_logic;
SIGNAL \IO_DATA[2]~output_o\ : std_logic;
SIGNAL \IO_DATA[3]~output_o\ : std_logic;
SIGNAL \IO_DATA[4]~output_o\ : std_logic;
SIGNAL \IO_DATA[5]~output_o\ : std_logic;
SIGNAL \IO_DATA[6]~output_o\ : std_logic;
SIGNAL \IO_DATA[7]~output_o\ : std_logic;
SIGNAL \IO_DATA[8]~output_o\ : std_logic;
SIGNAL \IO_DATA[9]~output_o\ : std_logic;
SIGNAL \IO_DATA[10]~output_o\ : std_logic;
SIGNAL \IO_DATA[11]~output_o\ : std_logic;
SIGNAL \IO_DATA[12]~output_o\ : std_logic;
SIGNAL \IO_DATA[13]~output_o\ : std_logic;
SIGNAL \IO_DATA[14]~output_o\ : std_logic;
SIGNAL \IO_DATA[15]~output_o\ : std_logic;
SIGNAL \IO_WRITE~output_o\ : std_logic;
SIGNAL \IO_CYCLE~output_o\ : std_logic;
SIGNAL \IO_ADDR[0]~output_o\ : std_logic;
SIGNAL \IO_ADDR[1]~output_o\ : std_logic;
SIGNAL \IO_ADDR[2]~output_o\ : std_logic;
SIGNAL \IO_ADDR[3]~output_o\ : std_logic;
SIGNAL \IO_ADDR[4]~output_o\ : std_logic;
SIGNAL \IO_ADDR[5]~output_o\ : std_logic;
SIGNAL \IO_ADDR[6]~output_o\ : std_logic;
SIGNAL \IO_ADDR[7]~output_o\ : std_logic;
SIGNAL \IO_ADDR[8]~output_o\ : std_logic;
SIGNAL \IO_ADDR[9]~output_o\ : std_logic;
SIGNAL \IO_ADDR[10]~output_o\ : std_logic;
SIGNAL \dbg_FETCH~output_o\ : std_logic;
SIGNAL \dbg_AC[0]~output_o\ : std_logic;
SIGNAL \dbg_AC[1]~output_o\ : std_logic;
SIGNAL \dbg_AC[2]~output_o\ : std_logic;
SIGNAL \dbg_AC[3]~output_o\ : std_logic;
SIGNAL \dbg_AC[4]~output_o\ : std_logic;
SIGNAL \dbg_AC[5]~output_o\ : std_logic;
SIGNAL \dbg_AC[6]~output_o\ : std_logic;
SIGNAL \dbg_AC[7]~output_o\ : std_logic;
SIGNAL \dbg_AC[8]~output_o\ : std_logic;
SIGNAL \dbg_AC[9]~output_o\ : std_logic;
SIGNAL \dbg_AC[10]~output_o\ : std_logic;
SIGNAL \dbg_AC[11]~output_o\ : std_logic;
SIGNAL \dbg_AC[12]~output_o\ : std_logic;
SIGNAL \dbg_AC[13]~output_o\ : std_logic;
SIGNAL \dbg_AC[14]~output_o\ : std_logic;
SIGNAL \dbg_AC[15]~output_o\ : std_logic;
SIGNAL \dbg_PC[0]~output_o\ : std_logic;
SIGNAL \dbg_PC[1]~output_o\ : std_logic;
SIGNAL \dbg_PC[2]~output_o\ : std_logic;
SIGNAL \dbg_PC[3]~output_o\ : std_logic;
SIGNAL \dbg_PC[4]~output_o\ : std_logic;
SIGNAL \dbg_PC[5]~output_o\ : std_logic;
SIGNAL \dbg_PC[6]~output_o\ : std_logic;
SIGNAL \dbg_PC[7]~output_o\ : std_logic;
SIGNAL \dbg_PC[8]~output_o\ : std_logic;
SIGNAL \dbg_PC[9]~output_o\ : std_logic;
SIGNAL \dbg_PC[10]~output_o\ : std_logic;
SIGNAL \dbg_MA[0]~output_o\ : std_logic;
SIGNAL \dbg_MA[1]~output_o\ : std_logic;
SIGNAL \dbg_MA[2]~output_o\ : std_logic;
SIGNAL \dbg_MA[3]~output_o\ : std_logic;
SIGNAL \dbg_MA[4]~output_o\ : std_logic;
SIGNAL \dbg_MA[5]~output_o\ : std_logic;
SIGNAL \dbg_MA[6]~output_o\ : std_logic;
SIGNAL \dbg_MA[7]~output_o\ : std_logic;
SIGNAL \dbg_MA[8]~output_o\ : std_logic;
SIGNAL \dbg_MA[9]~output_o\ : std_logic;
SIGNAL \dbg_MA[10]~output_o\ : std_logic;
SIGNAL \dbg_MD[0]~output_o\ : std_logic;
SIGNAL \dbg_MD[1]~output_o\ : std_logic;
SIGNAL \dbg_MD[2]~output_o\ : std_logic;
SIGNAL \dbg_MD[3]~output_o\ : std_logic;
SIGNAL \dbg_MD[4]~output_o\ : std_logic;
SIGNAL \dbg_MD[5]~output_o\ : std_logic;
SIGNAL \dbg_MD[6]~output_o\ : std_logic;
SIGNAL \dbg_MD[7]~output_o\ : std_logic;
SIGNAL \dbg_MD[8]~output_o\ : std_logic;
SIGNAL \dbg_MD[9]~output_o\ : std_logic;
SIGNAL \dbg_MD[10]~output_o\ : std_logic;
SIGNAL \dbg_MD[11]~output_o\ : std_logic;
SIGNAL \dbg_MD[12]~output_o\ : std_logic;
SIGNAL \dbg_MD[13]~output_o\ : std_logic;
SIGNAL \dbg_MD[14]~output_o\ : std_logic;
SIGNAL \dbg_MD[15]~output_o\ : std_logic;
SIGNAL \dbg_IR[0]~output_o\ : std_logic;
SIGNAL \dbg_IR[1]~output_o\ : std_logic;
SIGNAL \dbg_IR[2]~output_o\ : std_logic;
SIGNAL \dbg_IR[3]~output_o\ : std_logic;
SIGNAL \dbg_IR[4]~output_o\ : std_logic;
SIGNAL \dbg_IR[5]~output_o\ : std_logic;
SIGNAL \dbg_IR[6]~output_o\ : std_logic;
SIGNAL \dbg_IR[7]~output_o\ : std_logic;
SIGNAL \dbg_IR[8]~output_o\ : std_logic;
SIGNAL \dbg_IR[9]~output_o\ : std_logic;
SIGNAL \dbg_IR[10]~output_o\ : std_logic;
SIGNAL \dbg_IR[11]~output_o\ : std_logic;
SIGNAL \dbg_IR[12]~output_o\ : std_logic;
SIGNAL \dbg_IR[13]~output_o\ : std_logic;
SIGNAL \dbg_IR[14]~output_o\ : std_logic;
SIGNAL \dbg_IR[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \state.ex_iload~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state~54_combout\ : std_logic;
SIGNAL \state.ex_call~q\ : std_logic;
SIGNAL \PC_stack[9][0]~1_combout\ : std_logic;
SIGNAL \PC_stack[9][0]~q\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state.ex_return~q\ : std_logic;
SIGNAL \PC_stack[0][0]~0_combout\ : std_logic;
SIGNAL \PC_stack[8][0]~q\ : std_logic;
SIGNAL \PC_stack[7][0]~q\ : std_logic;
SIGNAL \PC_stack[6][0]~q\ : std_logic;
SIGNAL \PC_stack[5][0]~q\ : std_logic;
SIGNAL \PC_stack[4][0]~q\ : std_logic;
SIGNAL \PC_stack[3][0]~q\ : std_logic;
SIGNAL \PC_stack[2][0]~q\ : std_logic;
SIGNAL \PC_stack[1][0]~q\ : std_logic;
SIGNAL \PC_stack[0][0]~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \state.ex_jzero~q\ : std_logic;
SIGNAL \state~52_combout\ : std_logic;
SIGNAL \state.ex_jpos~q\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state~53_combout\ : std_logic;
SIGNAL \state.ex_jneg~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \PC_stack[9][1]~q\ : std_logic;
SIGNAL \PC_stack[8][1]~q\ : std_logic;
SIGNAL \PC_stack[7][1]~q\ : std_logic;
SIGNAL \PC_stack[6][1]~q\ : std_logic;
SIGNAL \PC_stack[5][1]~q\ : std_logic;
SIGNAL \PC_stack[4][1]~q\ : std_logic;
SIGNAL \PC_stack[3][1]~q\ : std_logic;
SIGNAL \PC_stack[2][1]~q\ : std_logic;
SIGNAL \PC_stack[1][1]~q\ : std_logic;
SIGNAL \PC_stack[0][1]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \next_mem_addr[1]~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \PC_stack[9][2]~q\ : std_logic;
SIGNAL \PC_stack[8][2]~q\ : std_logic;
SIGNAL \PC_stack[7][2]~q\ : std_logic;
SIGNAL \PC_stack[6][2]~q\ : std_logic;
SIGNAL \PC_stack[5][2]~q\ : std_logic;
SIGNAL \PC_stack[4][2]~q\ : std_logic;
SIGNAL \PC_stack[3][2]~q\ : std_logic;
SIGNAL \PC_stack[2][2]~q\ : std_logic;
SIGNAL \PC_stack[1][2]~q\ : std_logic;
SIGNAL \PC_stack[0][2]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \next_mem_addr[2]~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \PC_stack[9][3]~q\ : std_logic;
SIGNAL \PC_stack[8][3]~q\ : std_logic;
SIGNAL \PC_stack[7][3]~q\ : std_logic;
SIGNAL \PC_stack[6][3]~q\ : std_logic;
SIGNAL \PC_stack[5][3]~q\ : std_logic;
SIGNAL \PC_stack[4][3]~q\ : std_logic;
SIGNAL \PC_stack[3][3]~q\ : std_logic;
SIGNAL \PC_stack[2][3]~q\ : std_logic;
SIGNAL \PC_stack[1][3]~q\ : std_logic;
SIGNAL \PC_stack[0][3]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \next_mem_addr[3]~3_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \PC_stack[9][4]~q\ : std_logic;
SIGNAL \PC_stack[8][4]~q\ : std_logic;
SIGNAL \PC_stack[7][4]~q\ : std_logic;
SIGNAL \PC_stack[6][4]~q\ : std_logic;
SIGNAL \PC_stack[5][4]~q\ : std_logic;
SIGNAL \PC_stack[4][4]~q\ : std_logic;
SIGNAL \PC_stack[3][4]~q\ : std_logic;
SIGNAL \PC_stack[2][4]~q\ : std_logic;
SIGNAL \PC_stack[1][4]~q\ : std_logic;
SIGNAL \PC_stack[0][4]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \next_mem_addr[4]~4_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[26]~1_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[28]~4_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[42]~24_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[30]~5_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[46]~25_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[62]~38_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[22]~2_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[20]~7_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[38]~26_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[18]~8_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[34]~28_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \state~49_combout\ : std_logic;
SIGNAL \state.ex_and~q\ : std_logic;
SIGNAL \state.ex_in2~q\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \state.ex_load~q\ : std_logic;
SIGNAL \state~46_combout\ : std_logic;
SIGNAL \state.ex_or~q\ : std_logic;
SIGNAL \state~47_combout\ : std_logic;
SIGNAL \state.ex_loadi~q\ : std_logic;
SIGNAL \state~48_combout\ : std_logic;
SIGNAL \state.ex_xor~q\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \IO_DATA[6]~input_o\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \PC_stack[9][7]~q\ : std_logic;
SIGNAL \PC_stack[8][7]~q\ : std_logic;
SIGNAL \PC_stack[7][7]~q\ : std_logic;
SIGNAL \PC_stack[6][7]~q\ : std_logic;
SIGNAL \PC_stack[5][7]~q\ : std_logic;
SIGNAL \PC_stack[4][7]~q\ : std_logic;
SIGNAL \PC_stack[3][7]~q\ : std_logic;
SIGNAL \PC_stack[2][7]~q\ : std_logic;
SIGNAL \PC_stack[1][7]~q\ : std_logic;
SIGNAL \PC_stack[0][7]~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \PC_stack[9][6]~q\ : std_logic;
SIGNAL \PC_stack[8][6]~q\ : std_logic;
SIGNAL \PC_stack[7][6]~q\ : std_logic;
SIGNAL \PC_stack[6][6]~q\ : std_logic;
SIGNAL \PC_stack[5][6]~q\ : std_logic;
SIGNAL \PC_stack[4][6]~q\ : std_logic;
SIGNAL \PC_stack[3][6]~q\ : std_logic;
SIGNAL \PC_stack[2][6]~q\ : std_logic;
SIGNAL \PC_stack[1][6]~q\ : std_logic;
SIGNAL \PC_stack[0][6]~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \PC_stack[9][5]~q\ : std_logic;
SIGNAL \PC_stack[8][5]~q\ : std_logic;
SIGNAL \PC_stack[7][5]~q\ : std_logic;
SIGNAL \PC_stack[6][5]~q\ : std_logic;
SIGNAL \PC_stack[5][5]~q\ : std_logic;
SIGNAL \PC_stack[4][5]~q\ : std_logic;
SIGNAL \PC_stack[3][5]~q\ : std_logic;
SIGNAL \PC_stack[2][5]~q\ : std_logic;
SIGNAL \PC_stack[1][5]~q\ : std_logic;
SIGNAL \PC_stack[0][5]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \next_mem_addr[7]~7_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \PC_stack[9][8]~q\ : std_logic;
SIGNAL \PC_stack[8][8]~q\ : std_logic;
SIGNAL \PC_stack[7][8]~q\ : std_logic;
SIGNAL \PC_stack[6][8]~q\ : std_logic;
SIGNAL \PC_stack[5][8]~q\ : std_logic;
SIGNAL \PC_stack[4][8]~q\ : std_logic;
SIGNAL \PC_stack[3][8]~q\ : std_logic;
SIGNAL \PC_stack[2][8]~q\ : std_logic;
SIGNAL \PC_stack[1][8]~q\ : std_logic;
SIGNAL \PC_stack[0][8]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \next_mem_addr[8]~8_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \PC_stack[9][9]~q\ : std_logic;
SIGNAL \PC_stack[8][9]~q\ : std_logic;
SIGNAL \PC_stack[7][9]~q\ : std_logic;
SIGNAL \PC_stack[6][9]~q\ : std_logic;
SIGNAL \PC_stack[5][9]~q\ : std_logic;
SIGNAL \PC_stack[4][9]~q\ : std_logic;
SIGNAL \PC_stack[3][9]~q\ : std_logic;
SIGNAL \PC_stack[2][9]~q\ : std_logic;
SIGNAL \PC_stack[1][9]~q\ : std_logic;
SIGNAL \PC_stack[0][9]~q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \next_mem_addr[9]~9_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \PC_stack[9][10]~q\ : std_logic;
SIGNAL \PC_stack[8][10]~q\ : std_logic;
SIGNAL \PC_stack[7][10]~q\ : std_logic;
SIGNAL \PC_stack[6][10]~q\ : std_logic;
SIGNAL \PC_stack[5][10]~q\ : std_logic;
SIGNAL \PC_stack[4][10]~q\ : std_logic;
SIGNAL \PC_stack[3][10]~q\ : std_logic;
SIGNAL \PC_stack[2][10]~q\ : std_logic;
SIGNAL \PC_stack[1][10]~q\ : std_logic;
SIGNAL \PC_stack[0][10]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \next_mem_addr[10]~10_combout\ : std_logic;
SIGNAL \IR[4]~0_combout\ : std_logic;
SIGNAL \next_mem_addr[6]~6_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \IO_DATA[8]~input_o\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[44]~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[36]~9_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[56]~10_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[48]~11_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[25]~12_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[27]~13_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[23]~14_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[41]~15_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[21]~18_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[19]~19_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[37]~20_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[17]~22_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[53]~37_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[29]~16_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[45]~17_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \IO_DATA[5]~input_o\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \next_mem_addr[5]~5_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[55]~39_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[55]~40_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[55]~41_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \IO_DATA[7]~input_o\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \Selector20~5_combout\ : std_logic;
SIGNAL \Selector20~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[24]~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[40]~3_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[32]~36_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \IO_DATA[12]~input_o\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \PC[1]~0_combout\ : std_logic;
SIGNAL \PC[1]~1_combout\ : std_logic;
SIGNAL \state~55_combout\ : std_logic;
SIGNAL \state.ex_jump~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \PC[0]~2_combout\ : std_logic;
SIGNAL \next_mem_addr[0]~0_combout\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~67_cout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[57]~21_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[49]~23_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \IO_DATA[1]~input_o\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \Selector26~5_combout\ : std_logic;
SIGNAL \Selector26~6_combout\ : std_logic;
SIGNAL \Selector26~7_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \IO_DATA[2]~input_o\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[58]~27_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[60]~35_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \IO_DATA[4]~input_o\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[43]~29_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[43]~30_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[43]~31_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[39]~32_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[59]~33_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[35]~34_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \IO_DATA[3]~input_o\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \IO_DATA[9]~input_o\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \IO_DATA[10]~input_o\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \IO_DATA[14]~input_o\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \Selector13~5_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \state.ex_add~q\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \IO_DATA[11]~input_o\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \state.ex_shift~q\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \IO_DATA[15]~input_o\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \Selector12~7_combout\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state.ex_in~q\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state.ex_out~q\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \state.ex_store~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \state.fetch~q\ : std_logic;
SIGNAL \state.decode~q\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \state.ex_addi~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \IO_DATA[13]~input_o\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \Selector14~5_combout\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state.ex_istore~q\ : std_logic;
SIGNAL \state.ex_istore2~q\ : std_logic;
SIGNAL \state.ex_store2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \MW~q\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \state.ex_sub~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Selector27~7_combout\ : std_logic;
SIGNAL \IO_DATA[0]~input_o\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \IO_WRITE_int~q\ : std_logic;
SIGNAL \state.ex_out2~q\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \IO_CYCLE~reg0_q\ : std_logic;
SIGNAL PC : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL AC : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_PC : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Selector27~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector19~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~3_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_store2~q\ : std_logic;
SIGNAL \ALT_INV_Add1~83_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~82_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~80_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~79_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~78_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~76_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~75_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~74_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~72_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~71_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~70_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~64_combout\ : std_logic;
SIGNAL \ALT_INV_state~40_combout\ : std_logic;
SIGNAL \ALT_INV_state~38_combout\ : std_logic;
SIGNAL \ALT_INV_state~36_combout\ : std_logic;
SIGNAL \ALT_INV_MW~q\ : std_logic;
SIGNAL \ALT_INV_state~34_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_jump~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_call~q\ : std_logic;
SIGNAL \ALT_INV_PC[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_PC[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_jneg~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_jpos~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_jzero~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_return~q\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[55]~41_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[55]~40_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[55]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[62]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[53]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[32]~36_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[60]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[35]~34_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[59]~33_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[39]~32_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[43]~31_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[43]~30_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[43]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[34]~28_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[58]~27_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[46]~25_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~3_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[49]~23_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[17]~22_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[57]~21_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[37]~20_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[19]~19_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[21]~18_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[45]~17_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[29]~16_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[41]~15_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[23]~14_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[25]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_and~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_xor~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_loadi~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_or~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_load~q\ : std_logic;
SIGNAL \ALT_INV_Selector26~1_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[48]~11_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[56]~10_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[36]~9_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[18]~8_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[20]~7_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[44]~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[30]~5_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[28]~4_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[40]~3_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[22]~2_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[26]~1_combout\ : std_logic;
SIGNAL \shifter|auto_generated|ALT_INV_sbit_w[24]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_shift~q\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_add~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_addi~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_sub~q\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_istore~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_store~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_out~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_in~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_out2~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_in2~q\ : std_logic;
SIGNAL \ALT_INV_state.init~q\ : std_logic;
SIGNAL \ALT_INV_state~33_combout\ : std_logic;
SIGNAL \ALT_INV_state~32_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_iload~q\ : std_logic;
SIGNAL \ALT_INV_state.decode~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_istore2~q\ : std_logic;
SIGNAL ALT_INV_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_state.fetch~q\ : std_logic;
SIGNAL ALT_INV_IR : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_IO_CYCLE~reg0_q\ : std_logic;
SIGNAL \ALT_INV_IO_WRITE_int~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
IO_WRITE <= ww_IO_WRITE;
IO_CYCLE <= ww_IO_CYCLE;
IO_ADDR <= ww_IO_ADDR;
dbg_FETCH <= ww_dbg_FETCH;
dbg_AC <= ww_dbg_AC;
dbg_PC <= ww_dbg_PC;
dbg_MA <= ww_dbg_MA;
dbg_MD <= ww_dbg_MD;
dbg_IR <= ww_dbg_IR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= AC(0);

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= AC(1);

\altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= AC(2);

\altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= AC(3);

\altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= AC(4);

\altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= AC(5);

\altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= AC(6);

\altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= AC(7);

\altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= AC(8);

\altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= AC(9);

\altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= AC(10);

\altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= AC(11);

\altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= AC(12);

\altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= AC(13);

\altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= AC(14);

\altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= AC(15);

\altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_PC_stack[0][2]~q\ <= NOT \PC_stack[0][2]~q\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_PC_stack[0][1]~q\ <= NOT \PC_stack[0][1]~q\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_PC_stack[0][0]~q\ <= NOT \PC_stack[0][0]~q\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \altsyncram_component|auto_generated|q_a\(15);
\altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \altsyncram_component|auto_generated|q_a\(14);
\altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \altsyncram_component|auto_generated|q_a\(13);
\altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \altsyncram_component|auto_generated|q_a\(12);
\altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \altsyncram_component|auto_generated|q_a\(11);
\altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \altsyncram_component|auto_generated|q_a\(10);
\altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \altsyncram_component|auto_generated|q_a\(9);
\altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \altsyncram_component|auto_generated|q_a\(8);
\altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \altsyncram_component|auto_generated|q_a\(7);
\altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \altsyncram_component|auto_generated|q_a\(6);
\altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \altsyncram_component|auto_generated|q_a\(5);
\altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \altsyncram_component|auto_generated|q_a\(4);
\altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \altsyncram_component|auto_generated|q_a\(3);
\altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \altsyncram_component|auto_generated|q_a\(2);
\altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \altsyncram_component|auto_generated|q_a\(1);
\altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \altsyncram_component|auto_generated|q_a\(0);
ALT_INV_PC(10) <= NOT PC(10);
ALT_INV_PC(9) <= NOT PC(9);
ALT_INV_PC(8) <= NOT PC(8);
ALT_INV_PC(7) <= NOT PC(7);
ALT_INV_PC(6) <= NOT PC(6);
ALT_INV_PC(5) <= NOT PC(5);
ALT_INV_PC(4) <= NOT PC(4);
ALT_INV_PC(3) <= NOT PC(3);
ALT_INV_PC(2) <= NOT PC(2);
ALT_INV_PC(1) <= NOT PC(1);
ALT_INV_PC(0) <= NOT PC(0);
\ALT_INV_Selector27~7_combout\ <= NOT \Selector27~7_combout\;
\ALT_INV_Selector27~3_combout\ <= NOT \Selector27~3_combout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_PC_stack[0][10]~q\ <= NOT \PC_stack[0][10]~q\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_PC_stack[0][9]~q\ <= NOT \PC_stack[0][9]~q\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_PC_stack[0][8]~q\ <= NOT \PC_stack[0][8]~q\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_PC_stack[0][7]~q\ <= NOT \PC_stack[0][7]~q\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_PC_stack[0][6]~q\ <= NOT \PC_stack[0][6]~q\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_PC_stack[0][5]~q\ <= NOT \PC_stack[0][5]~q\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_PC_stack[0][4]~q\ <= NOT \PC_stack[0][4]~q\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_PC_stack[0][3]~q\ <= NOT \PC_stack[0][3]~q\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_IO_DATA[15]~input_o\ <= NOT \IO_DATA[15]~input_o\;
\ALT_INV_IO_DATA[14]~input_o\ <= NOT \IO_DATA[14]~input_o\;
\ALT_INV_IO_DATA[13]~input_o\ <= NOT \IO_DATA[13]~input_o\;
\ALT_INV_IO_DATA[12]~input_o\ <= NOT \IO_DATA[12]~input_o\;
\ALT_INV_IO_DATA[11]~input_o\ <= NOT \IO_DATA[11]~input_o\;
\ALT_INV_IO_DATA[10]~input_o\ <= NOT \IO_DATA[10]~input_o\;
\ALT_INV_IO_DATA[9]~input_o\ <= NOT \IO_DATA[9]~input_o\;
\ALT_INV_IO_DATA[8]~input_o\ <= NOT \IO_DATA[8]~input_o\;
\ALT_INV_IO_DATA[7]~input_o\ <= NOT \IO_DATA[7]~input_o\;
\ALT_INV_IO_DATA[6]~input_o\ <= NOT \IO_DATA[6]~input_o\;
\ALT_INV_IO_DATA[5]~input_o\ <= NOT \IO_DATA[5]~input_o\;
\ALT_INV_IO_DATA[4]~input_o\ <= NOT \IO_DATA[4]~input_o\;
\ALT_INV_IO_DATA[3]~input_o\ <= NOT \IO_DATA[3]~input_o\;
\ALT_INV_IO_DATA[2]~input_o\ <= NOT \IO_DATA[2]~input_o\;
\ALT_INV_IO_DATA[1]~input_o\ <= NOT \IO_DATA[1]~input_o\;
\ALT_INV_IO_DATA[0]~input_o\ <= NOT \IO_DATA[0]~input_o\;
\ALT_INV_Selector19~5_combout\ <= NOT \Selector19~5_combout\;
\ALT_INV_Selector19~4_combout\ <= NOT \Selector19~4_combout\;
\ALT_INV_Selector19~3_combout\ <= NOT \Selector19~3_combout\;
\ALT_INV_Selector25~4_combout\ <= NOT \Selector25~4_combout\;
\ALT_INV_Selector25~3_combout\ <= NOT \Selector25~3_combout\;
\ALT_INV_state.ex_store2~q\ <= NOT \state.ex_store2~q\;
\ALT_INV_Add1~83_combout\ <= NOT \Add1~83_combout\;
\ALT_INV_Add1~82_combout\ <= NOT \Add1~82_combout\;
\ALT_INV_Add1~81_combout\ <= NOT \Add1~81_combout\;
\ALT_INV_Add1~80_combout\ <= NOT \Add1~80_combout\;
\ALT_INV_Add1~79_combout\ <= NOT \Add1~79_combout\;
\ALT_INV_Add1~78_combout\ <= NOT \Add1~78_combout\;
\ALT_INV_Add1~77_combout\ <= NOT \Add1~77_combout\;
\ALT_INV_Add1~76_combout\ <= NOT \Add1~76_combout\;
\ALT_INV_Add1~75_combout\ <= NOT \Add1~75_combout\;
\ALT_INV_Add1~74_combout\ <= NOT \Add1~74_combout\;
\ALT_INV_Add1~73_combout\ <= NOT \Add1~73_combout\;
\ALT_INV_Add1~72_combout\ <= NOT \Add1~72_combout\;
\ALT_INV_Add1~71_combout\ <= NOT \Add1~71_combout\;
\ALT_INV_Add1~70_combout\ <= NOT \Add1~70_combout\;
\ALT_INV_Add1~69_combout\ <= NOT \Add1~69_combout\;
\ALT_INV_Selector29~0_combout\ <= NOT \Selector29~0_combout\;
\ALT_INV_Add1~64_combout\ <= NOT \Add1~64_combout\;
\ALT_INV_state~40_combout\ <= NOT \state~40_combout\;
\ALT_INV_state~38_combout\ <= NOT \state~38_combout\;
\ALT_INV_state~36_combout\ <= NOT \state~36_combout\;
\ALT_INV_MW~q\ <= NOT \MW~q\;
\ALT_INV_state~34_combout\ <= NOT \state~34_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_WideOr2~1_combout\ <= NOT \WideOr2~1_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_state.ex_jump~q\ <= NOT \state.ex_jump~q\;
\ALT_INV_state.ex_call~q\ <= NOT \state.ex_call~q\;
\ALT_INV_PC[1]~1_combout\ <= NOT \PC[1]~1_combout\;
\ALT_INV_PC[1]~0_combout\ <= NOT \PC[1]~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_state.ex_jneg~q\ <= NOT \state.ex_jneg~q\;
\ALT_INV_state.ex_jpos~q\ <= NOT \state.ex_jpos~q\;
\ALT_INV_state.ex_jzero~q\ <= NOT \state.ex_jzero~q\;
\ALT_INV_state.ex_return~q\ <= NOT \state.ex_return~q\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_Selector12~6_combout\ <= NOT \Selector12~6_combout\;
\ALT_INV_Selector12~5_combout\ <= NOT \Selector12~5_combout\;
\ALT_INV_Selector12~4_combout\ <= NOT \Selector12~4_combout\;
\ALT_INV_Selector12~3_combout\ <= NOT \Selector12~3_combout\;
\ALT_INV_Selector12~2_combout\ <= NOT \Selector12~2_combout\;
\ALT_INV_Selector12~1_combout\ <= NOT \Selector12~1_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector13~4_combout\ <= NOT \Selector13~4_combout\;
\ALT_INV_Selector13~3_combout\ <= NOT \Selector13~3_combout\;
\ALT_INV_Selector13~2_combout\ <= NOT \Selector13~2_combout\;
\ALT_INV_Selector13~1_combout\ <= NOT \Selector13~1_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Selector14~4_combout\ <= NOT \Selector14~4_combout\;
\ALT_INV_Selector14~3_combout\ <= NOT \Selector14~3_combout\;
\ALT_INV_Selector14~2_combout\ <= NOT \Selector14~2_combout\;
\ALT_INV_Selector14~1_combout\ <= NOT \Selector14~1_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_Selector15~4_combout\ <= NOT \Selector15~4_combout\;
\ALT_INV_Selector15~3_combout\ <= NOT \Selector15~3_combout\;
\ALT_INV_Selector15~2_combout\ <= NOT \Selector15~2_combout\;
\ALT_INV_Selector15~1_combout\ <= NOT \Selector15~1_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_Selector16~4_combout\ <= NOT \Selector16~4_combout\;
\ALT_INV_Selector16~3_combout\ <= NOT \Selector16~3_combout\;
\ALT_INV_Selector16~2_combout\ <= NOT \Selector16~2_combout\;
\ALT_INV_Selector16~1_combout\ <= NOT \Selector16~1_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_Selector17~4_combout\ <= NOT \Selector17~4_combout\;
\ALT_INV_Selector17~3_combout\ <= NOT \Selector17~3_combout\;
\ALT_INV_Selector17~2_combout\ <= NOT \Selector17~2_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector18~3_combout\ <= NOT \Selector18~3_combout\;
\ALT_INV_Selector18~2_combout\ <= NOT \Selector18~2_combout\;
\ALT_INV_Selector18~1_combout\ <= NOT \Selector18~1_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Selector20~5_combout\ <= NOT \Selector20~5_combout\;
\ALT_INV_Selector20~4_combout\ <= NOT \Selector20~4_combout\;
\ALT_INV_Selector20~3_combout\ <= NOT \Selector20~3_combout\;
\ALT_INV_Selector20~2_combout\ <= NOT \Selector20~2_combout\;
\ALT_INV_Selector20~1_combout\ <= NOT \Selector20~1_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[55]~41_combout\ <= NOT \shifter|auto_generated|sbit_w[55]~41_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[55]~40_combout\ <= NOT \shifter|auto_generated|sbit_w[55]~40_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[55]~39_combout\ <= NOT \shifter|auto_generated|sbit_w[55]~39_combout\;
\ALT_INV_Selector21~3_combout\ <= NOT \Selector21~3_combout\;
\ALT_INV_Selector21~2_combout\ <= NOT \Selector21~2_combout\;
\ALT_INV_Selector21~1_combout\ <= NOT \Selector21~1_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[62]~38_combout\ <= NOT \shifter|auto_generated|sbit_w[62]~38_combout\;
\ALT_INV_Selector22~4_combout\ <= NOT \Selector22~4_combout\;
\ALT_INV_Selector22~3_combout\ <= NOT \Selector22~3_combout\;
\ALT_INV_Selector22~2_combout\ <= NOT \Selector22~2_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[53]~37_combout\ <= NOT \shifter|auto_generated|sbit_w[53]~37_combout\;
\ALT_INV_Selector23~3_combout\ <= NOT \Selector23~3_combout\;
\ALT_INV_Selector23~2_combout\ <= NOT \Selector23~2_combout\;
\ALT_INV_Selector23~1_combout\ <= NOT \Selector23~1_combout\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[32]~36_combout\ <= NOT \shifter|auto_generated|sbit_w[32]~36_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[60]~35_combout\ <= NOT \shifter|auto_generated|sbit_w[60]~35_combout\;
\ALT_INV_Selector24~3_combout\ <= NOT \Selector24~3_combout\;
\ALT_INV_Selector24~2_combout\ <= NOT \Selector24~2_combout\;
\ALT_INV_Selector24~1_combout\ <= NOT \Selector24~1_combout\;
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[35]~34_combout\ <= NOT \shifter|auto_generated|sbit_w[35]~34_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[59]~33_combout\ <= NOT \shifter|auto_generated|sbit_w[59]~33_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[39]~32_combout\ <= NOT \shifter|auto_generated|sbit_w[39]~32_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[43]~31_combout\ <= NOT \shifter|auto_generated|sbit_w[43]~31_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[43]~30_combout\ <= NOT \shifter|auto_generated|sbit_w[43]~30_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[43]~29_combout\ <= NOT \shifter|auto_generated|sbit_w[43]~29_combout\;
\ALT_INV_Selector25~1_combout\ <= NOT \Selector25~1_combout\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[34]~28_combout\ <= NOT \shifter|auto_generated|sbit_w[34]~28_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[58]~27_combout\ <= NOT \shifter|auto_generated|sbit_w[58]~27_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\ <= NOT \shifter|auto_generated|sbit_w[38]~26_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[46]~25_combout\ <= NOT \shifter|auto_generated|sbit_w[46]~25_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\ <= NOT \shifter|auto_generated|sbit_w[42]~24_combout\;
\ALT_INV_Selector26~6_combout\ <= NOT \Selector26~6_combout\;
\ALT_INV_Selector26~5_combout\ <= NOT \Selector26~5_combout\;
\ALT_INV_Selector26~4_combout\ <= NOT \Selector26~4_combout\;
\ALT_INV_Selector26~3_combout\ <= NOT \Selector26~3_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[49]~23_combout\ <= NOT \shifter|auto_generated|sbit_w[49]~23_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[17]~22_combout\ <= NOT \shifter|auto_generated|sbit_w[17]~22_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[57]~21_combout\ <= NOT \shifter|auto_generated|sbit_w[57]~21_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[37]~20_combout\ <= NOT \shifter|auto_generated|sbit_w[37]~20_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[19]~19_combout\ <= NOT \shifter|auto_generated|sbit_w[19]~19_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[21]~18_combout\ <= NOT \shifter|auto_generated|sbit_w[21]~18_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[45]~17_combout\ <= NOT \shifter|auto_generated|sbit_w[45]~17_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[29]~16_combout\ <= NOT \shifter|auto_generated|sbit_w[29]~16_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[41]~15_combout\ <= NOT \shifter|auto_generated|sbit_w[41]~15_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[23]~14_combout\ <= NOT \shifter|auto_generated|sbit_w[23]~14_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\ <= NOT \shifter|auto_generated|sbit_w[27]~13_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[25]~12_combout\ <= NOT \shifter|auto_generated|sbit_w[25]~12_combout\;
\ALT_INV_Selector27~1_combout\ <= NOT \Selector27~1_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_Selector26~2_combout\ <= NOT \Selector26~2_combout\;
\ALT_INV_WideOr3~1_combout\ <= NOT \WideOr3~1_combout\;
\ALT_INV_state.ex_and~q\ <= NOT \state.ex_and~q\;
\ALT_INV_state.ex_xor~q\ <= NOT \state.ex_xor~q\;
\ALT_INV_state.ex_loadi~q\ <= NOT \state.ex_loadi~q\;
\ALT_INV_state.ex_or~q\ <= NOT \state.ex_or~q\;
\ALT_INV_state.ex_load~q\ <= NOT \state.ex_load~q\;
\ALT_INV_Selector26~1_combout\ <= NOT \Selector26~1_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[48]~11_combout\ <= NOT \shifter|auto_generated|sbit_w[48]~11_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[56]~10_combout\ <= NOT \shifter|auto_generated|sbit_w[56]~10_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[36]~9_combout\ <= NOT \shifter|auto_generated|sbit_w[36]~9_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[18]~8_combout\ <= NOT \shifter|auto_generated|sbit_w[18]~8_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[20]~7_combout\ <= NOT \shifter|auto_generated|sbit_w[20]~7_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[44]~6_combout\ <= NOT \shifter|auto_generated|sbit_w[44]~6_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[30]~5_combout\ <= NOT \shifter|auto_generated|sbit_w[30]~5_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[28]~4_combout\ <= NOT \shifter|auto_generated|sbit_w[28]~4_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[40]~3_combout\ <= NOT \shifter|auto_generated|sbit_w[40]~3_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[22]~2_combout\ <= NOT \shifter|auto_generated|sbit_w[22]~2_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[26]~1_combout\ <= NOT \shifter|auto_generated|sbit_w[26]~1_combout\;
\shifter|auto_generated|ALT_INV_sbit_w[24]~0_combout\ <= NOT \shifter|auto_generated|sbit_w[24]~0_combout\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_state.ex_shift~q\ <= NOT \state.ex_shift~q\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_state.ex_add~q\ <= NOT \state.ex_add~q\;
\ALT_INV_state.ex_addi~q\ <= NOT \state.ex_addi~q\;
\ALT_INV_state.ex_sub~q\ <= NOT \state.ex_sub~q\;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;
\ALT_INV_state.ex_istore~q\ <= NOT \state.ex_istore~q\;
\ALT_INV_state.ex_store~q\ <= NOT \state.ex_store~q\;
\ALT_INV_state.ex_out~q\ <= NOT \state.ex_out~q\;
\ALT_INV_state.ex_in~q\ <= NOT \state.ex_in~q\;
\ALT_INV_state.ex_out2~q\ <= NOT \state.ex_out2~q\;
\ALT_INV_state.ex_in2~q\ <= NOT \state.ex_in2~q\;
\ALT_INV_state.init~q\ <= NOT \state.init~q\;
\ALT_INV_state~33_combout\ <= NOT \state~33_combout\;
\ALT_INV_state~32_combout\ <= NOT \state~32_combout\;
\ALT_INV_WideNor0~combout\ <= NOT \WideNor0~combout\;
\ALT_INV_state.ex_iload~q\ <= NOT \state.ex_iload~q\;
\ALT_INV_state.decode~q\ <= NOT \state.decode~q\;
\ALT_INV_state.ex_istore2~q\ <= NOT \state.ex_istore2~q\;
ALT_INV_AC(15) <= NOT AC(15);
ALT_INV_AC(14) <= NOT AC(14);
ALT_INV_AC(13) <= NOT AC(13);
ALT_INV_AC(12) <= NOT AC(12);
ALT_INV_AC(11) <= NOT AC(11);
ALT_INV_AC(10) <= NOT AC(10);
ALT_INV_AC(9) <= NOT AC(9);
ALT_INV_AC(8) <= NOT AC(8);
ALT_INV_AC(7) <= NOT AC(7);
ALT_INV_AC(6) <= NOT AC(6);
ALT_INV_AC(5) <= NOT AC(5);
ALT_INV_AC(4) <= NOT AC(4);
ALT_INV_AC(3) <= NOT AC(3);
ALT_INV_AC(2) <= NOT AC(2);
ALT_INV_AC(1) <= NOT AC(1);
ALT_INV_AC(0) <= NOT AC(0);
\ALT_INV_state.fetch~q\ <= NOT \state.fetch~q\;
ALT_INV_IR(10) <= NOT IR(10);
ALT_INV_IR(9) <= NOT IR(9);
ALT_INV_IR(8) <= NOT IR(8);
ALT_INV_IR(7) <= NOT IR(7);
ALT_INV_IR(6) <= NOT IR(6);
ALT_INV_IR(5) <= NOT IR(5);
ALT_INV_IR(4) <= NOT IR(4);
ALT_INV_IR(3) <= NOT IR(3);
ALT_INV_IR(2) <= NOT IR(2);
ALT_INV_IR(1) <= NOT IR(1);
ALT_INV_IR(0) <= NOT IR(0);
\ALT_INV_IO_CYCLE~reg0_q\ <= NOT \IO_CYCLE~reg0_q\;
\ALT_INV_IO_WRITE_int~q\ <= NOT \IO_WRITE_int~q\;

\IO_DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[0]~output_o\);

\IO_DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[1]~output_o\);

\IO_DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[2]~output_o\);

\IO_DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[3]~output_o\);

\IO_DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[4]~output_o\);

\IO_DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[5]~output_o\);

\IO_DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[6]~output_o\);

\IO_DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[7]~output_o\);

\IO_DATA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[8]~output_o\);

\IO_DATA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[9]~output_o\);

\IO_DATA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[10]~output_o\);

\IO_DATA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[11]~output_o\);

\IO_DATA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[12]~output_o\);

\IO_DATA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[13]~output_o\);

\IO_DATA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[14]~output_o\);

\IO_DATA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[15]~output_o\);

\IO_WRITE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_WRITE~output_o\);

\IO_CYCLE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_CYCLE~reg0_q\,
	devoe => ww_devoe,
	o => \IO_CYCLE~output_o\);

\IO_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => \IO_ADDR[0]~output_o\);

\IO_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => \IO_ADDR[1]~output_o\);

\IO_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => \IO_ADDR[2]~output_o\);

\IO_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => \IO_ADDR[3]~output_o\);

\IO_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => \IO_ADDR[4]~output_o\);

\IO_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => \IO_ADDR[5]~output_o\);

\IO_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => \IO_ADDR[6]~output_o\);

\IO_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => \IO_ADDR[7]~output_o\);

\IO_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => \IO_ADDR[8]~output_o\);

\IO_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => \IO_ADDR[9]~output_o\);

\IO_ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => \IO_ADDR[10]~output_o\);

\dbg_FETCH~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.fetch~q\,
	devoe => ww_devoe,
	o => \dbg_FETCH~output_o\);

\dbg_AC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	devoe => ww_devoe,
	o => \dbg_AC[0]~output_o\);

\dbg_AC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	devoe => ww_devoe,
	o => \dbg_AC[1]~output_o\);

\dbg_AC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	devoe => ww_devoe,
	o => \dbg_AC[2]~output_o\);

\dbg_AC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	devoe => ww_devoe,
	o => \dbg_AC[3]~output_o\);

\dbg_AC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	devoe => ww_devoe,
	o => \dbg_AC[4]~output_o\);

\dbg_AC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	devoe => ww_devoe,
	o => \dbg_AC[5]~output_o\);

\dbg_AC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	devoe => ww_devoe,
	o => \dbg_AC[6]~output_o\);

\dbg_AC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	devoe => ww_devoe,
	o => \dbg_AC[7]~output_o\);

\dbg_AC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	devoe => ww_devoe,
	o => \dbg_AC[8]~output_o\);

\dbg_AC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	devoe => ww_devoe,
	o => \dbg_AC[9]~output_o\);

\dbg_AC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	devoe => ww_devoe,
	o => \dbg_AC[10]~output_o\);

\dbg_AC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	devoe => ww_devoe,
	o => \dbg_AC[11]~output_o\);

\dbg_AC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	devoe => ww_devoe,
	o => \dbg_AC[12]~output_o\);

\dbg_AC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	devoe => ww_devoe,
	o => \dbg_AC[13]~output_o\);

\dbg_AC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	devoe => ww_devoe,
	o => \dbg_AC[14]~output_o\);

\dbg_AC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	devoe => ww_devoe,
	o => \dbg_AC[15]~output_o\);

\dbg_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(0),
	devoe => ww_devoe,
	o => \dbg_PC[0]~output_o\);

\dbg_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(1),
	devoe => ww_devoe,
	o => \dbg_PC[1]~output_o\);

\dbg_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(2),
	devoe => ww_devoe,
	o => \dbg_PC[2]~output_o\);

\dbg_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(3),
	devoe => ww_devoe,
	o => \dbg_PC[3]~output_o\);

\dbg_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(4),
	devoe => ww_devoe,
	o => \dbg_PC[4]~output_o\);

\dbg_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(5),
	devoe => ww_devoe,
	o => \dbg_PC[5]~output_o\);

\dbg_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(6),
	devoe => ww_devoe,
	o => \dbg_PC[6]~output_o\);

\dbg_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(7),
	devoe => ww_devoe,
	o => \dbg_PC[7]~output_o\);

\dbg_PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(8),
	devoe => ww_devoe,
	o => \dbg_PC[8]~output_o\);

\dbg_PC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(9),
	devoe => ww_devoe,
	o => \dbg_PC[9]~output_o\);

\dbg_PC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(10),
	devoe => ww_devoe,
	o => \dbg_PC[10]~output_o\);

\dbg_MA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[0]~output_o\);

\dbg_MA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[1]~1_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[1]~output_o\);

\dbg_MA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[2]~2_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[2]~output_o\);

\dbg_MA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[3]~3_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[3]~output_o\);

\dbg_MA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[4]~4_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[4]~output_o\);

\dbg_MA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[5]~5_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[5]~output_o\);

\dbg_MA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[6]~6_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[6]~output_o\);

\dbg_MA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[7]~7_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[7]~output_o\);

\dbg_MA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[8]~8_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[8]~output_o\);

\dbg_MA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[9]~9_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[9]~output_o\);

\dbg_MA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[10]~10_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[10]~output_o\);

\dbg_MD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \dbg_MD[0]~output_o\);

\dbg_MD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \dbg_MD[1]~output_o\);

\dbg_MD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \dbg_MD[2]~output_o\);

\dbg_MD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \dbg_MD[3]~output_o\);

\dbg_MD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \dbg_MD[4]~output_o\);

\dbg_MD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \dbg_MD[5]~output_o\);

\dbg_MD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \dbg_MD[6]~output_o\);

\dbg_MD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \dbg_MD[7]~output_o\);

\dbg_MD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \dbg_MD[8]~output_o\);

\dbg_MD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \dbg_MD[9]~output_o\);

\dbg_MD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \dbg_MD[10]~output_o\);

\dbg_MD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \dbg_MD[11]~output_o\);

\dbg_MD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \dbg_MD[12]~output_o\);

\dbg_MD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \dbg_MD[13]~output_o\);

\dbg_MD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \dbg_MD[14]~output_o\);

\dbg_MD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \dbg_MD[15]~output_o\);

\dbg_IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => \dbg_IR[0]~output_o\);

\dbg_IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => \dbg_IR[1]~output_o\);

\dbg_IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => \dbg_IR[2]~output_o\);

\dbg_IR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => \dbg_IR[3]~output_o\);

\dbg_IR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => \dbg_IR[4]~output_o\);

\dbg_IR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => \dbg_IR[5]~output_o\);

\dbg_IR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => \dbg_IR[6]~output_o\);

\dbg_IR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => \dbg_IR[7]~output_o\);

\dbg_IR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => \dbg_IR[8]~output_o\);

\dbg_IR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => \dbg_IR[9]~output_o\);

\dbg_IR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => \dbg_IR[10]~output_o\);

\dbg_IR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(11),
	devoe => ww_devoe,
	o => \dbg_IR[11]~output_o\);

\dbg_IR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(12),
	devoe => ww_devoe,
	o => \dbg_IR[12]~output_o\);

\dbg_IR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(13),
	devoe => ww_devoe,
	o => \dbg_IR[13]~output_o\);

\dbg_IR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(14),
	devoe => ww_devoe,
	o => \dbg_IR[14]~output_o\);

\dbg_IR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(15),
	devoe => ww_devoe,
	o => \dbg_IR[15]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\Add1~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(10)))) # (\state.ex_addi~q\ & (IR(10))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(10))))) ) ) # 
-- ( !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(10) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~78_combout\);

\Add1~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(4)))) # (\state.ex_addi~q\ & (IR(4))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(4))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(4) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~72_combout\);

\Add1~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(3)))) # (\state.ex_addi~q\ & (IR(3))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(3))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(3) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~71_combout\);

\state~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~34_combout\,
	combout => \state~35_combout\);

\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

\state.ex_iload\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~35_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_iload~q\);

\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(0) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(0)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(0) & ( (IR(0) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \Selector11~0_combout\);

\state~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (\state.decode~q\ & (!\altsyncram_component|auto_generated|q_a\(11) & !\altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \state~36_combout\);

\state~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~54_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & (\altsyncram_component|auto_generated|q_a\(15) & \state~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \ALT_INV_state~36_combout\,
	combout => \state~54_combout\);

\state.ex_call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~54_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_call~q\);

\PC_stack[9][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][0]~1_combout\ = (\resetn~input_o\ & \state.ex_call~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \ALT_INV_state.ex_call~q\,
	combout => \PC_stack[9][0]~1_combout\);

\PC_stack[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][0]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][0]~q\);

\state~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(14) & \altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \state~32_combout\);

\state~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~50_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~32_combout\,
	combout => \state~50_combout\);

\state.ex_return\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~50_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_return~q\);

\PC_stack[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][0]~0_combout\ = (\resetn~input_o\ & ((\state.ex_call~q\) # (\state.ex_return~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \ALT_INV_state.ex_return~q\,
	datac => \ALT_INV_state.ex_call~q\,
	combout => \PC_stack[0][0]~0_combout\);

\PC_stack[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][0]~q\,
	asdata => \PC_stack[7][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][0]~q\);

\PC_stack[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][0]~q\,
	asdata => \PC_stack[6][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][0]~q\);

\PC_stack[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][0]~q\,
	asdata => \PC_stack[5][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][0]~q\);

\PC_stack[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][0]~q\,
	asdata => \PC_stack[4][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][0]~q\);

\PC_stack[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][0]~q\,
	asdata => \PC_stack[3][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][0]~q\);

\PC_stack[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][0]~q\,
	asdata => \PC_stack[2][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][0]~q\);

\PC_stack[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][0]~q\,
	asdata => \PC_stack[1][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][0]~q\);

\PC_stack[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][0]~q\,
	asdata => \PC_stack[0][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][0]~q\);

\PC_stack[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][0]~q\,
	asdata => PC(0),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][0]~q\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( PC(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( PC(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ( \Add0~1_sumout\ & ( (!\state.ex_return~q\ & (((\Selector11~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][0]~q\)))) ) ) # ( !\Add0~1_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector11~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001111011101110000111100100010000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector11~0_combout\,
	datac => \ALT_INV_PC_stack[0][0]~q\,
	datad => \ALT_INV_state.ex_return~q\,
	datae => \ALT_INV_Add0~1_sumout\,
	combout => \Selector11~1_combout\);

\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => VCC,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

\state~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~51_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~34_combout\,
	combout => \state~51_combout\);

\state.ex_jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~51_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jzero~q\);

\state~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~52_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_Selector29~0_combout\,
	combout => \state~52_combout\);

\state.ex_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~52_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jpos~q\);

\state~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~38_combout\ = (!\altsyncram_component|auto_generated|q_a\(15) & \state~36_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datab => \ALT_INV_state~36_combout\,
	combout => \state~38_combout\);

\state~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~53_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~38_combout\,
	combout => \state~53_combout\);

\state.ex_jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~53_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jneg~q\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!AC(0) & (!AC(1) & (!AC(2) & !AC(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(0),
	datab => ALT_INV_AC(1),
	datac => ALT_INV_AC(2),
	datad => ALT_INV_AC(3),
	combout => \Equal0~0_combout\);

\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (IR(3) & \state.ex_shift~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \ALT_INV_state.ex_shift~q\,
	combout => \Selector19~0_combout\);

\Add1~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(12)))) # (\state.ex_addi~q\ & (IR(10))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(12))))) ) ) # 
-- ( !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(10) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~80_combout\);

\Add1~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(11)))) # (\state.ex_addi~q\ & (IR(10))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(11))))) ) ) # 
-- ( !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(10) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~79_combout\);

\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \Add1~78_combout\ ) + ( (AC(10) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \Add1~78_combout\ ) + ( (AC(10) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~78_combout\,
	dataf => ALT_INV_AC(10),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \Add1~79_combout\ ) + ( (AC(11) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \Add1~79_combout\ ) + ( (AC(11) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~79_combout\,
	dataf => ALT_INV_AC(11),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \Add1~80_combout\ ) + ( (AC(12) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \Add1~80_combout\ ) + ( (AC(12) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~80_combout\,
	dataf => ALT_INV_AC(12),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(1) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(1)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(1) & ( (IR(1) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \Selector10~0_combout\);

\PC_stack[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][1]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][1]~q\);

\PC_stack[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][1]~q\,
	asdata => \PC_stack[7][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][1]~q\);

\PC_stack[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][1]~q\,
	asdata => \PC_stack[6][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][1]~q\);

\PC_stack[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][1]~q\,
	asdata => \PC_stack[5][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][1]~q\);

\PC_stack[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][1]~q\,
	asdata => \PC_stack[4][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][1]~q\);

\PC_stack[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][1]~q\,
	asdata => \PC_stack[3][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][1]~q\);

\PC_stack[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][1]~q\,
	asdata => \PC_stack[2][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][1]~q\);

\PC_stack[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][1]~q\,
	asdata => \PC_stack[1][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][1]~q\);

\PC_stack[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][1]~q\,
	asdata => \PC_stack[0][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][1]~q\);

\PC_stack[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][1]~q\,
	asdata => PC(1),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][1]~q\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( PC(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( PC(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \Add0~5_sumout\ & ( (!\state.ex_return~q\ & (((\Selector10~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][1]~q\)))) ) ) # ( !\Add0~5_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector10~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector10~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][1]~q\,
	datae => \ALT_INV_Add0~5_sumout\,
	combout => \Selector10~1_combout\);

\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector10~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

WideNor0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (!\state.ex_istore2~q\ & (!\state.decode~q\ & !\state.ex_iload~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_istore2~q\,
	datab => \ALT_INV_state.decode~q\,
	datac => \ALT_INV_state.ex_iload~q\,
	combout => \WideNor0~combout\);

\next_mem_addr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[1]~1_combout\ = ( \altsyncram_component|auto_generated|q_a\(1) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(1)))) # (\state.fetch~q\ & (((PC(1))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(1) & ( (!\state.fetch~q\ & 
-- (IR(1) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(1),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \next_mem_addr[1]~1_combout\);

\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(2) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(2)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(2) & ( (IR(2) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \Selector9~0_combout\);

\PC_stack[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][2]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][2]~q\);

\PC_stack[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][2]~q\,
	asdata => \PC_stack[7][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][2]~q\);

\PC_stack[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][2]~q\,
	asdata => \PC_stack[6][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][2]~q\);

\PC_stack[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][2]~q\,
	asdata => \PC_stack[5][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][2]~q\);

\PC_stack[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][2]~q\,
	asdata => \PC_stack[4][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][2]~q\);

\PC_stack[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][2]~q\,
	asdata => \PC_stack[3][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][2]~q\);

\PC_stack[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][2]~q\,
	asdata => \PC_stack[2][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][2]~q\);

\PC_stack[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][2]~q\,
	asdata => \PC_stack[1][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][2]~q\);

\PC_stack[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][2]~q\,
	asdata => \PC_stack[0][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][2]~q\);

\PC_stack[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][2]~q\,
	asdata => PC(2),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][2]~q\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( PC(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( PC(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \Add0~9_sumout\ & ( (!\state.ex_return~q\ & (((\Selector9~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][2]~q\)))) ) ) # ( !\Add0~9_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector9~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector9~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][2]~q\,
	datae => \ALT_INV_Add0~9_sumout\,
	combout => \Selector9~1_combout\);

\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector9~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

\next_mem_addr[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[2]~2_combout\ = ( \altsyncram_component|auto_generated|q_a\(2) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(2)))) # (\state.fetch~q\ & (((PC(2))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(2) & ( (!\state.fetch~q\ & 
-- (IR(2) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(2),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \next_mem_addr[2]~2_combout\);

\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(3) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(3)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(3) & ( (IR(3) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \Selector8~0_combout\);

\PC_stack[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][3]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][3]~q\);

\PC_stack[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][3]~q\,
	asdata => \PC_stack[7][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][3]~q\);

\PC_stack[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][3]~q\,
	asdata => \PC_stack[6][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][3]~q\);

\PC_stack[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][3]~q\,
	asdata => \PC_stack[5][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][3]~q\);

\PC_stack[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][3]~q\,
	asdata => \PC_stack[4][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][3]~q\);

\PC_stack[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][3]~q\,
	asdata => \PC_stack[3][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][3]~q\);

\PC_stack[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][3]~q\,
	asdata => \PC_stack[2][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][3]~q\);

\PC_stack[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][3]~q\,
	asdata => \PC_stack[1][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][3]~q\);

\PC_stack[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][3]~q\,
	asdata => \PC_stack[0][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][3]~q\);

\PC_stack[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][3]~q\,
	asdata => PC(3),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][3]~q\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( PC(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( PC(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \Add0~13_sumout\ & ( (!\state.ex_return~q\ & (((\Selector8~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][3]~q\)))) ) ) # ( !\Add0~13_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector8~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector8~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][3]~q\,
	datae => \ALT_INV_Add0~13_sumout\,
	combout => \Selector8~1_combout\);

\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector8~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

\next_mem_addr[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[3]~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(3) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(3)))) # (\state.fetch~q\ & (((PC(3))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(3) & ( (!\state.fetch~q\ & 
-- (IR(3) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(3),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \next_mem_addr[3]~3_combout\);

\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(4) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(4)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(4) & ( (IR(4) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \Selector7~0_combout\);

\PC_stack[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][4]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][4]~q\);

\PC_stack[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][4]~q\,
	asdata => \PC_stack[7][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][4]~q\);

\PC_stack[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][4]~q\,
	asdata => \PC_stack[6][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][4]~q\);

\PC_stack[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][4]~q\,
	asdata => \PC_stack[5][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][4]~q\);

\PC_stack[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][4]~q\,
	asdata => \PC_stack[4][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][4]~q\);

\PC_stack[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][4]~q\,
	asdata => \PC_stack[3][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][4]~q\);

\PC_stack[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][4]~q\,
	asdata => \PC_stack[2][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][4]~q\);

\PC_stack[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][4]~q\,
	asdata => \PC_stack[1][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][4]~q\);

\PC_stack[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][4]~q\,
	asdata => \PC_stack[0][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][4]~q\);

\PC_stack[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][4]~q\,
	asdata => PC(4),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][4]~q\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( PC(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( PC(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( \Add0~17_sumout\ & ( (!\state.ex_return~q\ & (((\Selector7~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][4]~q\)))) ) ) # ( !\Add0~17_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector7~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector7~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][4]~q\,
	datae => \ALT_INV_Add0~17_sumout\,
	combout => \Selector7~1_combout\);

\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector7~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

\next_mem_addr[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[4]~4_combout\ = ( \altsyncram_component|auto_generated|q_a\(4) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(4)))) # (\state.fetch~q\ & (((PC(4))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(4) & ( (!\state.fetch~q\ & 
-- (IR(4) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(4),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \next_mem_addr[4]~4_combout\);

\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(5)))) # (\state.ex_addi~q\ & (IR(5))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(5))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(5) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(5),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~73_combout\);

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \Add1~72_combout\ ) + ( (AC(4) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \Add1~72_combout\ ) + ( (AC(4) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~72_combout\,
	dataf => ALT_INV_AC(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \Add1~73_combout\ ) + ( (AC(5) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \Add1~73_combout\ ) + ( (AC(5) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~73_combout\,
	dataf => ALT_INV_AC(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

\Add1~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(6)))) # (\state.ex_addi~q\ & (IR(6))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(6))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(6) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(6),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~74_combout\);

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \Add1~74_combout\ ) + ( (AC(6) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \Add1~74_combout\ ) + ( (AC(6) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~74_combout\,
	dataf => ALT_INV_AC(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

\shifter|auto_generated|sbit_w[26]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[26]~1_combout\ = ( AC(11) & ( (!IR(0) & (((AC(10))))) # (IR(0) & (((AC(9))) # (IR(4)))) ) ) # ( !AC(11) & ( (!IR(0) & (((AC(10))))) # (IR(0) & (!IR(4) & (AC(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(9),
	datad => ALT_INV_AC(10),
	datae => ALT_INV_AC(11),
	combout => \shifter|auto_generated|sbit_w[26]~1_combout\);

\shifter|auto_generated|sbit_w[28]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[28]~4_combout\ = ( AC(13) & ( (!IR(0) & (((AC(12))))) # (IR(0) & (((AC(11))) # (IR(4)))) ) ) # ( !AC(13) & ( (!IR(0) & (((AC(12))))) # (IR(0) & (!IR(4) & (AC(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(11),
	datad => ALT_INV_AC(12),
	datae => ALT_INV_AC(13),
	combout => \shifter|auto_generated|sbit_w[28]~4_combout\);

\shifter|auto_generated|sbit_w[42]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[42]~24_combout\ = ( \shifter|auto_generated|sbit_w[28]~4_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[26]~1_combout\)))) # (IR(1) & (((\shifter|auto_generated|sbit_w[24]~0_combout\)) # (IR(4)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[28]~4_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[26]~1_combout\)))) # (IR(1) & (!IR(4) & (\shifter|auto_generated|sbit_w[24]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[24]~0_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[26]~1_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[28]~4_combout\,
	combout => \shifter|auto_generated|sbit_w[42]~24_combout\);

\shifter|auto_generated|sbit_w[30]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[30]~5_combout\ = ( AC(15) & ( (!IR(0) & (((AC(14))))) # (IR(0) & (((AC(13))) # (IR(4)))) ) ) # ( !AC(15) & ( (!IR(0) & (((AC(14))))) # (IR(0) & (!IR(4) & (AC(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(13),
	datad => ALT_INV_AC(14),
	datae => ALT_INV_AC(15),
	combout => \shifter|auto_generated|sbit_w[30]~5_combout\);

\shifter|auto_generated|sbit_w[46]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[46]~25_combout\ = ( \shifter|auto_generated|sbit_w[30]~5_combout\ & ( (!IR(1)) # ((!IR(4) & ((\shifter|auto_generated|sbit_w[28]~4_combout\))) # (IR(4) & (AC(15)))) ) ) # ( !\shifter|auto_generated|sbit_w[30]~5_combout\ & ( 
-- (IR(1) & ((!IR(4) & ((\shifter|auto_generated|sbit_w[28]~4_combout\))) # (IR(4) & (AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101101010111110111100000001010001011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[28]~4_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[30]~5_combout\,
	combout => \shifter|auto_generated|sbit_w[46]~25_combout\);

\shifter|auto_generated|sbit_w[62]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[62]~38_combout\ = ( \shifter|auto_generated|sbit_w[46]~25_combout\ & ( (!IR(2)) # ((!IR(4) & ((\shifter|auto_generated|sbit_w[42]~24_combout\))) # (IR(4) & (AC(15)))) ) ) # ( !\shifter|auto_generated|sbit_w[46]~25_combout\ & 
-- ( (IR(2) & ((!IR(4) & ((\shifter|auto_generated|sbit_w[42]~24_combout\))) # (IR(4) & (AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101101010111110111100000001010001011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[46]~25_combout\,
	combout => \shifter|auto_generated|sbit_w[62]~38_combout\);

\shifter|auto_generated|sbit_w[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[22]~2_combout\ = ( AC(7) & ( (!IR(0) & (((AC(6))))) # (IR(0) & (((AC(5))) # (IR(4)))) ) ) # ( !AC(7) & ( (!IR(0) & (((AC(6))))) # (IR(0) & (!IR(4) & (AC(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(5),
	datad => ALT_INV_AC(6),
	datae => ALT_INV_AC(7),
	combout => \shifter|auto_generated|sbit_w[22]~2_combout\);

\shifter|auto_generated|sbit_w[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[20]~7_combout\ = ( AC(5) & ( (!IR(0) & (((AC(4))))) # (IR(0) & (((AC(3))) # (IR(4)))) ) ) # ( !AC(5) & ( (!IR(0) & (((AC(4))))) # (IR(0) & (!IR(4) & (AC(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(3),
	datad => ALT_INV_AC(4),
	datae => ALT_INV_AC(5),
	combout => \shifter|auto_generated|sbit_w[20]~7_combout\);

\shifter|auto_generated|sbit_w[38]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[38]~26_combout\ = ( \shifter|auto_generated|sbit_w[20]~7_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[22]~2_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[24]~0_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[20]~7_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[22]~2_combout\)))) # (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[24]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010001011110111100000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[24]~0_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[22]~2_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[20]~7_combout\,
	combout => \shifter|auto_generated|sbit_w[38]~26_combout\);

\shifter|auto_generated|sbit_w[18]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[18]~8_combout\ = ( AC(3) & ( (!IR(0) & (((AC(2))))) # (IR(0) & (((AC(1))) # (IR(4)))) ) ) # ( !AC(3) & ( (!IR(0) & (((AC(2))))) # (IR(0) & (!IR(4) & (AC(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(1),
	datad => ALT_INV_AC(2),
	datae => ALT_INV_AC(3),
	combout => \shifter|auto_generated|sbit_w[18]~8_combout\);

\shifter|auto_generated|sbit_w[34]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[34]~28_combout\ = ( \shifter|auto_generated|sbit_w[20]~7_combout\ & ( \shifter|auto_generated|sbit_w[18]~8_combout\ & ( (!IR(1)) # (((!IR(0) & AC(0))) # (IR(4))) ) ) ) # ( !\shifter|auto_generated|sbit_w[20]~7_combout\ & ( 
-- \shifter|auto_generated|sbit_w[18]~8_combout\ & ( (!IR(1)) # ((!IR(0) & (!IR(4) & AC(0)))) ) ) ) # ( \shifter|auto_generated|sbit_w[20]~7_combout\ & ( !\shifter|auto_generated|sbit_w[18]~8_combout\ & ( (IR(1) & (((!IR(0) & AC(0))) # (IR(4)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[20]~7_combout\ & ( !\shifter|auto_generated|sbit_w[18]~8_combout\ & ( (!IR(0) & (IR(1) & (!IR(4) & AC(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000110010001111001100111011001100111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(0),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[20]~7_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[18]~8_combout\,
	combout => \shifter|auto_generated|sbit_w[34]~28_combout\);

\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \shifter|auto_generated|sbit_w[38]~26_combout\ & ( \shifter|auto_generated|sbit_w[34]~28_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # ((!IR(4)) # (\shifter|auto_generated|sbit_w[42]~24_combout\)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[38]~26_combout\ & ( \shifter|auto_generated|sbit_w[34]~28_combout\ & ( (IR(2) & (\Selector26~1_combout\ & ((!IR(4)) # (\shifter|auto_generated|sbit_w[42]~24_combout\)))) ) ) ) # ( 
-- \shifter|auto_generated|sbit_w[38]~26_combout\ & ( !\shifter|auto_generated|sbit_w[34]~28_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # ((IR(4) & \shifter|auto_generated|sbit_w[42]~24_combout\)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[38]~26_combout\ & ( !\shifter|auto_generated|sbit_w[34]~28_combout\ & ( (IR(2) & (IR(4) & (\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[42]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000010100000101100000100000001010000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_Selector26~1_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[34]~28_combout\,
	combout => \Selector21~0_combout\);

\state~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~49_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~40_combout\,
	combout => \state~49_combout\);

\state.ex_and\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~49_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_and~q\);

\state.ex_in2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.ex_in~q\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in2~q\);

\Selector29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = ((!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\))) # (\state.ex_iload~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111010101010101011101010101010101110101010101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_iload~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \ALT_INV_Selector29~0_combout\,
	combout => \Selector29~1_combout\);

\state.ex_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector29~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_load~q\);

\state~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~46_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~34_combout\,
	combout => \state~46_combout\);

\state.ex_or\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~46_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_or~q\);

\state~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~47_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~32_combout\,
	combout => \state~47_combout\);

\state.ex_loadi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~47_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_loadi~q\);

\state~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~48_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~40_combout\,
	combout => \state~48_combout\);

\state.ex_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~48_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_xor~q\);

\WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = ( !\state.ex_and~q\ & ( (\state.init~q\ & (!\state.ex_loadi~q\ & (!\state.ex_shift~q\ & !\state.ex_xor~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.init~q\,
	datab => \ALT_INV_state.ex_loadi~q\,
	datac => \ALT_INV_state.ex_shift~q\,
	datad => \ALT_INV_state.ex_xor~q\,
	datae => \ALT_INV_state.ex_and~q\,
	combout => \WideOr3~1_combout\);

\Selector26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = ( \WideOr3~1_combout\ & ( (!\state.ex_or~q\ & (((!\WideOr3~0_combout\) # (\state.ex_load~q\)) # (\state.ex_in2~q\))) ) ) # ( !\WideOr3~1_combout\ & ( !\state.ex_or~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110111110000000011111111000000001101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~q\,
	datab => \ALT_INV_WideOr3~0_combout\,
	datac => \ALT_INV_state.ex_load~q\,
	datad => \ALT_INV_state.ex_or~q\,
	datae => \ALT_INV_WideOr3~1_combout\,
	combout => \Selector26~2_combout\);

\IO_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(6),
	o => \IO_DATA[6]~input_o\);

\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (!IR(6) & (\IO_DATA[6]~input_o\ & (\state.ex_in2~q\))) # (IR(6) & (((\IO_DATA[6]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(6),
	datab => \ALT_INV_IO_DATA[6]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector21~1_combout\);

\Selector21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(6) & ((!AC(6)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(6) & ((!AC(6)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(6) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(6),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector21~2_combout\);

\Selector21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = ( !\Selector21~1_combout\ & ( \Selector21~2_combout\ & ( (!AC(6)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(6)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(6),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector21~1_combout\,
	dataf => \ALT_INV_Selector21~2_combout\,
	combout => \Selector21~3_combout\);

\Selector21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = ( \Selector21~0_combout\ & ( \Selector21~3_combout\ ) ) # ( !\Selector21~0_combout\ & ( \Selector21~3_combout\ & ( (!\WideOr3~0_combout\ & (((\Selector26~0_combout\ & \shifter|auto_generated|sbit_w[62]~38_combout\)) # 
-- (\Add1~25_sumout\))) # (\WideOr3~0_combout\ & (\Selector26~0_combout\ & ((\shifter|auto_generated|sbit_w[62]~38_combout\)))) ) ) ) # ( \Selector21~0_combout\ & ( !\Selector21~3_combout\ ) ) # ( !\Selector21~0_combout\ & ( !\Selector21~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[62]~38_combout\,
	datae => \ALT_INV_Selector21~0_combout\,
	dataf => \ALT_INV_Selector21~3_combout\,
	combout => \Selector21~4_combout\);

\AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector21~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(6));

\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(7) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(7)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(7) & ( (IR(7) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(7),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \Selector4~0_combout\);

\PC_stack[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][7]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][7]~q\);

\PC_stack[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][7]~q\,
	asdata => \PC_stack[7][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][7]~q\);

\PC_stack[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][7]~q\,
	asdata => \PC_stack[6][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][7]~q\);

\PC_stack[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][7]~q\,
	asdata => \PC_stack[5][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][7]~q\);

\PC_stack[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][7]~q\,
	asdata => \PC_stack[4][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][7]~q\);

\PC_stack[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][7]~q\,
	asdata => \PC_stack[3][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][7]~q\);

\PC_stack[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][7]~q\,
	asdata => \PC_stack[2][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][7]~q\);

\PC_stack[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][7]~q\,
	asdata => \PC_stack[1][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][7]~q\);

\PC_stack[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][7]~q\,
	asdata => \PC_stack[0][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][7]~q\);

\PC_stack[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][7]~q\,
	asdata => PC(7),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][7]~q\);

\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(6) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(6)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(6) & ( (IR(6) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(6),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \Selector5~0_combout\);

\PC_stack[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][6]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][6]~q\);

\PC_stack[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][6]~q\,
	asdata => \PC_stack[7][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][6]~q\);

\PC_stack[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][6]~q\,
	asdata => \PC_stack[6][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][6]~q\);

\PC_stack[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][6]~q\,
	asdata => \PC_stack[5][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][6]~q\);

\PC_stack[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][6]~q\,
	asdata => \PC_stack[4][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][6]~q\);

\PC_stack[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][6]~q\,
	asdata => \PC_stack[3][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][6]~q\);

\PC_stack[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][6]~q\,
	asdata => \PC_stack[2][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][6]~q\);

\PC_stack[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][6]~q\,
	asdata => \PC_stack[1][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][6]~q\);

\PC_stack[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][6]~q\,
	asdata => \PC_stack[0][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][6]~q\);

\PC_stack[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][6]~q\,
	asdata => PC(6),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][6]~q\);

\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(5) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(5)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(5) & ( (IR(5) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(5),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \Selector6~0_combout\);

\PC_stack[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][5]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][5]~q\);

\PC_stack[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][5]~q\,
	asdata => \PC_stack[7][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][5]~q\);

\PC_stack[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][5]~q\,
	asdata => \PC_stack[6][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][5]~q\);

\PC_stack[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][5]~q\,
	asdata => \PC_stack[5][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][5]~q\);

\PC_stack[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][5]~q\,
	asdata => \PC_stack[4][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][5]~q\);

\PC_stack[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][5]~q\,
	asdata => \PC_stack[3][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][5]~q\);

\PC_stack[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][5]~q\,
	asdata => \PC_stack[2][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][5]~q\);

\PC_stack[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][5]~q\,
	asdata => \PC_stack[1][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][5]~q\);

\PC_stack[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][5]~q\,
	asdata => \PC_stack[0][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][5]~q\);

\PC_stack[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][5]~q\,
	asdata => PC(5),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][5]~q\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( PC(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( PC(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \Add0~21_sumout\ & ( (!\state.ex_return~q\ & (((\Selector6~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][5]~q\)))) ) ) # ( !\Add0~21_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector6~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector6~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][5]~q\,
	datae => \ALT_INV_Add0~21_sumout\,
	combout => \Selector6~1_combout\);

\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector6~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( PC(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( PC(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \Add0~25_sumout\ & ( (!\state.ex_return~q\ & (((\Selector5~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][6]~q\)))) ) ) # ( !\Add0~25_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector5~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector5~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][6]~q\,
	datae => \ALT_INV_Add0~25_sumout\,
	combout => \Selector5~1_combout\);

\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector5~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( PC(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( PC(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \Add0~29_sumout\ & ( (!\state.ex_return~q\ & (((\Selector4~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][7]~q\)))) ) ) # ( !\Add0~29_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector4~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][7]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector4~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][7]~q\,
	datae => \ALT_INV_Add0~29_sumout\,
	combout => \Selector4~1_combout\);

\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector4~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

\next_mem_addr[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[7]~7_combout\ = ( \altsyncram_component|auto_generated|q_a\(7) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(7)))) # (\state.fetch~q\ & (((PC(7))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(7) & ( (!\state.fetch~q\ & 
-- (IR(7) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(7),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(7),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \next_mem_addr[7]~7_combout\);

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(8) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(8)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(8) & ( (IR(8) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(8),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \Selector3~0_combout\);

\PC_stack[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][8]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][8]~q\);

\PC_stack[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][8]~q\,
	asdata => \PC_stack[7][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][8]~q\);

\PC_stack[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][8]~q\,
	asdata => \PC_stack[6][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][8]~q\);

\PC_stack[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][8]~q\,
	asdata => \PC_stack[5][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][8]~q\);

\PC_stack[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][8]~q\,
	asdata => \PC_stack[4][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][8]~q\);

\PC_stack[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][8]~q\,
	asdata => \PC_stack[3][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][8]~q\);

\PC_stack[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][8]~q\,
	asdata => \PC_stack[2][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][8]~q\);

\PC_stack[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][8]~q\,
	asdata => \PC_stack[1][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][8]~q\);

\PC_stack[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][8]~q\,
	asdata => \PC_stack[0][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][8]~q\);

\PC_stack[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][8]~q\,
	asdata => PC(8),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][8]~q\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( PC(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( PC(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \Add0~33_sumout\ & ( (!\state.ex_return~q\ & (((\Selector3~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][8]~q\)))) ) ) # ( !\Add0~33_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector3~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][8]~q\,
	datae => \ALT_INV_Add0~33_sumout\,
	combout => \Selector3~1_combout\);

\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector3~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

\next_mem_addr[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[8]~8_combout\ = ( \altsyncram_component|auto_generated|q_a\(8) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(8)))) # (\state.fetch~q\ & (((PC(8))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(8) & ( (!\state.fetch~q\ & 
-- (IR(8) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(8),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(8),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \next_mem_addr[8]~8_combout\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(9) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(9)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(9) & ( (IR(9) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(9),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \Selector2~0_combout\);

\PC_stack[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][9]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][9]~q\);

\PC_stack[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][9]~q\,
	asdata => \PC_stack[7][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][9]~q\);

\PC_stack[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][9]~q\,
	asdata => \PC_stack[6][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][9]~q\);

\PC_stack[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][9]~q\,
	asdata => \PC_stack[5][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][9]~q\);

\PC_stack[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][9]~q\,
	asdata => \PC_stack[4][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][9]~q\);

\PC_stack[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][9]~q\,
	asdata => \PC_stack[3][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][9]~q\);

\PC_stack[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][9]~q\,
	asdata => \PC_stack[2][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][9]~q\);

\PC_stack[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][9]~q\,
	asdata => \PC_stack[1][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][9]~q\);

\PC_stack[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][9]~q\,
	asdata => \PC_stack[0][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][9]~q\);

\PC_stack[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][9]~q\,
	asdata => PC(9),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][9]~q\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( PC(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( PC(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \Add0~37_sumout\ & ( (!\state.ex_return~q\ & (((\Selector2~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][9]~q\)))) ) ) # ( !\Add0~37_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector2~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][9]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector2~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][9]~q\,
	datae => \ALT_INV_Add0~37_sumout\,
	combout => \Selector2~1_combout\);

\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector2~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

\next_mem_addr[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[9]~9_combout\ = ( \altsyncram_component|auto_generated|q_a\(9) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(9)))) # (\state.fetch~q\ & (((PC(9))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(9) & ( (!\state.fetch~q\ & 
-- (IR(9) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(9),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(9),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \next_mem_addr[9]~9_combout\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(10) & ( (((\state.ex_iload~q\) # (\state.decode~q\)) # (\state.ex_istore2~q\)) # (IR(10)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(10) & ( (IR(10) & (!\state.ex_istore2~q\ & 
-- (!\state.decode~q\ & !\state.ex_iload~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_state.ex_istore2~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.ex_iload~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \Selector1~0_combout\);

\PC_stack[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][10]~q\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][10]~q\);

\PC_stack[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[9][10]~q\,
	asdata => \PC_stack[7][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][10]~q\);

\PC_stack[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[8][10]~q\,
	asdata => \PC_stack[6][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][10]~q\);

\PC_stack[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[7][10]~q\,
	asdata => \PC_stack[5][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][10]~q\);

\PC_stack[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[6][10]~q\,
	asdata => \PC_stack[4][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][10]~q\);

\PC_stack[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[5][10]~q\,
	asdata => \PC_stack[3][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][10]~q\);

\PC_stack[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[4][10]~q\,
	asdata => \PC_stack[2][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][10]~q\);

\PC_stack[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[3][10]~q\,
	asdata => \PC_stack[1][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][10]~q\);

\PC_stack[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[2][10]~q\,
	asdata => \PC_stack[0][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][10]~q\);

\PC_stack[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \PC_stack[1][10]~q\,
	asdata => PC(10),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][10]~q\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( PC(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\);

\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \Add0~41_sumout\ & ( (!\state.ex_return~q\ & (((\Selector1~0_combout\)) # (\state.fetch~q\))) # (\state.ex_return~q\ & (((\PC_stack[0][10]~q\)))) ) ) # ( !\Add0~41_sumout\ & ( (!\state.ex_return~q\ & (!\state.fetch~q\ & 
-- (\Selector1~0_combout\))) # (\state.ex_return~q\ & (((\PC_stack[0][10]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100100000001011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_Selector1~0_combout\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_PC_stack[0][10]~q\,
	datae => \ALT_INV_Add0~41_sumout\,
	combout => \Selector1~1_combout\);

\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector1~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

\next_mem_addr[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[10]~10_combout\ = ( \altsyncram_component|auto_generated|q_a\(10) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(10)))) # (\state.fetch~q\ & (((PC(10))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(10) & ( (!\state.fetch~q\ 
-- & (IR(10) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(10),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \next_mem_addr[10]~10_combout\);

\altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030E080A0010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\IR[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[4]~0_combout\ = (\state.decode~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \ALT_INV_resetn~input_o\,
	combout => \IR[4]~0_combout\);

\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(6),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

\next_mem_addr[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[6]~6_combout\ = ( \altsyncram_component|auto_generated|q_a\(6) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(6)))) # (\state.fetch~q\ & (((PC(6))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(6) & ( (!\state.fetch~q\ & 
-- (IR(6) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(6),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(6),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \next_mem_addr[6]~6_combout\);

\altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020E04080010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(8),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(8));

\Add1~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(8)))) # (\state.ex_addi~q\ & (IR(8))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(8))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(8) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(8),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~76_combout\);

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \Add1~75_combout\ ) + ( (AC(7) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \Add1~75_combout\ ) + ( (AC(7) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~75_combout\,
	dataf => ALT_INV_AC(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \Add1~76_combout\ ) + ( (AC(8) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \Add1~76_combout\ ) + ( (AC(8) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~76_combout\,
	dataf => ALT_INV_AC(8),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(8) & ((!AC(8)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(8) & ((!AC(8)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(8) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(8),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector19~1_combout\);

\IO_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(8),
	o => \IO_DATA[8]~input_o\);

\shifter|auto_generated|sbit_w[44]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[44]~6_combout\ = ( \shifter|auto_generated|sbit_w[30]~5_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[28]~4_combout\)))) # (IR(1) & (((\shifter|auto_generated|sbit_w[26]~1_combout\)) # (IR(4)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[30]~5_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[28]~4_combout\)))) # (IR(1) & (!IR(4) & (\shifter|auto_generated|sbit_w[26]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[26]~1_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[28]~4_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[30]~5_combout\,
	combout => \shifter|auto_generated|sbit_w[44]~6_combout\);

\shifter|auto_generated|sbit_w[36]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[36]~9_combout\ = ( \shifter|auto_generated|sbit_w[18]~8_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[20]~7_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[22]~2_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[18]~8_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[20]~7_combout\)))) # (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[22]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010001011110111100000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[22]~2_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[20]~7_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[18]~8_combout\,
	combout => \shifter|auto_generated|sbit_w[36]~9_combout\);

\shifter|auto_generated|sbit_w[56]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[56]~10_combout\ = ( \shifter|auto_generated|sbit_w[36]~9_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[40]~3_combout\)))) # (IR(2) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[44]~6_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[36]~9_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[40]~3_combout\)))) # (IR(2) & (IR(4) & ((\shifter|auto_generated|sbit_w[44]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[40]~3_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[44]~6_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[36]~9_combout\,
	combout => \shifter|auto_generated|sbit_w[56]~10_combout\);

\shifter|auto_generated|sbit_w[48]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[48]~11_combout\ = ( AC(0) & ( AC(1) & ( (!IR(1) & (!IR(2) & ((!IR(0)) # (IR(4))))) ) ) ) # ( !AC(0) & ( AC(1) & ( (IR(0) & (!IR(1) & (!IR(2) & IR(4)))) ) ) ) # ( AC(0) & ( !AC(1) & ( (!IR(0) & (!IR(1) & !IR(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000010000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(2),
	datad => ALT_INV_IR(4),
	datae => ALT_INV_AC(0),
	dataf => ALT_INV_AC(1),
	combout => \shifter|auto_generated|sbit_w[48]~11_combout\);

\Selector19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (\Selector19~0_combout\ & ((!IR(4) & (\shifter|auto_generated|sbit_w[48]~11_combout\)) # (IR(4) & ((AC(15))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100010001000000110001000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|ALT_INV_sbit_w[48]~11_combout\,
	datab => \ALT_INV_Selector19~0_combout\,
	datac => ALT_INV_AC(15),
	datad => ALT_INV_IR(4),
	combout => \Selector19~5_combout\);

\Selector19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = ( \state.ex_loadi~q\ & ( (!\Selector19~5_combout\ & (!IR(8) & ((!\shifter|auto_generated|sbit_w[56]~10_combout\) # (!\Selector26~1_combout\)))) ) ) # ( !\state.ex_loadi~q\ & ( (!\Selector19~5_combout\ & 
-- ((!\shifter|auto_generated|sbit_w[56]~10_combout\) # (!\Selector26~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000000000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|ALT_INV_sbit_w[56]~10_combout\,
	datab => \ALT_INV_Selector26~1_combout\,
	datac => \ALT_INV_Selector19~5_combout\,
	datad => ALT_INV_IR(8),
	datae => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector19~3_combout\);

\Selector19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = ( \Selector19~3_combout\ & ( (!AC(8)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(8)) # (!\state.ex_and~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111011101000000000000000001011101110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(8),
	datab => \ALT_INV_Selector26~2_combout\,
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \ALT_INV_state.ex_and~q\,
	datae => \ALT_INV_Selector19~3_combout\,
	combout => \Selector19~4_combout\);

\Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = ( \state.ex_in2~q\ & ( \Selector19~4_combout\ & ( (!\Selector19~1_combout\) # (((!\WideOr3~0_combout\ & \Add1~33_sumout\)) # (\IO_DATA[8]~input_o\)) ) ) ) # ( !\state.ex_in2~q\ & ( \Selector19~4_combout\ & ( 
-- (!\Selector19~1_combout\) # ((!\WideOr3~0_combout\ & \Add1~33_sumout\)) ) ) ) # ( \state.ex_in2~q\ & ( !\Selector19~4_combout\ ) ) # ( !\state.ex_in2~q\ & ( !\Selector19~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110010111100101111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Add1~33_sumout\,
	datac => \ALT_INV_Selector19~1_combout\,
	datad => \ALT_INV_IO_DATA[8]~input_o\,
	datae => \ALT_INV_state.ex_in2~q\,
	dataf => \ALT_INV_Selector19~4_combout\,
	combout => \Selector19~2_combout\);

\AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector19~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(8));

\shifter|auto_generated|sbit_w[25]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[25]~12_combout\ = ( AC(10) & ( (!IR(0) & (((AC(9))))) # (IR(0) & (((AC(8))) # (IR(4)))) ) ) # ( !AC(10) & ( (!IR(0) & (((AC(9))))) # (IR(0) & (!IR(4) & (AC(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(8),
	datad => ALT_INV_AC(9),
	datae => ALT_INV_AC(10),
	combout => \shifter|auto_generated|sbit_w[25]~12_combout\);

\shifter|auto_generated|sbit_w[27]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[27]~13_combout\ = ( AC(12) & ( (!IR(0) & (((AC(11))))) # (IR(0) & (((AC(10))) # (IR(4)))) ) ) # ( !AC(12) & ( (!IR(0) & (((AC(11))))) # (IR(0) & (!IR(4) & (AC(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(10),
	datad => ALT_INV_AC(11),
	datae => ALT_INV_AC(12),
	combout => \shifter|auto_generated|sbit_w[27]~13_combout\);

\shifter|auto_generated|sbit_w[23]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[23]~14_combout\ = ( AC(8) & ( (!IR(0) & (((AC(7))))) # (IR(0) & (((AC(6))) # (IR(4)))) ) ) # ( !AC(8) & ( (!IR(0) & (((AC(7))))) # (IR(0) & (!IR(4) & (AC(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(6),
	datad => ALT_INV_AC(7),
	datae => ALT_INV_AC(8),
	combout => \shifter|auto_generated|sbit_w[23]~14_combout\);

\shifter|auto_generated|sbit_w[41]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[41]~15_combout\ = ( \shifter|auto_generated|sbit_w[23]~14_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[25]~12_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[27]~13_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[23]~14_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[25]~12_combout\)))) # (IR(1) & (IR(4) & ((\shifter|auto_generated|sbit_w[27]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[25]~12_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[23]~14_combout\,
	combout => \shifter|auto_generated|sbit_w[41]~15_combout\);

\shifter|auto_generated|sbit_w[21]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[21]~18_combout\ = ( AC(6) & ( (!IR(0) & (((AC(5))))) # (IR(0) & (((AC(4))) # (IR(4)))) ) ) # ( !AC(6) & ( (!IR(0) & (((AC(5))))) # (IR(0) & (!IR(4) & (AC(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(4),
	datad => ALT_INV_AC(5),
	datae => ALT_INV_AC(6),
	combout => \shifter|auto_generated|sbit_w[21]~18_combout\);

\shifter|auto_generated|sbit_w[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[19]~19_combout\ = ( AC(4) & ( (!IR(0) & (((AC(3))))) # (IR(0) & (((AC(2))) # (IR(4)))) ) ) # ( !AC(4) & ( (!IR(0) & (((AC(3))))) # (IR(0) & (!IR(4) & (AC(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(2),
	datad => ALT_INV_AC(3),
	datae => ALT_INV_AC(4),
	combout => \shifter|auto_generated|sbit_w[19]~19_combout\);

\shifter|auto_generated|sbit_w[37]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[37]~20_combout\ = ( \shifter|auto_generated|sbit_w[19]~19_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[21]~18_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[23]~14_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[19]~19_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[21]~18_combout\)))) # (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[23]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010001011110111100000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[23]~14_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[21]~18_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[19]~19_combout\,
	combout => \shifter|auto_generated|sbit_w[37]~20_combout\);

\shifter|auto_generated|sbit_w[17]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[17]~22_combout\ = ( AC(2) & ( (!IR(0) & (((AC(1))))) # (IR(0) & (((AC(0))) # (IR(4)))) ) ) # ( !AC(2) & ( (!IR(0) & (((AC(1))))) # (IR(0) & (!IR(4) & (AC(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(0),
	datad => ALT_INV_AC(1),
	datae => ALT_INV_AC(2),
	combout => \shifter|auto_generated|sbit_w[17]~22_combout\);

\shifter|auto_generated|sbit_w[53]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[53]~37_combout\ = (!IR(1) & (IR(2) & (!IR(4) & \shifter|auto_generated|sbit_w[17]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(2),
	datac => ALT_INV_IR(4),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[17]~22_combout\,
	combout => \shifter|auto_generated|sbit_w[53]~37_combout\);

\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \shifter|auto_generated|sbit_w[37]~20_combout\ & ( \shifter|auto_generated|sbit_w[53]~37_combout\ & ( !IR(3) ) ) ) # ( !\shifter|auto_generated|sbit_w[37]~20_combout\ & ( \shifter|auto_generated|sbit_w[53]~37_combout\ & ( !IR(3) 
-- ) ) ) # ( \shifter|auto_generated|sbit_w[37]~20_combout\ & ( !\shifter|auto_generated|sbit_w[53]~37_combout\ & ( (!IR(3) & ((!IR(2)) # ((IR(4) & \shifter|auto_generated|sbit_w[41]~15_combout\)))) ) ) ) # ( !\shifter|auto_generated|sbit_w[37]~20_combout\ & 
-- ( !\shifter|auto_generated|sbit_w[53]~37_combout\ & ( (IR(2) & (!IR(3) & (IR(4) & \shifter|auto_generated|sbit_w[41]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100100010001000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[41]~15_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[37]~20_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[53]~37_combout\,
	combout => \Selector22~0_combout\);

\shifter|auto_generated|sbit_w[29]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[29]~16_combout\ = ( AC(14) & ( (!IR(0) & (((AC(13))))) # (IR(0) & (((AC(12))) # (IR(4)))) ) ) # ( !AC(14) & ( (!IR(0) & (((AC(13))))) # (IR(0) & (!IR(4) & (AC(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(12),
	datad => ALT_INV_AC(13),
	datae => ALT_INV_AC(14),
	combout => \shifter|auto_generated|sbit_w[29]~16_combout\);

\shifter|auto_generated|sbit_w[45]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[45]~17_combout\ = ( \shifter|auto_generated|sbit_w[29]~16_combout\ & ( (!IR(1)) # ((!IR(4) & ((\shifter|auto_generated|sbit_w[27]~13_combout\))) # (IR(4) & (AC(15)))) ) ) # ( !\shifter|auto_generated|sbit_w[29]~16_combout\ & 
-- ( (IR(1) & ((!IR(4) & ((\shifter|auto_generated|sbit_w[27]~13_combout\))) # (IR(4) & (AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101101010111110111100000001010001011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[29]~16_combout\,
	combout => \shifter|auto_generated|sbit_w[45]~17_combout\);

\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( \shifter|auto_generated|sbit_w[45]~17_combout\ & ( (IR(3) & (IR(4) & ((!IR(2)) # (AC(15))))) ) ) # ( !\shifter|auto_generated|sbit_w[45]~17_combout\ & ( (IR(2) & (IR(3) & (IR(4) & AC(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000010000000110000001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(15),
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[45]~17_combout\,
	combout => \Selector22~1_combout\);

\IO_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(5),
	o => \IO_DATA[5]~input_o\);

\Selector22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (!IR(5) & (\IO_DATA[5]~input_o\ & (\state.ex_in2~q\))) # (IR(5) & (((\IO_DATA[5]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(5),
	datab => \ALT_INV_IO_DATA[5]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector22~2_combout\);

\Selector22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(5) & ((!AC(5)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(5) & ((!AC(5)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(5) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(5),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector22~3_combout\);

\Selector22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = ( !\Selector22~2_combout\ & ( \Selector22~3_combout\ & ( (!AC(5)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(5)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(5),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector22~2_combout\,
	dataf => \ALT_INV_Selector22~3_combout\,
	combout => \Selector22~4_combout\);

\Selector22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = ( \Selector22~1_combout\ & ( \Selector22~4_combout\ & ( ((!\WideOr3~0_combout\ & \Add1~21_sumout\)) # (\state.ex_shift~q\) ) ) ) # ( !\Selector22~1_combout\ & ( \Selector22~4_combout\ & ( (!\WideOr3~0_combout\ & 
-- (((\state.ex_shift~q\ & \Selector22~0_combout\)) # (\Add1~21_sumout\))) # (\WideOr3~0_combout\ & (\state.ex_shift~q\ & ((\Selector22~0_combout\)))) ) ) ) # ( \Selector22~1_combout\ & ( !\Selector22~4_combout\ ) ) # ( !\Selector22~1_combout\ & ( 
-- !\Selector22~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Selector22~0_combout\,
	datae => \ALT_INV_Selector22~1_combout\,
	dataf => \ALT_INV_Selector22~4_combout\,
	combout => \Selector22~5_combout\);

\AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector22~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(5));

\altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030E1C0A0774",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(5),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

\next_mem_addr[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[5]~5_combout\ = ( \altsyncram_component|auto_generated|q_a\(5) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(5)))) # (\state.fetch~q\ & (((PC(5))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(5) & ( (!\state.fetch~q\ & 
-- (IR(5) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(5),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(5),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \next_mem_addr[5]~5_combout\);

\altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030E080A0010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(7),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

\Add1~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(7)))) # (\state.ex_addi~q\ & (IR(7))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(7))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(7) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(7),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~75_combout\);

\shifter|auto_generated|sbit_w[55]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[55]~39_combout\ = ( \shifter|auto_generated|sbit_w[23]~14_combout\ & ( \shifter|auto_generated|sbit_w[21]~18_combout\ & ( (!IR(2) & ((!IR(1)) # ((!IR(4)) # (\shifter|auto_generated|sbit_w[25]~12_combout\)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[23]~14_combout\ & ( \shifter|auto_generated|sbit_w[21]~18_combout\ & ( (IR(1) & (!IR(2) & ((!IR(4)) # (\shifter|auto_generated|sbit_w[25]~12_combout\)))) ) ) ) # ( \shifter|auto_generated|sbit_w[23]~14_combout\ & ( 
-- !\shifter|auto_generated|sbit_w[21]~18_combout\ & ( (!IR(2) & ((!IR(1)) # ((IR(4) & \shifter|auto_generated|sbit_w[25]~12_combout\)))) ) ) ) # ( !\shifter|auto_generated|sbit_w[23]~14_combout\ & ( !\shifter|auto_generated|sbit_w[21]~18_combout\ & ( (IR(1) 
-- & (!IR(2) & (IR(4) & \shifter|auto_generated|sbit_w[25]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100100010001000110001000000010001001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(2),
	datac => ALT_INV_IR(4),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[25]~12_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[23]~14_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[21]~18_combout\,
	combout => \shifter|auto_generated|sbit_w[55]~39_combout\);

\shifter|auto_generated|sbit_w[55]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[55]~40_combout\ = ( \shifter|auto_generated|sbit_w[27]~13_combout\ & ( \shifter|auto_generated|sbit_w[29]~16_combout\ & ( (IR(2) & IR(4)) ) ) ) # ( !\shifter|auto_generated|sbit_w[27]~13_combout\ & ( 
-- \shifter|auto_generated|sbit_w[29]~16_combout\ & ( (IR(1) & (IR(2) & IR(4))) ) ) ) # ( \shifter|auto_generated|sbit_w[27]~13_combout\ & ( !\shifter|auto_generated|sbit_w[29]~16_combout\ & ( (!IR(1) & (IR(2) & IR(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000001000000010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(2),
	datac => ALT_INV_IR(4),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[29]~16_combout\,
	combout => \shifter|auto_generated|sbit_w[55]~40_combout\);

\shifter|auto_generated|sbit_w[55]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[55]~41_combout\ = ( \shifter|auto_generated|sbit_w[19]~19_combout\ & ( \shifter|auto_generated|sbit_w[17]~22_combout\ & ( (IR(2) & !IR(4)) ) ) ) # ( !\shifter|auto_generated|sbit_w[19]~19_combout\ & ( 
-- \shifter|auto_generated|sbit_w[17]~22_combout\ & ( (IR(1) & (IR(2) & !IR(4))) ) ) ) # ( \shifter|auto_generated|sbit_w[19]~19_combout\ & ( !\shifter|auto_generated|sbit_w[17]~22_combout\ & ( (!IR(1) & (IR(2) & !IR(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000010000000100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(2),
	datac => ALT_INV_IR(4),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[19]~19_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[17]~22_combout\,
	combout => \shifter|auto_generated|sbit_w[55]~41_combout\);

\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector26~1_combout\ & (((\shifter|auto_generated|sbit_w[55]~41_combout\) # (\shifter|auto_generated|sbit_w[55]~40_combout\)) # (\shifter|auto_generated|sbit_w[55]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~1_combout\,
	datab => \shifter|auto_generated|ALT_INV_sbit_w[55]~39_combout\,
	datac => \shifter|auto_generated|ALT_INV_sbit_w[55]~40_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[55]~41_combout\,
	combout => \Selector20~0_combout\);

\Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\altsyncram_component|auto_generated|q_a\(7) & \state.ex_and~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datab => \ALT_INV_state.ex_and~q\,
	combout => \Selector20~1_combout\);

\Selector20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (IR(3) & (IR(4) & (AC(15) & \state.ex_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \ALT_INV_state.ex_shift~q\,
	combout => \Selector20~2_combout\);

\IO_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(7),
	o => \IO_DATA[7]~input_o\);

\Selector20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (!IR(7) & (\IO_DATA[7]~input_o\ & (\state.ex_in2~q\))) # (IR(7) & (((\IO_DATA[7]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(7),
	datab => \ALT_INV_IO_DATA[7]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector20~3_combout\);

\Selector20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(7) & ((!AC(7)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(7) & ((!AC(7)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(7) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(7),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector20~4_combout\);

\Selector20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~5_combout\ = ( !\Selector20~3_combout\ & ( \Selector20~4_combout\ & ( (!\Selector20~2_combout\ & ((!AC(7)) # ((\Selector26~2_combout\ & !\Selector20~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(7),
	datab => \ALT_INV_Selector26~2_combout\,
	datac => \ALT_INV_Selector20~1_combout\,
	datad => \ALT_INV_Selector20~2_combout\,
	datae => \ALT_INV_Selector20~3_combout\,
	dataf => \ALT_INV_Selector20~4_combout\,
	combout => \Selector20~5_combout\);

\Selector20~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~6_combout\ = ((!\Selector20~5_combout\) # ((!\WideOr3~0_combout\ & \Add1~29_sumout\))) # (\Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100101111111111110010111111111111001011111111111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_Selector20~0_combout\,
	datad => \ALT_INV_Selector20~5_combout\,
	combout => \Selector20~6_combout\);

\AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector20~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(7));

\shifter|auto_generated|sbit_w[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[24]~0_combout\ = ( AC(9) & ( (!IR(0) & (((AC(8))))) # (IR(0) & (((AC(7))) # (IR(4)))) ) ) # ( !AC(9) & ( (!IR(0) & (((AC(8))))) # (IR(0) & (!IR(4) & (AC(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000101011011111100000100101011100001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(7),
	datad => ALT_INV_AC(8),
	datae => ALT_INV_AC(9),
	combout => \shifter|auto_generated|sbit_w[24]~0_combout\);

\shifter|auto_generated|sbit_w[40]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[40]~3_combout\ = ( \shifter|auto_generated|sbit_w[22]~2_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[24]~0_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[26]~1_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[22]~2_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[24]~0_combout\)))) # (IR(1) & (IR(4) & ((\shifter|auto_generated|sbit_w[26]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[24]~0_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[26]~1_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[22]~2_combout\,
	combout => \shifter|auto_generated|sbit_w[40]~3_combout\);

\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \shifter|auto_generated|sbit_w[44]~6_combout\ & ( \Selector26~1_combout\ & ( (!IR(2)) # ((!IR(4) & ((\shifter|auto_generated|sbit_w[40]~3_combout\))) # (IR(4) & (AC(15)))) ) ) ) # ( !\shifter|auto_generated|sbit_w[44]~6_combout\ 
-- & ( \Selector26~1_combout\ & ( (IR(2) & ((!IR(4) & ((\shifter|auto_generated|sbit_w[40]~3_combout\))) # (IR(4) & (AC(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010001011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[40]~3_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[44]~6_combout\,
	dataf => \ALT_INV_Selector26~1_combout\,
	combout => \Selector15~0_combout\);

\shifter|auto_generated|sbit_w[32]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[32]~36_combout\ = ( AC(1) & ( (!IR(1) & ((!IR(0) & ((AC(0)))) # (IR(0) & (IR(4))))) ) ) # ( !AC(1) & ( (!IR(0) & (!IR(1) & AC(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000001001000110000000000100010000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(0),
	datae => ALT_INV_AC(1),
	combout => \shifter|auto_generated|sbit_w[32]~36_combout\);

\Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = ( \shifter|auto_generated|sbit_w[36]~9_combout\ & ( \shifter|auto_generated|sbit_w[32]~36_combout\ & ( (!IR(4)) # (AC(15)) ) ) ) # ( !\shifter|auto_generated|sbit_w[36]~9_combout\ & ( \shifter|auto_generated|sbit_w[32]~36_combout\ 
-- & ( (!IR(4) & (IR(2))) # (IR(4) & ((AC(15)))) ) ) ) # ( \shifter|auto_generated|sbit_w[36]~9_combout\ & ( !\shifter|auto_generated|sbit_w[32]~36_combout\ & ( (!IR(4) & (!IR(2))) # (IR(4) & ((AC(15)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[36]~9_combout\ & ( !\shifter|auto_generated|sbit_w[32]~36_combout\ & ( (IR(4) & AC(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011100010111000101101000111010001111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[36]~9_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[32]~36_combout\,
	combout => \Selector15~1_combout\);

\IO_DATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(12),
	o => \IO_DATA[12]~input_o\);

\Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (!IR(10) & (\IO_DATA[12]~input_o\ & (\state.ex_in2~q\))) # (IR(10) & (((\IO_DATA[12]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_IO_DATA[12]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector15~2_combout\);

\Selector15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(12) & ((!AC(12)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(12) & ((!AC(12)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(12) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector15~3_combout\);

\Selector15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = ( !\Selector15~2_combout\ & ( \Selector15~3_combout\ & ( (!AC(12)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(12)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector15~2_combout\,
	dataf => \ALT_INV_Selector15~3_combout\,
	combout => \Selector15~4_combout\);

\Selector15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = ( \Selector15~1_combout\ & ( \Selector15~4_combout\ & ( (((!\WideOr3~0_combout\ & \Add1~49_sumout\)) # (\Selector15~0_combout\)) # (\Selector19~0_combout\) ) ) ) # ( !\Selector15~1_combout\ & ( \Selector15~4_combout\ & ( 
-- ((!\WideOr3~0_combout\ & \Add1~49_sumout\)) # (\Selector15~0_combout\) ) ) ) # ( \Selector15~1_combout\ & ( !\Selector15~4_combout\ ) ) # ( !\Selector15~1_combout\ & ( !\Selector15~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010111111110011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Selector19~0_combout\,
	datac => \ALT_INV_Add1~49_sumout\,
	datad => \ALT_INV_Selector15~0_combout\,
	datae => \ALT_INV_Selector15~1_combout\,
	dataf => \ALT_INV_Selector15~4_combout\,
	combout => \Selector15~5_combout\);

\AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector15~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(12));

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !AC(14) & ( !AC(15) & ( (!AC(10) & (!AC(11) & (!AC(12) & !AC(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(10),
	datab => ALT_INV_AC(11),
	datac => ALT_INV_AC(12),
	datad => ALT_INV_AC(13),
	datae => ALT_INV_AC(14),
	dataf => ALT_INV_AC(15),
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !AC(8) & ( !AC(9) & ( (!AC(4) & (!AC(5) & (!AC(6) & !AC(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(4),
	datab => ALT_INV_AC(5),
	datac => ALT_INV_AC(6),
	datad => ALT_INV_AC(7),
	datae => ALT_INV_AC(8),
	dataf => ALT_INV_AC(9),
	combout => \Equal0~2_combout\);

\PC[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[1]~0_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (!\state.ex_jneg~q\ & ((!\state.ex_jpos~q\ & ((\Equal0~0_combout\))) # (\state.ex_jpos~q\ & (!AC(15) & !\Equal0~0_combout\)))) # (\state.ex_jneg~q\ & (AC(15))) ) ) ) # ( 
-- !\Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (!AC(15) & (!\state.ex_jneg~q\ & \state.ex_jpos~q\)) # (AC(15) & (\state.ex_jneg~q\)) ) ) ) # ( \Equal0~1_combout\ & ( !\Equal0~2_combout\ & ( (!AC(15) & (!\state.ex_jneg~q\ & \state.ex_jpos~q\)) # (AC(15) & 
-- (\state.ex_jneg~q\)) ) ) ) # ( !\Equal0~1_combout\ & ( !\Equal0~2_combout\ & ( (!AC(15) & (!\state.ex_jneg~q\ & \state.ex_jpos~q\)) # (AC(15) & (\state.ex_jneg~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100011001000110010001100111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \ALT_INV_state.ex_jneg~q\,
	datac => \ALT_INV_state.ex_jpos~q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \PC[1]~0_combout\);

\PC[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[1]~1_combout\ = (!AC(15) & \state.ex_jneg~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \ALT_INV_state.ex_jneg~q\,
	combout => \PC[1]~1_combout\);

\state~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~55_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_Selector29~0_combout\,
	combout => \state~55_combout\);

\state.ex_jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~55_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jump~q\);

\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\state.ex_jump~q\ & (!\state.ex_jneg~q\ & (!\state.ex_jzero~q\ & !\state.ex_jpos~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_jump~q\,
	datab => \ALT_INV_state.ex_jneg~q\,
	datac => \ALT_INV_state.ex_jzero~q\,
	datad => \ALT_INV_state.ex_jpos~q\,
	combout => \WideOr2~0_combout\);

\WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = ( \WideOr2~0_combout\ & ( (!\state.fetch~q\ & (\state.init~q\ & (!\state.ex_return~q\ & !\state.ex_call~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_state.init~q\,
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_state.ex_call~q\,
	datae => \ALT_INV_WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

\PC[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[0]~2_combout\ = ( !\PC[1]~1_combout\ & ( !\WideOr2~1_combout\ & ( (\resetn~input_o\ & (((!\state.ex_jzero~q\ & !\state.ex_jpos~q\)) # (\PC[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \ALT_INV_state.ex_jzero~q\,
	datac => \ALT_INV_state.ex_jpos~q\,
	datad => \ALT_INV_PC[1]~0_combout\,
	datae => \ALT_INV_PC[1]~1_combout\,
	dataf => \ALT_INV_WideOr2~1_combout\,
	combout => \PC[0]~2_combout\);

\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector11~1_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

\next_mem_addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[0]~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(0) & ( (!\state.fetch~q\ & (((!\WideNor0~combout\)) # (IR(0)))) # (\state.fetch~q\ & (((PC(0))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(0) & ( (!\state.fetch~q\ & 
-- (IR(0) & ((\WideNor0~combout\)))) # (\state.fetch~q\ & (((PC(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(0),
	datad => \ALT_INV_WideNor0~combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011B5E55C05A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(0),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

\Add1~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(0)))) # (\state.ex_addi~q\ & (IR(0))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(0))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(0) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~64_combout\);

\Add1~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~67_cout\ = CARRY(( \state.ex_sub~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ex_sub~q\,
	cin => GND,
	cout => \Add1~67_cout\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \Add1~64_combout\ ) + ( (AC(0) & (((\state.ex_add~q\) # (\state.ex_addi~q\)) # (\state.ex_sub~q\))) ) + ( \Add1~67_cout\ ))
-- \Add1~2\ = CARRY(( \Add1~64_combout\ ) + ( (AC(0) & (((\state.ex_add~q\) # (\state.ex_addi~q\)) # (\state.ex_sub~q\))) ) + ( \Add1~67_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(0),
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~64_combout\,
	dataf => \ALT_INV_state.ex_add~q\,
	cin => \Add1~67_cout\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \Add1~69_combout\ ) + ( (AC(1) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \Add1~69_combout\ ) + ( (AC(1) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~69_combout\,
	dataf => ALT_INV_AC(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

\shifter|auto_generated|sbit_w[57]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[57]~21_combout\ = ( \shifter|auto_generated|sbit_w[37]~20_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[41]~15_combout\)))) # (IR(2) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[45]~17_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[37]~20_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[41]~15_combout\)))) # (IR(2) & (IR(4) & ((\shifter|auto_generated|sbit_w[45]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[41]~15_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[45]~17_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[37]~20_combout\,
	combout => \shifter|auto_generated|sbit_w[57]~21_combout\);

\shifter|auto_generated|sbit_w[49]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[49]~23_combout\ = (!IR(1) & (((\shifter|auto_generated|sbit_w[17]~22_combout\)))) # (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[19]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[19]~19_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[17]~22_combout\,
	combout => \shifter|auto_generated|sbit_w[49]~23_combout\);

\Selector26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = ( \shifter|auto_generated|sbit_w[49]~23_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # ((IR(4) & \shifter|auto_generated|sbit_w[37]~20_combout\)))) ) ) # ( !\shifter|auto_generated|sbit_w[49]~23_combout\ & ( (IR(2) & (IR(4) & 
-- (\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[37]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000010100000101100000000000000010000101000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_Selector26~1_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[37]~20_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[49]~23_combout\,
	combout => \Selector26~3_combout\);

\IO_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(1),
	o => \IO_DATA[1]~input_o\);

\Selector26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = (!IR(1) & (\IO_DATA[1]~input_o\ & (\state.ex_in2~q\))) # (IR(1) & (((\IO_DATA[1]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => \ALT_INV_IO_DATA[1]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector26~4_combout\);

\Selector26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~5_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(1) & ((!AC(1)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(1) & ((!AC(1)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(1) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(1),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector26~5_combout\);

\Selector26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~6_combout\ = ( !\Selector26~4_combout\ & ( \Selector26~5_combout\ & ( (!AC(1)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(1)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(1),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector26~4_combout\,
	dataf => \ALT_INV_Selector26~5_combout\,
	combout => \Selector26~6_combout\);

\Selector26~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~7_combout\ = ( \Selector26~3_combout\ & ( \Selector26~6_combout\ ) ) # ( !\Selector26~3_combout\ & ( \Selector26~6_combout\ & ( (!\WideOr3~0_combout\ & (((\Selector26~0_combout\ & \shifter|auto_generated|sbit_w[57]~21_combout\)) # 
-- (\Add1~5_sumout\))) # (\WideOr3~0_combout\ & (\Selector26~0_combout\ & ((\shifter|auto_generated|sbit_w[57]~21_combout\)))) ) ) ) # ( \Selector26~3_combout\ & ( !\Selector26~6_combout\ ) ) # ( !\Selector26~3_combout\ & ( !\Selector26~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[57]~21_combout\,
	datae => \ALT_INV_Selector26~3_combout\,
	dataf => \ALT_INV_Selector26~6_combout\,
	combout => \Selector26~7_combout\);

\AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector26~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(1));

\altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003278D030257",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(1),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(1)))) # (\state.ex_addi~q\ & (IR(1))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(1))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(1) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~69_combout\);

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \Add1~70_combout\ ) + ( (AC(2) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \Add1~70_combout\ ) + ( (AC(2) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~70_combout\,
	dataf => ALT_INV_AC(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

\Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = ( \state.ex_or~q\ & ( \altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\state.ex_or~q\ & ( (\altsyncram_component|auto_generated|q_a\(2) & (((!AC(2) & \state.ex_xor~q\)) # (\state.ex_load~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110011001100110011001100000010001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(2),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector25~1_combout\);

\IO_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(2),
	o => \IO_DATA[2]~input_o\);

\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \shifter|auto_generated|sbit_w[34]~28_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # ((IR(4) & \shifter|auto_generated|sbit_w[38]~26_combout\)))) ) ) # ( !\shifter|auto_generated|sbit_w[34]~28_combout\ & ( (IR(2) & (IR(4) & 
-- (\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[38]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000010100000101100000000000000010000101000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_Selector26~1_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[34]~28_combout\,
	combout => \Selector25~0_combout\);

\shifter|auto_generated|sbit_w[58]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[58]~27_combout\ = ( \shifter|auto_generated|sbit_w[38]~26_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[42]~24_combout\)))) # (IR(2) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[46]~25_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[38]~26_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[42]~24_combout\)))) # (IR(2) & (IR(4) & ((\shifter|auto_generated|sbit_w[46]~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[46]~25_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\,
	combout => \shifter|auto_generated|sbit_w[58]~27_combout\);

\Selector25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = ( !IR(2) & ( \state.ex_loadi~q\ & ( (!\Selector26~0_combout\ & (((!AC(2)) # (\Selector26~2_combout\)))) # (\Selector26~0_combout\ & (!\shifter|auto_generated|sbit_w[58]~27_combout\ & ((!AC(2)) # (\Selector26~2_combout\)))) ) ) ) # 
-- ( IR(2) & ( !\state.ex_loadi~q\ & ( (!\Selector26~0_combout\ & (((!AC(2)) # (\Selector26~2_combout\)))) # (\Selector26~0_combout\ & (!\shifter|auto_generated|sbit_w[58]~27_combout\ & ((!AC(2)) # (\Selector26~2_combout\)))) ) ) ) # ( !IR(2) & ( 
-- !\state.ex_loadi~q\ & ( (!\Selector26~0_combout\ & (((!AC(2)) # (\Selector26~2_combout\)))) # (\Selector26~0_combout\ & (!\shifter|auto_generated|sbit_w[58]~27_combout\ & ((!AC(2)) # (\Selector26~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011101110111000001110111011100000111011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~0_combout\,
	datab => \shifter|auto_generated|ALT_INV_sbit_w[58]~27_combout\,
	datac => ALT_INV_AC(2),
	datad => \ALT_INV_Selector26~2_combout\,
	datae => ALT_INV_IR(2),
	dataf => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector25~3_combout\);

\Selector25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = ( \state.ex_and~q\ & ( \Selector25~3_combout\ & ( (!\Selector25~0_combout\ & ((!AC(2)) # ((!\altsyncram_component|auto_generated|q_a\(2) & !\state.ex_xor~q\)))) ) ) ) # ( !\state.ex_and~q\ & ( \Selector25~3_combout\ & ( 
-- (!\Selector25~0_combout\ & ((!AC(2)) # ((!\state.ex_xor~q\) # (\altsyncram_component|auto_generated|q_a\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010100010101010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector25~0_combout\,
	datab => ALT_INV_AC(2),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \ALT_INV_state.ex_xor~q\,
	datae => \ALT_INV_state.ex_and~q\,
	dataf => \ALT_INV_Selector25~3_combout\,
	combout => \Selector25~4_combout\);

\Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = ( \state.ex_in2~q\ & ( \Selector25~4_combout\ & ( (((!\WideOr3~0_combout\ & \Add1~9_sumout\)) # (\IO_DATA[2]~input_o\)) # (\Selector25~1_combout\) ) ) ) # ( !\state.ex_in2~q\ & ( \Selector25~4_combout\ & ( ((!\WideOr3~0_combout\ & 
-- \Add1~9_sumout\)) # (\Selector25~1_combout\) ) ) ) # ( \state.ex_in2~q\ & ( !\Selector25~4_combout\ ) ) # ( !\state.ex_in2~q\ & ( !\Selector25~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100101111001011110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Selector25~1_combout\,
	datad => \ALT_INV_IO_DATA[2]~input_o\,
	datae => \ALT_INV_state.ex_in2~q\,
	dataf => \ALT_INV_Selector25~4_combout\,
	combout => \Selector25~2_combout\);

\AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector25~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(2));

\altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034E2C021A0B",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(2),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

\Add1~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(2)))) # (\state.ex_addi~q\ & (IR(2))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(2))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(2) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~70_combout\);

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \Add1~71_combout\ ) + ( (AC(3) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \Add1~71_combout\ ) + ( (AC(3) & (((\state.ex_sub~q\) # (\state.ex_addi~q\)) # (\state.ex_add~q\))) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~71_combout\,
	dataf => ALT_INV_AC(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

\shifter|auto_generated|sbit_w[60]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[60]~35_combout\ = ( \shifter|auto_generated|sbit_w[44]~6_combout\ & ( (!IR(2)) # ((!IR(4) & ((\shifter|auto_generated|sbit_w[40]~3_combout\))) # (IR(4) & (AC(15)))) ) ) # ( !\shifter|auto_generated|sbit_w[44]~6_combout\ & ( 
-- (IR(2) & ((!IR(4) & ((\shifter|auto_generated|sbit_w[40]~3_combout\))) # (IR(4) & (AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101101010111110111100000001010001011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[40]~3_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[44]~6_combout\,
	combout => \shifter|auto_generated|sbit_w[60]~35_combout\);

\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \shifter|auto_generated|sbit_w[32]~36_combout\ & ( \Selector26~1_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[36]~9_combout\)))) # (IR(2) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[40]~3_combout\)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[32]~36_combout\ & ( \Selector26~1_combout\ & ( (!IR(2) & (((\shifter|auto_generated|sbit_w[36]~9_combout\)))) # (IR(2) & (IR(4) & (\shifter|auto_generated|sbit_w[40]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[40]~3_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[36]~9_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[32]~36_combout\,
	dataf => \ALT_INV_Selector26~1_combout\,
	combout => \Selector23~0_combout\);

\IO_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(4),
	o => \IO_DATA[4]~input_o\);

\Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (!IR(4) & (\IO_DATA[4]~input_o\ & (\state.ex_in2~q\))) # (IR(4) & (((\IO_DATA[4]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => \ALT_INV_IO_DATA[4]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector23~1_combout\);

\Selector23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(4) & ((!AC(4)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(4) & ((!AC(4)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(4) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(4),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector23~2_combout\);

\Selector23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = ( !\Selector23~1_combout\ & ( \Selector23~2_combout\ & ( (!AC(4)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(4)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(4),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector23~1_combout\,
	dataf => \ALT_INV_Selector23~2_combout\,
	combout => \Selector23~3_combout\);

\Selector23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = ( \Selector23~0_combout\ & ( \Selector23~3_combout\ ) ) # ( !\Selector23~0_combout\ & ( \Selector23~3_combout\ & ( (!\WideOr3~0_combout\ & (((\Selector26~0_combout\ & \shifter|auto_generated|sbit_w[60]~35_combout\)) # 
-- (\Add1~17_sumout\))) # (\WideOr3~0_combout\ & (\Selector26~0_combout\ & ((\shifter|auto_generated|sbit_w[60]~35_combout\)))) ) ) ) # ( \Selector23~0_combout\ & ( !\Selector23~3_combout\ ) ) # ( !\Selector23~0_combout\ & ( !\Selector23~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[60]~35_combout\,
	datae => \ALT_INV_Selector23~0_combout\,
	dataf => \ALT_INV_Selector23~3_combout\,
	combout => \Selector23~4_combout\);

\AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector23~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(4));

\altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010E2F5DD013",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(4),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (IR(3) & (IR(4) & \state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_state.ex_shift~q\,
	combout => \Selector26~0_combout\);

\shifter|auto_generated|sbit_w[43]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[43]~29_combout\ = ( AC(13) & ( AC(14) & ( (IR(1) & IR(4)) ) ) ) # ( !AC(13) & ( AC(14) & ( (IR(0) & (IR(1) & IR(4))) ) ) ) # ( AC(13) & ( !AC(14) & ( (!IR(0) & (IR(1) & IR(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000001000000010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(4),
	datae => ALT_INV_AC(13),
	dataf => ALT_INV_AC(14),
	combout => \shifter|auto_generated|sbit_w[43]~29_combout\);

\shifter|auto_generated|sbit_w[43]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[43]~30_combout\ = ( AC(9) & ( (IR(1) & (!IR(4) & ((!IR(0)) # (AC(8))))) ) ) # ( !AC(9) & ( (IR(0) & (IR(1) & (!IR(4) & AC(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000001000000011000000000000000100000010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(8),
	datae => ALT_INV_AC(9),
	combout => \shifter|auto_generated|sbit_w[43]~30_combout\);

\shifter|auto_generated|sbit_w[43]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[43]~31_combout\ = (!\shifter|auto_generated|sbit_w[43]~29_combout\ & (!\shifter|auto_generated|sbit_w[43]~30_combout\ & ((!\shifter|auto_generated|sbit_w[27]~13_combout\) # (IR(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => \shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\,
	datac => \shifter|auto_generated|ALT_INV_sbit_w[43]~29_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[43]~30_combout\,
	combout => \shifter|auto_generated|sbit_w[43]~31_combout\);

\shifter|auto_generated|sbit_w[39]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[39]~32_combout\ = ( \shifter|auto_generated|sbit_w[21]~18_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[23]~14_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[25]~12_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[21]~18_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[23]~14_combout\)))) # (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[25]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010001011110111100000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[25]~12_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[23]~14_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[21]~18_combout\,
	combout => \shifter|auto_generated|sbit_w[39]~32_combout\);

\shifter|auto_generated|sbit_w[59]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[59]~33_combout\ = ( \shifter|auto_generated|sbit_w[39]~32_combout\ & ( (!IR(2) & (((!\shifter|auto_generated|sbit_w[43]~31_combout\)))) # (IR(2) & ((!IR(4)) # ((AC(15))))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[39]~32_combout\ & ( (!IR(2) & (((!\shifter|auto_generated|sbit_w[43]~31_combout\)))) # (IR(2) & (IR(4) & (AC(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000001111011110100010110101011000000011110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[43]~31_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[39]~32_combout\,
	combout => \shifter|auto_generated|sbit_w[59]~33_combout\);

\shifter|auto_generated|sbit_w[35]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[35]~34_combout\ = ( \shifter|auto_generated|sbit_w[17]~22_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[19]~19_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|auto_generated|sbit_w[21]~18_combout\)))) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[17]~22_combout\ & ( (!IR(1) & (((\shifter|auto_generated|sbit_w[19]~19_combout\)))) # (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[21]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010001011110111100000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[21]~18_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[19]~19_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[17]~22_combout\,
	combout => \shifter|auto_generated|sbit_w[35]~34_combout\);

\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \shifter|auto_generated|sbit_w[35]~34_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # ((IR(4) & \shifter|auto_generated|sbit_w[39]~32_combout\)))) ) ) # ( !\shifter|auto_generated|sbit_w[35]~34_combout\ & ( (IR(2) & (IR(4) & 
-- (\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[39]~32_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000010100000101100000000000000010000101000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_Selector26~1_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[39]~32_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[35]~34_combout\,
	combout => \Selector24~0_combout\);

\IO_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(3),
	o => \IO_DATA[3]~input_o\);

\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (!IR(3) & (\IO_DATA[3]~input_o\ & (\state.ex_in2~q\))) # (IR(3) & (((\IO_DATA[3]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \ALT_INV_IO_DATA[3]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector24~1_combout\);

\Selector24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(3) & ((!AC(3)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(3) & ((!AC(3)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(3) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(3),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector24~2_combout\);

\Selector24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = ( !\Selector24~1_combout\ & ( \Selector24~2_combout\ & ( (!AC(3)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(3)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(3),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector24~1_combout\,
	dataf => \ALT_INV_Selector24~2_combout\,
	combout => \Selector24~3_combout\);

\Selector24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = ( \Selector24~0_combout\ & ( \Selector24~3_combout\ ) ) # ( !\Selector24~0_combout\ & ( \Selector24~3_combout\ & ( (!\WideOr3~0_combout\ & (((\Selector26~0_combout\ & \shifter|auto_generated|sbit_w[59]~33_combout\)) # 
-- (\Add1~13_sumout\))) # (\WideOr3~0_combout\ & (\Selector26~0_combout\ & ((\shifter|auto_generated|sbit_w[59]~33_combout\)))) ) ) ) # ( \Selector24~0_combout\ & ( !\Selector24~3_combout\ ) ) # ( !\Selector24~0_combout\ & ( !\Selector24~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[59]~33_combout\,
	datae => \ALT_INV_Selector24~0_combout\,
	dataf => \ALT_INV_Selector24~3_combout\,
	combout => \Selector24~4_combout\);

\AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector24~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(3));

\altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000038E398A0513",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(3),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (!IR(3) & \state.ex_shift~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \ALT_INV_state.ex_shift~q\,
	combout => \Selector26~1_combout\);

\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \Add1~77_combout\ ) + ( (AC(9) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \Add1~77_combout\ ) + ( (AC(9) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~77_combout\,
	dataf => ALT_INV_AC(9),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \shifter|auto_generated|sbit_w[49]~23_combout\ & ( (\Selector19~0_combout\ & ((!IR(4) & (!IR(2))) # (IR(4) & ((AC(15)))))) ) ) # ( !\shifter|auto_generated|sbit_w[49]~23_combout\ & ( (IR(4) & (AC(15) & \Selector19~0_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000100010110000000010001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => \ALT_INV_Selector19~0_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[49]~23_combout\,
	combout => \Selector18~0_combout\);

\IO_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(9),
	o => \IO_DATA[9]~input_o\);

\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (!IR(9) & (\IO_DATA[9]~input_o\ & (\state.ex_in2~q\))) # (IR(9) & (((\IO_DATA[9]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(9),
	datab => \ALT_INV_IO_DATA[9]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector18~1_combout\);

\Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(9) & ((!AC(9)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(9) & ((!AC(9)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(9) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(9),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector18~2_combout\);

\Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ( !\Selector18~1_combout\ & ( \Selector18~2_combout\ & ( (!AC(9)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(9)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(9),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector18~1_combout\,
	dataf => \ALT_INV_Selector18~2_combout\,
	combout => \Selector18~3_combout\);

\Selector18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = ( \Selector18~0_combout\ & ( \Selector18~3_combout\ ) ) # ( !\Selector18~0_combout\ & ( \Selector18~3_combout\ & ( (!\WideOr3~0_combout\ & (((\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[57]~21_combout\)) # 
-- (\Add1~37_sumout\))) # (\WideOr3~0_combout\ & (\Selector26~1_combout\ & (\shifter|auto_generated|sbit_w[57]~21_combout\))) ) ) ) # ( \Selector18~0_combout\ & ( !\Selector18~3_combout\ ) ) # ( !\Selector18~0_combout\ & ( !\Selector18~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011101010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_Selector26~1_combout\,
	datac => \shifter|auto_generated|ALT_INV_sbit_w[57]~21_combout\,
	datad => \ALT_INV_Add1~37_sumout\,
	datae => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_Selector18~3_combout\,
	combout => \Selector18~4_combout\);

\AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector18~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(9));

\altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020E04080010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(9),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(9));

\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(9)))) # (\state.ex_addi~q\ & (IR(9))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(9))))) ) ) # ( 
-- !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(9) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(9),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~77_combout\);

\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \shifter|auto_generated|sbit_w[46]~25_combout\ & ( \shifter|auto_generated|sbit_w[38]~26_combout\ & ( (!IR(3) & ((\shifter|auto_generated|sbit_w[42]~24_combout\) # (IR(2)))) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[46]~25_combout\ & ( \shifter|auto_generated|sbit_w[38]~26_combout\ & ( (!IR(3) & ((!IR(2) & ((\shifter|auto_generated|sbit_w[42]~24_combout\))) # (IR(2) & (!IR(4))))) ) ) ) # ( \shifter|auto_generated|sbit_w[46]~25_combout\ 
-- & ( !\shifter|auto_generated|sbit_w[38]~26_combout\ & ( (!IR(3) & ((!IR(2) & ((\shifter|auto_generated|sbit_w[42]~24_combout\))) # (IR(2) & (IR(4))))) ) ) ) # ( !\shifter|auto_generated|sbit_w[46]~25_combout\ & ( 
-- !\shifter|auto_generated|sbit_w[38]~26_combout\ & ( (!IR(2) & (!IR(3) & \shifter|auto_generated|sbit_w[42]~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000001001000110001000000110010000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => \shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[46]~25_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\,
	combout => \Selector17~0_combout\);

\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \shifter|auto_generated|sbit_w[34]~28_combout\ & ( (IR(3) & ((!IR(4) & (!IR(2))) # (IR(4) & ((AC(15)))))) ) ) # ( !\shifter|auto_generated|sbit_w[34]~28_combout\ & ( (IR(3) & (IR(4) & AC(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001000000010001100000000000000110010000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(15),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[34]~28_combout\,
	combout => \Selector17~1_combout\);

\IO_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(10),
	o => \IO_DATA[10]~input_o\);

\Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!IR(10) & (\IO_DATA[10]~input_o\ & (\state.ex_in2~q\))) # (IR(10) & (((\IO_DATA[10]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_IO_DATA[10]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector17~2_combout\);

\Selector17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(10) & ((!AC(10)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(10) & ((!AC(10)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(10) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector17~3_combout\);

\Selector17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = ( !\Selector17~2_combout\ & ( \Selector17~3_combout\ & ( (!AC(10)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(10)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector17~2_combout\,
	dataf => \ALT_INV_Selector17~3_combout\,
	combout => \Selector17~4_combout\);

\Selector17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = ( \Selector17~1_combout\ & ( \Selector17~4_combout\ & ( ((!\WideOr3~0_combout\ & \Add1~41_sumout\)) # (\state.ex_shift~q\) ) ) ) # ( !\Selector17~1_combout\ & ( \Selector17~4_combout\ & ( (!\WideOr3~0_combout\ & 
-- (((\state.ex_shift~q\ & \Selector17~0_combout\)) # (\Add1~41_sumout\))) # (\WideOr3~0_combout\ & (\state.ex_shift~q\ & ((\Selector17~0_combout\)))) ) ) ) # ( \Selector17~1_combout\ & ( !\Selector17~4_combout\ ) ) # ( !\Selector17~1_combout\ & ( 
-- !\Selector17~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Add1~41_sumout\,
	datad => \ALT_INV_Selector17~0_combout\,
	datae => \ALT_INV_Selector17~1_combout\,
	dataf => \ALT_INV_Selector17~4_combout\,
	combout => \Selector17~5_combout\);

\AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector17~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(10));

\altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00080010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(10),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(10));

\Add1~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(14)))) # (\state.ex_addi~q\ & (IR(10))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(14))))) ) ) # 
-- ( !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(10) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~82_combout\);

\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(13)))) # (\state.ex_addi~q\ & (IR(10))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(13))))) ) ) # 
-- ( !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(10) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(13))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~81_combout\);

\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \Add1~81_combout\ ) + ( (AC(13) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \Add1~81_combout\ ) + ( (AC(13) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~81_combout\,
	dataf => ALT_INV_AC(13),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \Add1~82_combout\ ) + ( (AC(14) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \Add1~82_combout\ ) + ( (AC(14) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~82_combout\,
	dataf => ALT_INV_AC(14),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \shifter|auto_generated|sbit_w[38]~26_combout\ & ( \shifter|auto_generated|sbit_w[34]~28_combout\ & ( (IR(3) & !IR(4)) ) ) ) # ( !\shifter|auto_generated|sbit_w[38]~26_combout\ & ( \shifter|auto_generated|sbit_w[34]~28_combout\ 
-- & ( (IR(2) & (IR(3) & !IR(4))) ) ) ) # ( \shifter|auto_generated|sbit_w[38]~26_combout\ & ( !\shifter|auto_generated|sbit_w[34]~28_combout\ & ( (!IR(2) & (IR(3) & !IR(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000010000000100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[38]~26_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[34]~28_combout\,
	combout => \Selector13~0_combout\);

\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( \shifter|auto_generated|sbit_w[42]~24_combout\ & ( \shifter|auto_generated|sbit_w[46]~25_combout\ & ( (!IR(4) & (((!IR(3))))) # (IR(4) & (((!IR(2) & !IR(3))) # (AC(15)))) ) ) ) # ( !\shifter|auto_generated|sbit_w[42]~24_combout\ 
-- & ( \shifter|auto_generated|sbit_w[46]~25_combout\ & ( (!IR(2) & ((!IR(3)) # ((IR(4) & AC(15))))) # (IR(2) & (((IR(4) & AC(15))))) ) ) ) # ( \shifter|auto_generated|sbit_w[42]~24_combout\ & ( !\shifter|auto_generated|sbit_w[46]~25_combout\ & ( (!IR(3) & 
-- (IR(2) & ((!IR(4)) # (AC(15))))) # (IR(3) & (((IR(4) & AC(15))))) ) ) ) # ( !\shifter|auto_generated|sbit_w[42]~24_combout\ & ( !\shifter|auto_generated|sbit_w[46]~25_combout\ & ( (IR(4) & (AC(15) & ((IR(3)) # (IR(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010000000100011110001000100011111100100011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(15),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[42]~24_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[46]~25_combout\,
	combout => \Selector13~1_combout\);

\IO_DATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(14),
	o => \IO_DATA[14]~input_o\);

\Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (!IR(10) & (\IO_DATA[14]~input_o\ & (\state.ex_in2~q\))) # (IR(10) & (((\IO_DATA[14]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_IO_DATA[14]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector13~2_combout\);

\Selector13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(14) & ((!AC(14)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(14) & ((!AC(14)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(14) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(14),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector13~3_combout\);

\Selector13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = ( !\Selector13~2_combout\ & ( \Selector13~3_combout\ & ( (!AC(14)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(14)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(14),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector13~2_combout\,
	dataf => \ALT_INV_Selector13~3_combout\,
	combout => \Selector13~4_combout\);

\Selector13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~5_combout\ = ( \Selector13~1_combout\ & ( \Selector13~4_combout\ & ( ((!\WideOr3~0_combout\ & \Add1~57_sumout\)) # (\state.ex_shift~q\) ) ) ) # ( !\Selector13~1_combout\ & ( \Selector13~4_combout\ & ( (!\WideOr3~0_combout\ & 
-- (((\state.ex_shift~q\ & \Selector13~0_combout\)) # (\Add1~57_sumout\))) # (\WideOr3~0_combout\ & (\state.ex_shift~q\ & ((\Selector13~0_combout\)))) ) ) ) # ( \Selector13~1_combout\ & ( !\Selector13~4_combout\ ) ) # ( !\Selector13~1_combout\ & ( 
-- !\Selector13~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Add1~57_sumout\,
	datad => \ALT_INV_Selector13~0_combout\,
	datae => \ALT_INV_Selector13~1_combout\,
	dataf => \ALT_INV_Selector13~4_combout\,
	combout => \Selector13~5_combout\);

\AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector13~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(14));

\altsyncram_component|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E08011F18",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \Selector29~0_combout\);

\state~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~44_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_Selector29~0_combout\,
	combout => \state~44_combout\);

\state.ex_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~44_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_add~q\);

\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \shifter|auto_generated|sbit_w[43]~31_combout\ & ( \shifter|auto_generated|sbit_w[39]~32_combout\ & ( (IR(2) & (!IR(3) & ((!IR(4)) # (AC(15))))) ) ) ) # ( !\shifter|auto_generated|sbit_w[43]~31_combout\ & ( 
-- \shifter|auto_generated|sbit_w[39]~32_combout\ & ( (!IR(3) & ((!IR(2)) # ((!IR(4)) # (AC(15))))) ) ) ) # ( \shifter|auto_generated|sbit_w[43]~31_combout\ & ( !\shifter|auto_generated|sbit_w[39]~32_combout\ & ( (IR(2) & (!IR(3) & (IR(4) & AC(15)))) ) ) ) # 
-- ( !\shifter|auto_generated|sbit_w[43]~31_combout\ & ( !\shifter|auto_generated|sbit_w[39]~32_combout\ & ( (!IR(3) & ((!IR(2)) # ((IR(4) & AC(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001100000000000000010011001000110011000100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(15),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[43]~31_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[39]~32_combout\,
	combout => \Selector16~0_combout\);

\Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = ( \shifter|auto_generated|sbit_w[35]~34_combout\ & ( (IR(3) & ((!IR(4) & (!IR(2))) # (IR(4) & ((AC(15)))))) ) ) # ( !\shifter|auto_generated|sbit_w[35]~34_combout\ & ( (IR(3) & (IR(4) & AC(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001000000010001100000000000000110010000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(15),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[35]~34_combout\,
	combout => \Selector16~1_combout\);

\IO_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(11),
	o => \IO_DATA[11]~input_o\);

\Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (!IR(10) & (\IO_DATA[11]~input_o\ & (\state.ex_in2~q\))) # (IR(10) & (((\IO_DATA[11]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_IO_DATA[11]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector16~2_combout\);

\Selector16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(11) & ((!AC(11)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(11) & ((!AC(11)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(11) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(11),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector16~3_combout\);

\Selector16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = ( !\Selector16~2_combout\ & ( \Selector16~3_combout\ & ( (!AC(11)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(11)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(11),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector16~2_combout\,
	dataf => \ALT_INV_Selector16~3_combout\,
	combout => \Selector16~4_combout\);

\Selector16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = ( \Selector16~1_combout\ & ( \Selector16~4_combout\ & ( ((!\WideOr3~0_combout\ & \Add1~45_sumout\)) # (\state.ex_shift~q\) ) ) ) # ( !\Selector16~1_combout\ & ( \Selector16~4_combout\ & ( (!\WideOr3~0_combout\ & 
-- (((\state.ex_shift~q\ & \Selector16~0_combout\)) # (\Add1~45_sumout\))) # (\WideOr3~0_combout\ & (\state.ex_shift~q\ & ((\Selector16~0_combout\)))) ) ) ) # ( \Selector16~1_combout\ & ( !\Selector16~4_combout\ ) ) # ( !\Selector16~1_combout\ & ( 
-- !\Selector16~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Add1~45_sumout\,
	datad => \ALT_INV_Selector16~0_combout\,
	datae => \ALT_INV_Selector16~1_combout\,
	dataf => \ALT_INV_Selector16~4_combout\,
	combout => \Selector16~5_combout\);

\AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector16~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(11));

\altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020E37FE669F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\state~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\state.decode~q\ & (!\altsyncram_component|auto_generated|q_a\(11) & (\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \state~34_combout\);

\state~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~45_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~34_combout\,
	combout => \state~45_combout\);

\state.ex_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~45_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_shift~q\);

\Add1~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = ( \state.ex_add~q\ & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & ((\altsyncram_component|auto_generated|q_a\(15)))) # (\state.ex_addi~q\ & (IR(10))))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(15))))) ) ) # 
-- ( !\state.ex_add~q\ & ( (!\state.ex_sub~q\ & (IR(10) & ((\state.ex_addi~q\)))) # (\state.ex_sub~q\ & (((!\altsyncram_component|auto_generated|q_a\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100001111000101110000001100010111000011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_state.ex_addi~q\,
	datae => \ALT_INV_state.ex_add~q\,
	combout => \Add1~83_combout\);

\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \Add1~83_combout\ ) + ( (AC(15) & (((\state.ex_addi~q\) # (\state.ex_sub~q\)) # (\state.ex_add~q\))) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_add~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => \ALT_INV_state.ex_addi~q\,
	datad => \ALT_INV_Add1~83_combout\,
	dataf => ALT_INV_AC(15),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( IR(4) & ( AC(15) ) ) # ( !IR(4) & ( AC(15) & ( (!IR(0) & (!IR(1) & (!IR(2) & !IR(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(2),
	datad => ALT_INV_IR(3),
	datae => ALT_INV_IR(4),
	dataf => ALT_INV_AC(15),
	combout => \Selector12~0_combout\);

\Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = ( AC(13) & ( AC(14) & ( (!IR(0) & (IR(1))) # (IR(0) & ((!IR(1)) # ((AC(12)) # (IR(4))))) ) ) ) # ( !AC(13) & ( AC(14) & ( (IR(0) & ((!IR(1)) # ((AC(12)) # (IR(4))))) ) ) ) # ( AC(13) & ( !AC(14) & ( (IR(1) & ((!IR(0)) # ((!IR(4) & 
-- AC(12))))) ) ) ) # ( !AC(13) & ( !AC(14) & ( (IR(0) & (IR(1) & (!IR(4) & AC(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000001000100011001001000101010101010110011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(12),
	datae => ALT_INV_AC(13),
	dataf => ALT_INV_AC(14),
	combout => \Selector12~1_combout\);

\Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = ( !\shifter|auto_generated|sbit_w[43]~30_combout\ & ( \Selector12~1_combout\ & ( (IR(2) & (!\shifter|auto_generated|sbit_w[43]~29_combout\ & ((!\shifter|auto_generated|sbit_w[27]~13_combout\) # (IR(1))))) ) ) ) # ( 
-- \shifter|auto_generated|sbit_w[43]~30_combout\ & ( !\Selector12~1_combout\ & ( !IR(2) ) ) ) # ( !\shifter|auto_generated|sbit_w[43]~30_combout\ & ( !\Selector12~1_combout\ & ( (!IR(2)) # ((!\shifter|auto_generated|sbit_w[43]~29_combout\ & 
-- ((!\shifter|auto_generated|sbit_w[27]~13_combout\) # (IR(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111001100110011001100110000110001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(2),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[27]~13_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[43]~29_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[43]~30_combout\,
	dataf => \ALT_INV_Selector12~1_combout\,
	combout => \Selector12~2_combout\);

\Selector12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = ( \shifter|auto_generated|sbit_w[55]~41_combout\ & ( \Selector12~2_combout\ & ( (IR(3) & !IR(4)) ) ) ) # ( !\shifter|auto_generated|sbit_w[55]~41_combout\ & ( \Selector12~2_combout\ & ( (IR(3) & (!IR(4) & 
-- ((\shifter|auto_generated|sbit_w[55]~40_combout\) # (\shifter|auto_generated|sbit_w[55]~39_combout\)))) ) ) ) # ( \shifter|auto_generated|sbit_w[55]~41_combout\ & ( !\Selector12~2_combout\ & ( !IR(4) ) ) ) # ( 
-- !\shifter|auto_generated|sbit_w[55]~41_combout\ & ( !\Selector12~2_combout\ & ( (!IR(4) & ((!IR(3)) # ((\shifter|auto_generated|sbit_w[55]~40_combout\) # (\shifter|auto_generated|sbit_w[55]~39_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011001100110011001100110000000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => ALT_INV_IR(4),
	datac => \shifter|auto_generated|ALT_INV_sbit_w[55]~39_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[55]~40_combout\,
	datae => \shifter|auto_generated|ALT_INV_sbit_w[55]~41_combout\,
	dataf => \ALT_INV_Selector12~2_combout\,
	combout => \Selector12~3_combout\);

\IO_DATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(15),
	o => \IO_DATA[15]~input_o\);

\Selector12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (!IR(10) & (\IO_DATA[15]~input_o\ & (\state.ex_in2~q\))) # (IR(10) & (((\IO_DATA[15]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_IO_DATA[15]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector12~4_combout\);

\Selector12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(15) & ((!AC(15)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(15) & ((!AC(15)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(15) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector12~5_combout\);

\Selector12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = ( !\Selector12~4_combout\ & ( \Selector12~5_combout\ & ( (!AC(15)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(15)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector12~4_combout\,
	dataf => \ALT_INV_Selector12~5_combout\,
	combout => \Selector12~6_combout\);

\Selector12~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~7_combout\ = ( \Selector12~3_combout\ & ( \Selector12~6_combout\ & ( ((!\WideOr3~0_combout\ & \Add1~61_sumout\)) # (\state.ex_shift~q\) ) ) ) # ( !\Selector12~3_combout\ & ( \Selector12~6_combout\ & ( (!\WideOr3~0_combout\ & 
-- (((\state.ex_shift~q\ & \Selector12~0_combout\)) # (\Add1~61_sumout\))) # (\WideOr3~0_combout\ & (\state.ex_shift~q\ & ((\Selector12~0_combout\)))) ) ) ) # ( \Selector12~3_combout\ & ( !\Selector12~6_combout\ ) ) # ( !\Selector12~3_combout\ & ( 
-- !\Selector12~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Add1~61_sumout\,
	datad => \ALT_INV_Selector12~0_combout\,
	datae => \ALT_INV_Selector12~3_combout\,
	dataf => \ALT_INV_Selector12~6_combout\,
	combout => \Selector12~7_combout\);

\AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector12~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(15));

\altsyncram_component|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020E04AA2080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\state~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & (\altsyncram_component|auto_generated|q_a\(15) & \state~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \ALT_INV_state~36_combout\,
	combout => \state~37_combout\);

\state.ex_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~37_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in~q\);

\state~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~32_combout\,
	combout => \state~33_combout\);

\state.ex_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~33_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_out~q\);

\state~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~39_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~38_combout\,
	combout => \state~39_combout\);

\state.ex_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~39_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_store~q\);

\WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (!\state.fetch~q\ & (!\state.decode~q\ & !\state.ex_iload~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_state.decode~q\,
	datac => \ALT_INV_state.ex_iload~q\,
	combout => \WideOr5~0_combout\);

WideOr5 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ( \WideOr5~0_combout\ & ( (!\state.ex_in~q\ & (!\state.ex_out~q\ & (!\state.ex_store~q\ & !\state.ex_istore~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in~q\,
	datab => \ALT_INV_state.ex_out~q\,
	datac => \ALT_INV_state.ex_store~q\,
	datad => \ALT_INV_state.ex_istore~q\,
	datae => \ALT_INV_WideOr5~0_combout\,
	combout => \WideOr5~combout\);

\state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \WideOr5~combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.fetch~q\);

\state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.fetch~q\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.decode~q\);

\state~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(11) & (\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \state~40_combout\);

\state~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~43_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~40_combout\,
	combout => \state~43_combout\);

\state.ex_addi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~43_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_addi~q\);

\WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\state.ex_sub~q\ & (!\state.ex_addi~q\ & !\state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_sub~q\,
	datab => \ALT_INV_state.ex_addi~q\,
	datac => \ALT_INV_state.ex_add~q\,
	combout => \WideOr3~0_combout\);

\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \shifter|auto_generated|sbit_w[37]~20_combout\ & ( \shifter|auto_generated|sbit_w[53]~37_combout\ & ( (IR(3) & !IR(4)) ) ) ) # ( !\shifter|auto_generated|sbit_w[37]~20_combout\ & ( \shifter|auto_generated|sbit_w[53]~37_combout\ 
-- & ( (IR(3) & !IR(4)) ) ) ) # ( \shifter|auto_generated|sbit_w[37]~20_combout\ & ( !\shifter|auto_generated|sbit_w[53]~37_combout\ & ( (!IR(2) & (IR(3) & !IR(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[37]~20_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[53]~37_combout\,
	combout => \Selector14~0_combout\);

\Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = ( \shifter|auto_generated|sbit_w[41]~15_combout\ & ( \shifter|auto_generated|sbit_w[45]~17_combout\ & ( (!IR(4) & (((!IR(3))))) # (IR(4) & (((!IR(2) & !IR(3))) # (AC(15)))) ) ) ) # ( !\shifter|auto_generated|sbit_w[41]~15_combout\ 
-- & ( \shifter|auto_generated|sbit_w[45]~17_combout\ & ( (!IR(2) & ((!IR(3)) # ((IR(4) & AC(15))))) # (IR(2) & (((IR(4) & AC(15))))) ) ) ) # ( \shifter|auto_generated|sbit_w[41]~15_combout\ & ( !\shifter|auto_generated|sbit_w[45]~17_combout\ & ( (!IR(3) & 
-- (IR(2) & ((!IR(4)) # (AC(15))))) # (IR(3) & (((IR(4) & AC(15))))) ) ) ) # ( !\shifter|auto_generated|sbit_w[41]~15_combout\ & ( !\shifter|auto_generated|sbit_w[45]~17_combout\ & ( (IR(4) & (AC(15) & ((IR(3)) # (IR(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010000000100011110001000100011111100100011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(15),
	datae => \shifter|auto_generated|ALT_INV_sbit_w[41]~15_combout\,
	dataf => \shifter|auto_generated|ALT_INV_sbit_w[45]~17_combout\,
	combout => \Selector14~1_combout\);

\IO_DATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(13),
	o => \IO_DATA[13]~input_o\);

\Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (!IR(10) & (\IO_DATA[13]~input_o\ & (\state.ex_in2~q\))) # (IR(10) & (((\IO_DATA[13]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(10),
	datab => \ALT_INV_IO_DATA[13]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector14~2_combout\);

\Selector14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = ( \state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(13) & ((!AC(13)) # (!\state.ex_xor~q\))) ) ) # ( !\state.ex_or~q\ & ( (!\altsyncram_component|auto_generated|q_a\(13) & ((!AC(13)) # ((!\state.ex_xor~q\)))) # 
-- (\altsyncram_component|auto_generated|q_a\(13) & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(13))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000110010001100100011111001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(13),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector14~3_combout\);

\Selector14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = ( !\Selector14~2_combout\ & ( \Selector14~3_combout\ & ( (!AC(13)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(13)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(13),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector14~2_combout\,
	dataf => \ALT_INV_Selector14~3_combout\,
	combout => \Selector14~4_combout\);

\Selector14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~5_combout\ = ( \Selector14~1_combout\ & ( \Selector14~4_combout\ & ( ((!\WideOr3~0_combout\ & \Add1~53_sumout\)) # (\state.ex_shift~q\) ) ) ) # ( !\Selector14~1_combout\ & ( \Selector14~4_combout\ & ( (!\WideOr3~0_combout\ & 
-- (((\state.ex_shift~q\ & \Selector14~0_combout\)) # (\Add1~53_sumout\))) # (\WideOr3~0_combout\ & (\state.ex_shift~q\ & ((\Selector14~0_combout\)))) ) ) ) # ( \Selector14~1_combout\ & ( !\Selector14~4_combout\ ) ) # ( !\Selector14~1_combout\ & ( 
-- !\Selector14~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Add1~53_sumout\,
	datad => \ALT_INV_Selector14~0_combout\,
	datae => \ALT_INV_Selector14~1_combout\,
	dataf => \ALT_INV_Selector14~4_combout\,
	combout => \Selector14~5_combout\);

\AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector14~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(13));

\altsyncram_component|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020E27FEF8F8",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\state~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~40_combout\,
	combout => \state~41_combout\);

\state.ex_istore\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~41_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_istore~q\);

\state.ex_istore2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.ex_istore~q\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_istore2~q\);

\state.ex_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.ex_store~q\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_store2~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \MW~q\ & ( \state.ex_store2~q\ & ( (\state.ex_istore~q\) # (\state.ex_store~q\) ) ) ) # ( !\MW~q\ & ( \state.ex_store2~q\ & ( (\state.ex_istore~q\) # (\state.ex_store~q\) ) ) ) # ( \MW~q\ & ( !\state.ex_store2~q\ & ( 
-- (((!\state.ex_istore2~q\ & \state.init~q\)) # (\state.ex_istore~q\)) # (\state.ex_store~q\) ) ) ) # ( !\MW~q\ & ( !\state.ex_store2~q\ & ( (\state.ex_istore~q\) # (\state.ex_store~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111001011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_istore2~q\,
	datab => \ALT_INV_state.init~q\,
	datac => \ALT_INV_state.ex_store~q\,
	datad => \ALT_INV_state.ex_istore~q\,
	datae => \ALT_INV_MW~q\,
	dataf => \ALT_INV_state.ex_store2~q\,
	combout => \Selector0~0_combout\);

MW : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MW~q\);

\altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E0DFAE586",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\state~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~42_combout\ = (!\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \ALT_INV_state~38_combout\,
	combout => \state~42_combout\);

\state.ex_sub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~42_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_sub~q\);

\Selector27~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~7_combout\ = ( !IR(2) & ( (\Selector26~1_combout\ & (((\shifter|auto_generated|sbit_w[18]~8_combout\ & (IR(1) & IR(4)))) # (\shifter|auto_generated|sbit_w[48]~11_combout\))) ) ) # ( IR(2) & ( ((\Selector26~1_combout\ & 
-- (((\shifter|auto_generated|sbit_w[36]~9_combout\ & IR(4))) # (\shifter|auto_generated|sbit_w[48]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000000000101010100000000010101110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|ALT_INV_sbit_w[48]~11_combout\,
	datab => \shifter|auto_generated|ALT_INV_sbit_w[18]~8_combout\,
	datac => \shifter|auto_generated|ALT_INV_sbit_w[36]~9_combout\,
	datad => \ALT_INV_Selector26~1_combout\,
	datae => ALT_INV_IR(2),
	dataf => ALT_INV_IR(4),
	datag => ALT_INV_IR(1),
	combout => \Selector27~7_combout\);

\IO_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(0),
	o => \IO_DATA[0]~input_o\);

\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (!IR(0) & (\IO_DATA[0]~input_o\ & (\state.ex_in2~q\))) # (IR(0) & (((\IO_DATA[0]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => \ALT_INV_IO_DATA[0]~input_o\,
	datac => \ALT_INV_state.ex_in2~q\,
	datad => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector27~1_combout\);

\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \state.ex_or~q\ & ( \altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\state.ex_or~q\ & ( (\altsyncram_component|auto_generated|q_a\(0) & (((!AC(0) & \state.ex_xor~q\)) # (\state.ex_load~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110011001100110011001100000010001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(0),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \ALT_INV_state.ex_xor~q\,
	datad => \ALT_INV_state.ex_load~q\,
	datae => \ALT_INV_state.ex_or~q\,
	combout => \Selector27~0_combout\);

\Selector27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = ( !\altsyncram_component|auto_generated|q_a\(0) & ( (((AC(0) & ((!\Selector26~2_combout\) # (\state.ex_xor~q\)))) # (\Selector27~0_combout\)) # (\Selector27~1_combout\) ) ) # ( \altsyncram_component|auto_generated|q_a\(0) & ( 
-- (((AC(0) & ((!\Selector26~2_combout\) # (\state.ex_and~q\)))) # (\Selector27~0_combout\)) # (\Selector27~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101110111011101110111011111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector27~1_combout\,
	datab => \ALT_INV_Selector27~0_combout\,
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => ALT_INV_AC(0),
	datag => \ALT_INV_state.ex_xor~q\,
	combout => \Selector27~3_combout\);

\Selector27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = ( \Selector27~7_combout\ & ( \Selector27~3_combout\ ) ) # ( !\Selector27~7_combout\ & ( \Selector27~3_combout\ ) ) # ( \Selector27~7_combout\ & ( !\Selector27~3_combout\ ) ) # ( !\Selector27~7_combout\ & ( !\Selector27~3_combout\ 
-- & ( (!\Add1~1_sumout\ & (((\Selector26~0_combout\ & \shifter|auto_generated|sbit_w[56]~10_combout\)))) # (\Add1~1_sumout\ & ((!\WideOr3~0_combout\) # ((\Selector26~0_combout\ & \shifter|auto_generated|sbit_w[56]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_WideOr3~0_combout\,
	datac => \ALT_INV_Selector26~0_combout\,
	datad => \shifter|auto_generated|ALT_INV_sbit_w[56]~10_combout\,
	datae => \ALT_INV_Selector27~7_combout\,
	dataf => \ALT_INV_Selector27~3_combout\,
	combout => \Selector27~2_combout\);

\AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector27~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(0));

\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( \state.init~q\ & ( ((\IO_WRITE_int~q\ & ((!\state.fetch~q\) # (\state.decode~q\)))) # (\state~33_combout\) ) ) # ( !\state.init~q\ & ( ((\IO_WRITE_int~q\ & \state.decode~q\)) # (\state~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111010001011111111100000101111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_WRITE_int~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state~33_combout\,
	datae => \ALT_INV_state.init~q\,
	combout => \Selector28~0_combout\);

IO_WRITE_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector28~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IO_WRITE_int~q\);

\state.ex_out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state.ex_out~q\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_out2~q\);

\Selector129~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = ( \state.ex_out~q\ ) # ( !\state.ex_out~q\ & ( ((\IO_CYCLE~reg0_q\ & (!\state.ex_in2~q\ & !\state.ex_out2~q\))) # (\state.ex_in~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111111111111111111111101000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_CYCLE~reg0_q\,
	datab => \ALT_INV_state.ex_in2~q\,
	datac => \ALT_INV_state.ex_out2~q\,
	datad => \ALT_INV_state.ex_in~q\,
	datae => \ALT_INV_state.ex_out~q\,
	combout => \Selector129~0_combout\);

\IO_CYCLE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector129~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IO_CYCLE~reg0_q\);

\IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(11),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(11));

\IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(12),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(12));

\IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(13),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(13));

\IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(14),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(14));

\IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \altsyncram_component|auto_generated|q_a\(15),
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(15));

ww_IO_WRITE <= \IO_WRITE~output_o\;

ww_IO_CYCLE <= \IO_CYCLE~output_o\;

ww_IO_ADDR(0) <= \IO_ADDR[0]~output_o\;

ww_IO_ADDR(1) <= \IO_ADDR[1]~output_o\;

ww_IO_ADDR(2) <= \IO_ADDR[2]~output_o\;

ww_IO_ADDR(3) <= \IO_ADDR[3]~output_o\;

ww_IO_ADDR(4) <= \IO_ADDR[4]~output_o\;

ww_IO_ADDR(5) <= \IO_ADDR[5]~output_o\;

ww_IO_ADDR(6) <= \IO_ADDR[6]~output_o\;

ww_IO_ADDR(7) <= \IO_ADDR[7]~output_o\;

ww_IO_ADDR(8) <= \IO_ADDR[8]~output_o\;

ww_IO_ADDR(9) <= \IO_ADDR[9]~output_o\;

ww_IO_ADDR(10) <= \IO_ADDR[10]~output_o\;

ww_dbg_FETCH <= \dbg_FETCH~output_o\;

ww_dbg_AC(0) <= \dbg_AC[0]~output_o\;

ww_dbg_AC(1) <= \dbg_AC[1]~output_o\;

ww_dbg_AC(2) <= \dbg_AC[2]~output_o\;

ww_dbg_AC(3) <= \dbg_AC[3]~output_o\;

ww_dbg_AC(4) <= \dbg_AC[4]~output_o\;

ww_dbg_AC(5) <= \dbg_AC[5]~output_o\;

ww_dbg_AC(6) <= \dbg_AC[6]~output_o\;

ww_dbg_AC(7) <= \dbg_AC[7]~output_o\;

ww_dbg_AC(8) <= \dbg_AC[8]~output_o\;

ww_dbg_AC(9) <= \dbg_AC[9]~output_o\;

ww_dbg_AC(10) <= \dbg_AC[10]~output_o\;

ww_dbg_AC(11) <= \dbg_AC[11]~output_o\;

ww_dbg_AC(12) <= \dbg_AC[12]~output_o\;

ww_dbg_AC(13) <= \dbg_AC[13]~output_o\;

ww_dbg_AC(14) <= \dbg_AC[14]~output_o\;

ww_dbg_AC(15) <= \dbg_AC[15]~output_o\;

ww_dbg_PC(0) <= \dbg_PC[0]~output_o\;

ww_dbg_PC(1) <= \dbg_PC[1]~output_o\;

ww_dbg_PC(2) <= \dbg_PC[2]~output_o\;

ww_dbg_PC(3) <= \dbg_PC[3]~output_o\;

ww_dbg_PC(4) <= \dbg_PC[4]~output_o\;

ww_dbg_PC(5) <= \dbg_PC[5]~output_o\;

ww_dbg_PC(6) <= \dbg_PC[6]~output_o\;

ww_dbg_PC(7) <= \dbg_PC[7]~output_o\;

ww_dbg_PC(8) <= \dbg_PC[8]~output_o\;

ww_dbg_PC(9) <= \dbg_PC[9]~output_o\;

ww_dbg_PC(10) <= \dbg_PC[10]~output_o\;

ww_dbg_MA(0) <= \dbg_MA[0]~output_o\;

ww_dbg_MA(1) <= \dbg_MA[1]~output_o\;

ww_dbg_MA(2) <= \dbg_MA[2]~output_o\;

ww_dbg_MA(3) <= \dbg_MA[3]~output_o\;

ww_dbg_MA(4) <= \dbg_MA[4]~output_o\;

ww_dbg_MA(5) <= \dbg_MA[5]~output_o\;

ww_dbg_MA(6) <= \dbg_MA[6]~output_o\;

ww_dbg_MA(7) <= \dbg_MA[7]~output_o\;

ww_dbg_MA(8) <= \dbg_MA[8]~output_o\;

ww_dbg_MA(9) <= \dbg_MA[9]~output_o\;

ww_dbg_MA(10) <= \dbg_MA[10]~output_o\;

ww_dbg_MD(0) <= \dbg_MD[0]~output_o\;

ww_dbg_MD(1) <= \dbg_MD[1]~output_o\;

ww_dbg_MD(2) <= \dbg_MD[2]~output_o\;

ww_dbg_MD(3) <= \dbg_MD[3]~output_o\;

ww_dbg_MD(4) <= \dbg_MD[4]~output_o\;

ww_dbg_MD(5) <= \dbg_MD[5]~output_o\;

ww_dbg_MD(6) <= \dbg_MD[6]~output_o\;

ww_dbg_MD(7) <= \dbg_MD[7]~output_o\;

ww_dbg_MD(8) <= \dbg_MD[8]~output_o\;

ww_dbg_MD(9) <= \dbg_MD[9]~output_o\;

ww_dbg_MD(10) <= \dbg_MD[10]~output_o\;

ww_dbg_MD(11) <= \dbg_MD[11]~output_o\;

ww_dbg_MD(12) <= \dbg_MD[12]~output_o\;

ww_dbg_MD(13) <= \dbg_MD[13]~output_o\;

ww_dbg_MD(14) <= \dbg_MD[14]~output_o\;

ww_dbg_MD(15) <= \dbg_MD[15]~output_o\;

ww_dbg_IR(0) <= \dbg_IR[0]~output_o\;

ww_dbg_IR(1) <= \dbg_IR[1]~output_o\;

ww_dbg_IR(2) <= \dbg_IR[2]~output_o\;

ww_dbg_IR(3) <= \dbg_IR[3]~output_o\;

ww_dbg_IR(4) <= \dbg_IR[4]~output_o\;

ww_dbg_IR(5) <= \dbg_IR[5]~output_o\;

ww_dbg_IR(6) <= \dbg_IR[6]~output_o\;

ww_dbg_IR(7) <= \dbg_IR[7]~output_o\;

ww_dbg_IR(8) <= \dbg_IR[8]~output_o\;

ww_dbg_IR(9) <= \dbg_IR[9]~output_o\;

ww_dbg_IR(10) <= \dbg_IR[10]~output_o\;

ww_dbg_IR(11) <= \dbg_IR[11]~output_o\;

ww_dbg_IR(12) <= \dbg_IR[12]~output_o\;

ww_dbg_IR(13) <= \dbg_IR[13]~output_o\;

ww_dbg_IR(14) <= \dbg_IR[14]~output_o\;

ww_dbg_IR(15) <= \dbg_IR[15]~output_o\;

IO_DATA(0) <= \IO_DATA[0]~output_o\;

IO_DATA(1) <= \IO_DATA[1]~output_o\;

IO_DATA(2) <= \IO_DATA[2]~output_o\;

IO_DATA(3) <= \IO_DATA[3]~output_o\;

IO_DATA(4) <= \IO_DATA[4]~output_o\;

IO_DATA(5) <= \IO_DATA[5]~output_o\;

IO_DATA(6) <= \IO_DATA[6]~output_o\;

IO_DATA(7) <= \IO_DATA[7]~output_o\;

IO_DATA(8) <= \IO_DATA[8]~output_o\;

IO_DATA(9) <= \IO_DATA[9]~output_o\;

IO_DATA(10) <= \IO_DATA[10]~output_o\;

IO_DATA(11) <= \IO_DATA[11]~output_o\;

IO_DATA(12) <= \IO_DATA[12]~output_o\;

IO_DATA(13) <= \IO_DATA[13]~output_o\;

IO_DATA(14) <= \IO_DATA[14]~output_o\;

IO_DATA(15) <= \IO_DATA[15]~output_o\;
END structure;


