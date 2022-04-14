-- IO DECODER for SCOMP
-- This eliminates the need for a lot of NAND decoders or Comparators 
--    that would otherwise be spread around the TOP_SCOMP BDF

LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY IO_DECODER IS

  PORT
  (
    IO_ADDR     : IN STD_LOGIC_VECTOR(7 downto 0);
    IO_CYCLE    : IN STD_LOGIC;
    SMS_EN      : OUT STD_LOGIC;
    SMC_EN      : OUT STD_LOGIC;
    SMD_EN      : OUT STD_LOGIC;
    SSEG1_EN    : OUT STD_LOGIC;
    SSEG2_EN    : OUT STD_LOGIC;
    LEDS_EN     : OUT STD_LOGIC;
    SW_EN       : OUT STD_LOGIC;
    PPU_EN      : OUT STD_LOGIC;
    PARAM_EN    : OUT STD_LOGIC
  );

END ENTITY;

ARCHITECTURE a OF IO_DECODER IS

  SIGNAL  IO_INT  : INTEGER RANGE 0 TO 511;
  
begin

  IO_INT <= TO_INTEGER(UNSIGNED(IO_CYCLE & IO_ADDR));
  -- note that this results in a three-digit hex number whose 
  --  upper digit is 1 if IO_CYCLE is asserted, and whose
  --  lower two digits are the I/O address being presented
  -- The lines below decode each valid I/O address ...
        
  SMS_EN <= '1'    WHEN IO_INT = 16#100# ELSE '0';
  SMC_EN <= '1'       WHEN IO_INT = 16#101# ELSE '0';
  SMD_EN <= '1'     WHEN IO_INT = 16#102# ELSE '0';
  SSEG1_EN <= '1'    WHEN IO_INT = 16#103# ELSE '0';
  SSEG2_EN <= '1'      WHEN IO_INT = 16#104# ELSE '0';
  LEDS_EN <= '1'      WHEN IO_INT = 16#105# ELSE '0';
  SW_EN <= '1'      WHEN IO_INT = 16#106# ELSE '0';
  PPU_EN <= '1'       WHEN IO_INT = 16#107# ELSE '0';
  PARAM_EN <= '1'       WHEN IO_INT = 16#108# ELSE '0';

      
END a;
