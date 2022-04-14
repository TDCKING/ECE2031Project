-- SCOMP.vhd
-- This is a modified version of SCOMP.  Don't use it for lab 7.
-- Runs the simulation software.
--
-- Kevin Johnson, 2016

LIBRARY IEEE;
LIBRARY ALTERA_MF;
LIBRARY LPM;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ALTERA_MF.ALTERA_MF_COMPONENTS.ALL;
USE LPM.LPM_COMPONENTS.ALL;


ENTITY SCOMP IS
  PORT(
    CLOCK    : IN    STD_LOGIC;
    RESETN   : IN    STD_LOGIC;
    IO_WRITE : OUT   STD_LOGIC;
    IO_CYCLE : OUT   STD_LOGIC;
    IO_ADDR  : OUT   STD_LOGIC_VECTOR( 7 DOWNTO 0);
    IO_DATA  : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    PCINT    : IN    STD_LOGIC_VECTOR( 3 DOWNTO 0)
  );
END SCOMP;


ARCHITECTURE a OF SCOMP IS
  TYPE STATE_TYPE IS (
    RESET_PC,
    CU_INSTR,
    CU_DATA,
    CU_STORE,
    CU_OUT,
    CU_ILOAD,
    CU_ISTORE
  );

  TYPE STACK_TYPE IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(10 DOWNTO 0);

  SIGNAL STATE        : STATE_TYPE;
  SIGNAL PC_STACK     : STACK_TYPE;
  SIGNAL IO_IN        : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL AC           : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL AC_SAVED     : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL AC_SHIFTED   : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL IR           : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL MDR          : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL PC           : STD_LOGIC_VECTOR(10 DOWNTO 0);
  SIGNAL PC_SAVED     : STD_LOGIC_VECTOR(10 DOWNTO 0);
  SIGNAL MAR          : STD_LOGIC_VECTOR(10 DOWNTO 0);
  SIGNAL MW           : STD_LOGIC;
  SIGNAL IO_WRITE_INT : STD_LOGIC;

  SIGNAL GIE          : STD_LOGIC;
  SIGNAL IIE          : STD_LOGIC_VECTOR( 3 DOWNTO 0);
  SIGNAL INT_REQ      : STD_LOGIC_VECTOR( 3 DOWNTO 0);
  SIGNAL INT_REQ_SYNC : STD_LOGIC_VECTOR( 3 DOWNTO 0); -- registered version of INT_REQ
  SIGNAL INT_ACK      : STD_LOGIC_VECTOR( 3 DOWNTO 0);


  BEGIN
    -- Use altsyncram component for unified program and data memory
    MEMORY : altsyncram
    GENERIC MAP (
      intended_device_family => "Cyclone",
      width_a          => 16,
      widthad_a        => 11,
      numwords_a       => 2048,
      operation_mode   => "SINGLE_PORT",
      outdata_reg_a    => "UNREGISTERED",
      indata_aclr_a    => "NONE",
      wrcontrol_aclr_a => "NONE",
      address_aclr_a   => "NONE",
      outdata_aclr_a   => "NONE",
      init_file        => "TrainSim5Code.mif",
      lpm_hint         => "ENABLE_RUNTIME_MOD=NO",
      lpm_type         => "altsyncram"
    )
    PORT MAP (
      wren_a    => MW,
      clock0    => CLOCK,
      address_a => MAR,
      data_a    => AC,
      q_a       => MDR
    );

    -- Use LPM function to shift AC using the SHIFT instruction
    SHIFTER: LPM_CLSHIFT
    GENERIC MAP (
      lpm_width     => 16,
      lpm_widthdist => 4,
      lpm_shifttype => "ARITHMETIC"
    )
    PORT MAP (
      data      => AC,
      distance  => IR(3 DOWNTO 0),
      direction => IR(4),
      result    => AC_SHIFTED
    );

    -- Use LPM function to drive I/O bus
    IO_BUS: LPM_BUSTRI
    GENERIC MAP (
      lpm_width => 16
    )
    PORT MAP (
      data     => AC,
      enabledt => IO_WRITE_INT,
      tridata  => IO_DATA
    );


    IO_ADDR  <= IR(7 DOWNTO 0);

    WITH STATE SELECT
      MAR <=  MDR(10 DOWNTO 0) WHEN CU_INSTR,
              IR(10 DOWNTO 0) WHEN CU_STORE,
              MDR(10 DOWNTO 0) WHEN CU_ISTORE,
              MDR(10 DOWNTO 0) WHEN CU_ILOAD,
              PC WHEN OTHERS;


    PROCESS (CLOCK, RESETN)
      BEGIN
        IF (RESETN = '0') THEN          -- Active low, asynchronous reset
          STATE <= RESET_PC;
          PC <= "00000000000";
          MW        <= '0';             -- Clear memory write flag
          GIE       <= '1';          -- Enable interrupts
          IIE       <= "0000";       -- Mask all interrupts
          INT_REQ_SYNC <= "0000";
        ELSIF (RISING_EDGE(CLOCK)) THEN
          INT_REQ_SYNC <= INT_REQ;
          CASE STATE IS
            WHEN RESET_PC =>
              AC        <= x"0000";      -- Clear AC register
              STATE     <= CU_INSTR;
            WHEN CU_INSTR =>
              IR  <= MDR;             -- Latch instruction into the IR
              IF (GIE = '1') AND  -- If Global Interrupt Enable set and...
              (INT_REQ_SYNC /= "0000") THEN -- ...an interrupt is pending
                IF INT_REQ_SYNC(0) = '1' THEN   -- Got interrupt on PCINT0
                  INT_ACK <= "0001";     -- Acknowledge the interrupt
                  PC <= "00000000001";    -- Redirect execution
                ELSIF INT_REQ_SYNC(1) = '1' THEN
                  INT_ACK <= "0010";     -- repeat for other pins
                  PC <= "00000000010";
                ELSIF INT_REQ_SYNC(2) = '1' THEN
                  INT_ACK <= "0100";
                  PC <= "00000000011";
                ELSIF INT_REQ_SYNC(3) = '1' THEN
                  INT_ACK <= "1000";
                  PC <= "00000000100";
                END IF;
                GIE <= '0';            -- Disable interrupts while in ISR
                AC_SAVED <= AC;        -- Save AC
                PC_SAVED <= PC;        -- Save PC
                STATE <= CU_DATA;
              ELSE  -- no interrupt
              INT_ACK <= "0000";       -- Clear any interrupt acks.
              CASE MDR(15 DOWNTO 11) IS
                WHEN "00101" =>   -- JUMP
                  PC <= MDR(10 DOWNTO 0);
                WHEN "10000" =>   -- CALL
                  PC <= MDR(10 DOWNTO 0);
                  FOR i IN 0 TO 14 LOOP
                    PC_STACK(i + 1) <= PC_STACK(i);
                  END LOOP;
                  PC_STACK(0) <= PC + 1;
                  STATE <= CU_DATA;
                WHEN "10001" =>   -- RETURN
                  FOR i IN 0 TO 14 LOOP
                    PC_STACK(i) <= PC_STACK(i + 1);
                  END LOOP;
                  PC <= PC_STACK(0);
                  STATE <= CU_DATA;
                WHEN "10110" =>   -- RETI
                  PC <= PC_SAVED;
                  AC <= AC_SAVED;
                  GIE <= '1';
                  STATE <= CU_DATA;
                WHEN "00110" =>   -- JNEG
                  IF AC(15) = '1' THEN
                    PC <= MDR(10 DOWNTO 0);
                  ELSE
                    PC <= PC + 1;
                  END IF;
                  STATE <= CU_DATA;
                WHEN "00111" =>   -- JPOS
                  IF AC(15) = '0' AND AC /= x"0000" THEN
                    PC <= MDR(10 DOWNTO 0);
                  ELSE
                    PC <= PC + 1;
                  END IF;
                  STATE <= CU_DATA;
                WHEN "01000" =>   -- JZERO
                  IF AC = x"0000" THEN
                    PC <= MDR(10 DOWNTO 0);
                  ELSE
                    PC <= PC + 1;
                  END IF;
                  STATE <= CU_DATA;
                WHEN "00010" =>   -- STORE
                  MW <= '1';
                  PC <= PC + 1;
                  STATE <= CU_STORE;
                WHEN "01101" =>   -- ADDI
                  AC <= AC + (MDR(10)&MDR(10)&MDR(10)&MDR(10)&MDR(10)&MDR(10 DOWNTO 0));
                  PC <= PC + 1;
                  STATE <= CU_DATA;
                WHEN "10111" =>   -- LOADI
                  AC <= (MDR(10)&MDR(10)&MDR(10)&MDR(10)&MDR(10)&MDR(10 DOWNTO 0));
                  PC <= PC + 1;
                  STATE <= CU_DATA;
                WHEN "10010" =>   -- IN
                  IO_CYCLE <= '1';
                  PC <= PC + 1;
                  STATE <= CU_DATA;
                WHEN "10011" =>   -- OUT
                  IO_WRITE_INT <= '1';
                  IO_WRITE <= '1';
                  PC <= PC + 1;
                  STATE <= CU_OUT;
                WHEN "01110" =>   -- ILOAD
                  PC <= PC + 1;
                  STATE <= CU_ILOAD;
                WHEN "01111" =>   -- ISTORE
                  PC <= PC + 1;
                  STATE <= CU_ISTORE;
                WHEN OTHERS =>
                  PC <= PC + 1;   -- Normal execution
                  STATE <= CU_DATA;
              END CASE;
            END IF;

            WHEN CU_DATA =>
              STATE <= CU_INSTR;  -- always goes back to instr
              CASE IR(15 downto 11) IS
                WHEN "00001" =>       -- LOAD
                  AC <= MDR;
                WHEN "00011" =>       -- ADD
                  AC <= AC + MDR;
                WHEN "00100" =>       -- SUB
                  AC <= AC - MDR;
                WHEN "01001" =>       -- AND
                  AC <= AC AND MDR;
                WHEN "01010" =>       -- OR
                  AC <= AC OR MDR;
                WHEN "01011" =>       -- XOR
                  AC <= AC XOR MDR;
                WHEN "01100" =>       -- SHIFT
                  AC <= AC_SHIFTED;
                WHEN "10010" =>       -- IN
                  IO_CYCLE <= '0';
                  AC <= IO_DATA;
                WHEN "10011" =>       -- OUT
                  IO_WRITE_INT <= '0';
                  IO_WRITE <= '0';
                  IO_CYCLE <= '0';
                WHEN "10100" =>       -- CLI
                  IIE <= IIE AND NOT(IR(3 DOWNTO 0));  -- disable indicated interrupts
                WHEN "10101" =>       -- SEI
                  IIE <= IIE OR IR(3 DOWNTO 0);  -- enable indicated interrupts
                WHEN OTHERS =>
                  STATE <= CU_INSTR;   -- Invalid opcodes or nothing to do.
              END CASE;
            WHEN CU_STORE =>
              MW <= '0';
              STATE <= CU_DATA;
            WHEN CU_OUT =>
              IO_CYCLE <= '1';
              STATE <= CU_DATA;
            WHEN CU_ILOAD =>
              IR <= "00001" & MDR(10 DOWNTO 0); -- LOAD & address
              STATE <= CU_DATA;
            WHEN CU_ISTORE =>
              MW <= '1';
              IR <= "00010" & MDR(10 DOWNTO 0); -- STORE & address
              STATE <= CU_STORE;
            WHEN OTHERS =>
              STATE <= CU_INSTR;          -- If an invalid state is reached, return to FETCH
          END CASE;
        END IF;
      END PROCESS;
      
    -- This process monitors the external interrupt pins, setting
    -- some flags if a rising edge is detected, and clearing flags
    -- once the interrupt is acknowledged.
    PROCESS(RESETN, PCINT, INT_ACK, IIE)
    BEGIN
        IF (RESETN = '0') THEN
            INT_REQ <= "0000";  -- clear all interrupts on reset
        ELSE
            FOR i IN 0 TO 3 LOOP -- for each of the 4 interrupt pins
                IF (INT_ACK(i) = '1') OR (IIE(i) = '0') THEN
                    INT_REQ(i) <= '0';   -- if acknowledged or masked, clear interrupt
                ELSIF RISING_EDGE(PCINT(i)) THEN
                    INT_REQ(i) <= '1';   -- if rising edge on PCINT, request interrupt
                END IF;
            END LOOP;
        END IF;
    END PROCESS;

  END a;
