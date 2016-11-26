--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: DPU_matrix_multiplication_timesim.vhd
-- /___/   /\     Timestamp: Mon Feb 22 00:04:32 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf DPU_matrix_multiplication.pcf -rpw 100 -tpw 0 -ar Structure -tm DPU_matrix_multiplication -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim DPU_matrix_multiplication.ncd DPU_matrix_multiplication_timesim.vhd 
-- Device	: 3s400tq144-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: DPU_matrix_multiplication.ncd
-- Output file	: E:\Works\GitHub\Systolic-Processor-On-FPGA\ISE Design Files\DPU_matrix_multiplication\netgen\par\DPU_matrix_multiplication_timesim.vhd
-- # of Entities	: 1
-- Design Name	: DPU_matrix_multiplication
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity DPU_matrix_multiplication is
  port (
    CLK : in STD_LOGIC := 'X'; 
    Result : out STD_LOGIC_VECTOR ( 9 downto 0 ); 
    Bout : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Aout : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Ain : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Bin : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end DPU_matrix_multiplication;

architecture Structure of DPU_matrix_multiplication is
  signal CLK_BUFGP : STD_LOGIC; 
  signal Ain_1_IBUF_376 : STD_LOGIC; 
  signal R2_DFF2_Q_377 : STD_LOGIC; 
  signal Ain_2_IBUF_378 : STD_LOGIC; 
  signal R2_DFF3_Q_379 : STD_LOGIC; 
  signal Ain_3_IBUF_380 : STD_LOGIC; 
  signal R2_DFF4_Q_381 : STD_LOGIC; 
  signal R2_DFF5_Q_382 : STD_LOGIC; 
  signal R2_DFF6_Q_383 : STD_LOGIC; 
  signal R2_DFF7_Q_384 : STD_LOGIC; 
  signal R2_DFF8_Q_385 : STD_LOGIC; 
  signal R2_DFF9_Q_386 : STD_LOGIC; 
  signal R1_DFF0_Q_1_387 : STD_LOGIC; 
  signal R1_DFF1_Q_1_389 : STD_LOGIC; 
  signal R1_DFF2_Q_1_391 : STD_LOGIC; 
  signal R1_DFF3_Q_1_393 : STD_LOGIC; 
  signal R0_DFF0_Q_1_395 : STD_LOGIC; 
  signal R1_DFF2_Q_399 : STD_LOGIC; 
  signal R0_DFF1_Q_400 : STD_LOGIC; 
  signal R0_DFF2_Q_403 : STD_LOGIC; 
  signal R1_DFF1_Q_404 : STD_LOGIC; 
  signal R1_DFF0_Q_405 : STD_LOGIC; 
  signal MAC_S2_1_0 : STD_LOGIC; 
  signal R2_DFF1_Q_408 : STD_LOGIC; 
  signal R2_DFF0_Q_409 : STD_LOGIC; 
  signal R0_DFF0_Q_411 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal FA_FA6_Cout1_O : STD_LOGIC; 
  signal FA_D_5_0 : STD_LOGIC; 
  signal FA_FA6_Cout1_SW2_O : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal S3_7_0 : STD_LOGIC; 
  signal FA_D_1_0 : STD_LOGIC; 
  signal FA_FA6_Cout1_SW0_O : STD_LOGIC; 
  signal MAC_C3_2_0 : STD_LOGIC; 
  signal R1_DFF3_Q_423 : STD_LOGIC; 
  signal R0_DFF3_Q_424 : STD_LOGIC; 
  signal MAC_S3_2_0 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal MAC_HAM23_A : STD_LOGIC; 
  signal MAC_FAM30_A_0 : STD_LOGIC; 
  signal MAC_C2_0_0 : STD_LOGIC; 
  signal MAC_S2_2_0 : STD_LOGIC; 
  signal MAC_C2_1_0 : STD_LOGIC; 
  signal S3_4_0 : STD_LOGIC; 
  signal FA_D_2_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal FA_D_3_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal S3_5_0 : STD_LOGIC; 
  signal MAC_S1_1_0 : STD_LOGIC; 
  signal MAC_FAM22_H2_Mxor_Sout_Result1_SW0_O : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal Aout_2_O : STD_LOGIC; 
  signal Aout_1_O : STD_LOGIC; 
  signal Result_2_O : STD_LOGIC; 
  signal MAC_S3_1_pack_1 : STD_LOGIC; 
  signal MAC_C3_1_pack_1 : STD_LOGIC; 
  signal MAC_FAM22_H2_Mxor_Sout_Result1_SW0_O_pack_1 : STD_LOGIC; 
  signal R2_DFF6_Q_DYMUX_1195 : STD_LOGIC; 
  signal R2_DFF6_Q_CLKINV_1186 : STD_LOGIC; 
  signal S3_3_pack_1 : STD_LOGIC; 
  signal MAC_FAM30_A : STD_LOGIC; 
  signal R2_DFF0_Q_DYMUX_1216 : STD_LOGIC; 
  signal R2_DFF0_Q_CLKINV_1207 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal S3_6_pack_1 : STD_LOGIC; 
  signal R2_DFF2_Q_DYMUX_1243 : STD_LOGIC; 
  signal R2_DFF2_Q_CLKINV_1234 : STD_LOGIC; 
  signal R2_DFF4_Q_DYMUX_1279 : STD_LOGIC; 
  signal R2_DFF4_Q_CLKINV_1270 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal R2_DFF5_Q_DYMUX_1177 : STD_LOGIC; 
  signal R2_DFF5_Q_CLKINV_1168 : STD_LOGIC; 
  signal R0_DFF0_Q_DYMUX_1312 : STD_LOGIC; 
  signal R0_DFF0_Q_CLKINV_1310 : STD_LOGIC; 
  signal MAC_C1_0_pack_2 : STD_LOGIC; 
  signal R2_DFF3_Q_DYMUX_1261 : STD_LOGIC; 
  signal R2_DFF3_Q_CLKINV_1252 : STD_LOGIC; 
  signal FA_D_4_pack_1 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal R0_DFF1_Q_DYMUX_1345 : STD_LOGIC; 
  signal R0_DFF1_Q_CLKINV_1343 : STD_LOGIC; 
  signal R0_DFF2_Q_DYMUX_1354 : STD_LOGIC; 
  signal R0_DFF2_Q_CLKINV_1352 : STD_LOGIC; 
  signal MAC_S1_2_pack_1 : STD_LOGIC; 
  signal MAC_C2_2_pack_1 : STD_LOGIC; 
  signal MAC_HAM23_A_pack_1 : STD_LOGIC; 
  signal S3_2_pack_1 : STD_LOGIC; 
  signal R0_DFF3_Q_DYMUX_1363 : STD_LOGIC; 
  signal R0_DFF3_Q_CLKINV_1361 : STD_LOGIC; 
  signal R1_DFF0_Q_DYMUX_1372 : STD_LOGIC; 
  signal R1_DFF0_Q_CLKINV_1370 : STD_LOGIC; 
  signal R1_DFF1_Q_DYMUX_1381 : STD_LOGIC; 
  signal R1_DFF1_Q_CLKINV_1379 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal R1_DFF3_Q_DYMUX_1411 : STD_LOGIC; 
  signal R1_DFF3_Q_CLKINV_1409 : STD_LOGIC; 
  signal Aout_0_O : STD_LOGIC; 
  signal Result_0_O : STD_LOGIC; 
  signal Result_1_O : STD_LOGIC; 
  signal R1_DFF2_Q_DYMUX_1402 : STD_LOGIC; 
  signal R1_DFF2_Q_CLKINV_1400 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal Aout_3_O : STD_LOGIC; 
  signal Result_3_O : STD_LOGIC; 
  signal Result_7_O : STD_LOGIC; 
  signal Bin_0_IFF_IFFDMUX_570 : STD_LOGIC; 
  signal Bin_0_IFF_ICLK1INV_572 : STD_LOGIC; 
  signal Bin_0_INBUF : STD_LOGIC; 
  signal Bin_1_INBUF : STD_LOGIC; 
  signal Result_8_O : STD_LOGIC; 
  signal Result_6_O : STD_LOGIC; 
  signal Result_5_O : STD_LOGIC; 
  signal Result_9_O : STD_LOGIC; 
  signal Result_4_O : STD_LOGIC; 
  signal Bin_2_INBUF : STD_LOGIC; 
  signal Bin_3_INBUF : STD_LOGIC; 
  signal Bout_1_O : STD_LOGIC; 
  signal Bout_0_O : STD_LOGIC; 
  signal Ain_1_INBUF : STD_LOGIC; 
  signal Ain_0_INBUF : STD_LOGIC; 
  signal Bout_2_O : STD_LOGIC; 
  signal Bout_3_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal R2_DFF1_Q_DXMUX_757 : STD_LOGIC; 
  signal S3_0_pack_2 : STD_LOGIC; 
  signal R2_DFF1_Q_CLKINV_740 : STD_LOGIC; 
  signal Ain_3_INBUF : STD_LOGIC; 
  signal Ain_2_INBUF : STD_LOGIC; 
  signal R2_DFF9_Q_DXMUX_787 : STD_LOGIC; 
  signal FA_FA6_Cout1_O_pack_2 : STD_LOGIC; 
  signal R2_DFF9_Q_CLKINV_771 : STD_LOGIC; 
  signal S3_1_pack_1 : STD_LOGIC; 
  signal MAC_C1_1_pack_2 : STD_LOGIC; 
  signal R2_DFF7_Q_DXMUX_871 : STD_LOGIC; 
  signal FA_FA6_Cout1_SW0_O_pack_2 : STD_LOGIC; 
  signal R2_DFF7_Q_CLKINV_854 : STD_LOGIC; 
  signal R2_DFF8_Q_DXMUX_817 : STD_LOGIC; 
  signal FA_FA6_Cout1_SW2_O_pack_2 : STD_LOGIC; 
  signal R2_DFF8_Q_CLKINV_802 : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal MAC_C4_1_pack_1 : STD_LOGIC; 
  signal Aout_2_OUTPUT_OFF_O1INV_484 : STD_LOGIC; 
  signal R0_DFF2_Q_1_487 : STD_LOGIC; 
  signal Aout_2_OUTPUT_OTCLK1INV_481 : STD_LOGIC; 
  signal Aout_3_OUTPUT_OFF_O1INV_508 : STD_LOGIC; 
  signal R0_DFF3_Q_1_511 : STD_LOGIC; 
  signal Aout_3_OUTPUT_OTCLK1INV_505 : STD_LOGIC; 
  signal Aout_1_OUTPUT_OFF_O1INV_460 : STD_LOGIC; 
  signal R0_DFF1_Q_1_463 : STD_LOGIC; 
  signal Aout_1_OUTPUT_OTCLK1INV_457 : STD_LOGIC; 
  signal Ain_0_IFF_ICLK1INV_672 : STD_LOGIC; 
  signal Ain_0_IFF_IFFDMUX_670 : STD_LOGIC; 
  signal Bin_1_IFF_ICLK1INV_589 : STD_LOGIC; 
  signal Bin_1_IFF_IFFDMUX_587 : STD_LOGIC; 
  signal Bin_2_IFF_ICLK1INV_606 : STD_LOGIC; 
  signal Bin_2_IFF_IFFDMUX_604 : STD_LOGIC; 
  signal Bin_3_IFF_ICLK1INV_623 : STD_LOGIC; 
  signal Bin_3_IFF_IFFDMUX_621 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal MAC_C1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal MAC_S1 : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal S3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MAC_C4 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal MAC_C3 : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal MAC_S3 : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal MAC_C2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal FA_D : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal MAC_S2 : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal S6 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  Aout_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => Aout_2_O,
      O => Aout(2)
    );
  Aout_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => Aout_1_O,
      O => Aout(1)
    );
  Result_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => Result_2_O,
      O => Result(2)
    );
  S3_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3(4),
      O => S3_4_0
    );
  S3_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_S3_1_pack_1,
      O => MAC_S3(1)
    );
  S3_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3(5),
      O => S3_5_0
    );
  S3_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C3_1_pack_1,
      O => MAC_C3(1)
    );
  MAC_S2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_S2(2),
      O => MAC_S2_2_0
    );
  MAC_S2_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_FAM22_H2_Mxor_Sout_Result1_SW0_O_pack_1,
      O => MAC_FAM22_H2_Mxor_Sout_Result1_SW0_O
    );
  R2_DFF6_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(6),
      O => R2_DFF6_Q_DYMUX_1195
    );
  R2_DFF6_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF6_Q_CLKINV_1186
    );
  FA_D_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_D(3),
      O => FA_D_3_0
    );
  FA_D_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3_3_pack_1,
      O => S3(3)
    );
  R2_DFF0_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_FAM30_A,
      O => MAC_FAM30_A_0
    );
  R2_DFF0_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(0),
      O => R2_DFF0_Q_DYMUX_1216
    );
  R2_DFF0_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF0_Q_CLKINV_1207
    );
  N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3_6_pack_1,
      O => S3(6)
    );
  R2_DFF2_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(2),
      O => R2_DFF2_Q_DYMUX_1243
    );
  R2_DFF2_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF2_Q_CLKINV_1234
    );
  R2_DFF4_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(4),
      O => R2_DFF4_Q_DYMUX_1279
    );
  R2_DFF4_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF4_Q_CLKINV_1270
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  R2_DFF5_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(5),
      O => R2_DFF5_Q_DYMUX_1177
    );
  R2_DFF5_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF5_Q_CLKINV_1168
    );
  R0_DFF0_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_0_INBUF,
      O => R0_DFF0_Q_DYMUX_1312
    );
  R0_DFF0_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R0_DFF0_Q_CLKINV_1310
    );
  MAC_C2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C2(0),
      O => MAC_C2_0_0
    );
  MAC_C2_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C1_0_pack_2,
      O => MAC_C1(0)
    );
  R2_DFF3_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(3),
      O => R2_DFF3_Q_DYMUX_1261
    );
  R2_DFF3_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF3_Q_CLKINV_1252
    );
  FA_D_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_D(5),
      O => FA_D_5_0
    );
  FA_D_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_D_4_pack_1,
      O => FA_D(4)
    );
  N7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  N7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  R0_DFF1_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_1_IBUF_376,
      O => R0_DFF1_Q_DYMUX_1345
    );
  R0_DFF1_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R0_DFF1_Q_CLKINV_1343
    );
  R0_DFF2_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_2_IBUF_378,
      O => R0_DFF2_Q_DYMUX_1354
    );
  R0_DFF2_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R0_DFF2_Q_CLKINV_1352
    );
  MAC_C2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C2(1),
      O => MAC_C2_1_0
    );
  MAC_C2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_S1_2_pack_1,
      O => MAC_S1(2)
    );
  MAC_S3_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_S3(2),
      O => MAC_S3_2_0
    );
  MAC_S3_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C2_2_pack_1,
      O => MAC_C2(2)
    );
  MAC_C3_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C3(2),
      O => MAC_C3_2_0
    );
  MAC_C3_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_HAM23_A_pack_1,
      O => MAC_HAM23_A
    );
  FA_D_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_D(2),
      O => FA_D_2_0
    );
  FA_D_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3_2_pack_1,
      O => S3(2)
    );
  R0_DFF3_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_3_IBUF_380,
      O => R0_DFF3_Q_DYMUX_1363
    );
  R0_DFF3_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R0_DFF3_Q_CLKINV_1361
    );
  R1_DFF0_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_0_INBUF,
      O => R1_DFF0_Q_DYMUX_1372
    );
  R1_DFF0_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R1_DFF0_Q_CLKINV_1370
    );
  R1_DFF1_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_1_INBUF,
      O => R1_DFF1_Q_DYMUX_1381
    );
  R1_DFF1_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R1_DFF1_Q_CLKINV_1379
    );
  N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  R1_DFF3_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_3_INBUF,
      O => R1_DFF3_Q_DYMUX_1411
    );
  R1_DFF3_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R1_DFF3_Q_CLKINV_1409
    );
  Aout_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD205"
    )
    port map (
      I => Aout_0_O,
      O => Aout(0)
    );
  Result_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => Result_0_O,
      O => Result(0)
    );
  Result_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => Result_1_O,
      O => Result(1)
    );
  R1_DFF2_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_2_INBUF,
      O => R1_DFF2_Q_DYMUX_1402
    );
  R1_DFF2_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R1_DFF2_Q_CLKINV_1400
    );
  MAC_S1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_S1(1),
      O => MAC_S1_1_0
    );
  MAC_S1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  Aout_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => Aout_3_O,
      O => Aout(3)
    );
  Result_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => Result_3_O,
      O => Result(3)
    );
  Result_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => Result_7_O,
      O => Result(7)
    );
  R1_DFF0_Q_1 : X_FF
    generic map(
      LOC => "PAD173",
      INIT => '0'
    )
    port map (
      I => Bin_0_IFF_IFFDMUX_570,
      CE => VCC,
      CLK => Bin_0_IFF_ICLK1INV_572,
      SET => GND,
      RST => GND,
      O => R1_DFF0_Q_1_387
    );
  Bin_0_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Bin_0_IFF_ICLK1INV_572
    );
  Bin_0_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_0_INBUF,
      O => Bin_0_IFF_IFFDMUX_570
    );
  Bin_0_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin(0),
      O => Bin_0_INBUF
    );
  Bin_1_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin(1),
      O => Bin_1_INBUF
    );
  Result_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD218"
    )
    port map (
      I => Result_8_O,
      O => Result(8)
    );
  Result_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD219"
    )
    port map (
      I => Result_6_O,
      O => Result(6)
    );
  Result_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => Result_5_O,
      O => Result(5)
    );
  Result_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD217"
    )
    port map (
      I => Result_9_O,
      O => Result(9)
    );
  Result_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => Result_4_O,
      O => Result(4)
    );
  Bin_2_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin(2),
      O => Bin_2_INBUF
    );
  Bin_3_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin(3),
      O => Bin_3_INBUF
    );
  Bout_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => Bout_1_O,
      O => Bout(1)
    );
  Bout_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => Bout_0_O,
      O => Bout(0)
    );
  Ain_1_IBUF : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain(1),
      O => Ain_1_INBUF
    );
  Ain_0_IBUF : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain(0),
      O => Ain_0_INBUF
    );
  Bout_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD166"
    )
    port map (
      I => Bout_2_O,
      O => Bout(2)
    );
  Bout_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => Bout_3_O,
      O => Bout(3)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  R2_DFF1_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(1),
      O => R2_DFF1_Q_DXMUX_757
    );
  R2_DFF1_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3_0_pack_2,
      O => S3(0)
    );
  R2_DFF1_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF1_Q_CLKINV_740
    );
  Ain_3_IBUF : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain(3),
      O => Ain_3_INBUF
    );
  Ain_2_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain(2),
      O => Ain_2_INBUF
    );
  R2_DFF9_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(9),
      O => R2_DFF9_Q_DXMUX_787
    );
  R2_DFF9_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_FA6_Cout1_O_pack_2,
      O => FA_FA6_Cout1_O
    );
  R2_DFF9_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF9_Q_CLKINV_771
    );
  FA_D_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_D(1),
      O => FA_D_1_0
    );
  FA_D_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3_1_pack_1,
      O => S3(1)
    );
  MAC_S2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_S2(1),
      O => MAC_S2_1_0
    );
  MAC_S2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C1_1_pack_2,
      O => MAC_C1(1)
    );
  R2_DFF7_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(7),
      O => R2_DFF7_Q_DXMUX_871
    );
  R2_DFF7_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_FA6_Cout1_SW0_O_pack_2,
      O => FA_FA6_Cout1_SW0_O
    );
  R2_DFF7_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF7_Q_CLKINV_854
    );
  R2_DFF8_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => S6(8),
      O => R2_DFF8_Q_DXMUX_817
    );
  R2_DFF8_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => FA_FA6_Cout1_SW2_O_pack_2,
      O => FA_FA6_Cout1_SW2_O
    );
  R2_DFF8_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => R2_DFF8_Q_CLKINV_802
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  S3_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => S3(7),
      O => S3_7_0
    );
  S3_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => MAC_C4_1_pack_1,
      O => MAC_C4(1)
    );
  Aout_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_2_IBUF_378,
      O => Aout_2_OUTPUT_OFF_O1INV_484
    );
  Aout_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 605 ps
    )
    port map (
      I => R0_DFF2_Q_1_487,
      O => Aout_2_O
    );
  Aout_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Aout_2_OUTPUT_OTCLK1INV_481
    );
  R0_DFF2_Q_1 : X_FF
    generic map(
      LOC => "PAD181",
      INIT => '0'
    )
    port map (
      I => Aout_2_OUTPUT_OFF_O1INV_484,
      CE => VCC,
      CLK => Aout_2_OUTPUT_OTCLK1INV_481,
      SET => GND,
      RST => GND,
      O => R0_DFF2_Q_1_487
    );
  R0_DFF3_Q_1 : X_FF
    generic map(
      LOC => "PAD204",
      INIT => '0'
    )
    port map (
      I => Aout_3_OUTPUT_OFF_O1INV_508,
      CE => VCC,
      CLK => Aout_3_OUTPUT_OTCLK1INV_505,
      SET => GND,
      RST => GND,
      O => R0_DFF3_Q_1_511
    );
  Aout_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_3_IBUF_380,
      O => Aout_3_OUTPUT_OFF_O1INV_508
    );
  Aout_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 605 ps
    )
    port map (
      I => R0_DFF3_Q_1_511,
      O => Aout_3_O
    );
  Aout_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Aout_3_OUTPUT_OTCLK1INV_505
    );
  R0_DFF1_Q_1 : X_FF
    generic map(
      LOC => "PAD236",
      INIT => '0'
    )
    port map (
      I => Aout_1_OUTPUT_OFF_O1INV_460,
      CE => VCC,
      CLK => Aout_1_OUTPUT_OTCLK1INV_457,
      SET => GND,
      RST => GND,
      O => R0_DFF1_Q_1_463
    );
  Aout_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_1_IBUF_376,
      O => Aout_1_OUTPUT_OFF_O1INV_460
    );
  Aout_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 605 ps
    )
    port map (
      I => R0_DFF1_Q_1_463,
      O => Aout_1_O
    );
  Aout_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Aout_1_OUTPUT_OTCLK1INV_457
    );
  Ain_0_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_0_INBUF,
      O => Ain_0_IFF_IFFDMUX_670
    );
  Ain_0_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Ain_0_IFF_ICLK1INV_672
    );
  R0_DFF0_Q_1 : X_FF
    generic map(
      LOC => "PAD206",
      INIT => '0'
    )
    port map (
      I => Ain_0_IFF_IFFDMUX_670,
      CE => VCC,
      CLK => Ain_0_IFF_ICLK1INV_672,
      SET => GND,
      RST => GND,
      O => R0_DFF0_Q_1_395
    );
  Bin_1_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_1_INBUF,
      O => Bin_1_IFF_IFFDMUX_587
    );
  Bin_1_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Bin_1_IFF_ICLK1INV_589
    );
  R1_DFF1_Q_1 : X_FF
    generic map(
      LOC => "PAD171",
      INIT => '0'
    )
    port map (
      I => Bin_1_IFF_IFFDMUX_587,
      CE => VCC,
      CLK => Bin_1_IFF_ICLK1INV_589,
      SET => GND,
      RST => GND,
      O => R1_DFF1_Q_1_389
    );
  R1_DFF2_Q_1 : X_FF
    generic map(
      LOC => "PAD168",
      INIT => '0'
    )
    port map (
      I => Bin_2_IFF_IFFDMUX_604,
      CE => VCC,
      CLK => Bin_2_IFF_ICLK1INV_606,
      SET => GND,
      RST => GND,
      O => R1_DFF2_Q_1_391
    );
  Bin_2_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_2_INBUF,
      O => Bin_2_IFF_IFFDMUX_604
    );
  Bin_2_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Bin_2_IFF_ICLK1INV_606
    );
  R1_DFF3_Q_1 : X_FF
    generic map(
      LOC => "PAD167",
      INIT => '0'
    )
    port map (
      I => Bin_3_IFF_IFFDMUX_621,
      CE => VCC,
      CLK => Bin_3_IFF_ICLK1INV_623,
      SET => GND,
      RST => GND,
      O => R1_DFF3_Q_1_393
    );
  Bin_3_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 605 ps
    )
    port map (
      I => Bin_3_INBUF,
      O => Bin_3_IFF_IFFDMUX_621
    );
  Bin_3_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Bin_3_IFF_ICLK1INV_623
    );
  Ain_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_3_INBUF,
      O => Ain_3_IBUF_380
    );
  R2_DFF9_Q : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      I => R2_DFF9_Q_DXMUX_787,
      CE => VCC,
      CLK => R2_DFF9_Q_CLKINV_771,
      SET => GND,
      RST => GND,
      O => R2_DFF9_Q_386
    );
  FA_FA6_Cout1 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X2Y9"
    )
    port map (
      ADR0 => S3(6),
      ADR1 => VCC,
      ADR2 => FA_D_5_0,
      ADR3 => R2_DFF6_Q_383,
      O => FA_FA6_Cout1_O_pack_2
    );
  FA_FA6_Cout1_SW2 : X_LUT4
    generic map(
      INIT => X"1117",
      LOC => "SLICE_X5Y9"
    )
    port map (
      ADR0 => S3_7_0,
      ADR1 => R2_DFF7_Q_384,
      ADR2 => R2_DFF6_Q_383,
      ADR3 => S3(6),
      O => FA_FA6_Cout1_SW2_O_pack_2
    );
  MAC_HAM11_H1_Cout1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X4Y6"
    )
    port map (
      ADR0 => R0_DFF2_Q_403,
      ADR1 => R0_DFF1_Q_400,
      ADR2 => R1_DFF0_Q_405,
      ADR3 => R1_DFF1_Q_404,
      O => MAC_C1_1_pack_2
    );
  MAC_FAM21_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X4Y6"
    )
    port map (
      ADR0 => R0_DFF1_Q_400,
      ADR1 => MAC_C1(1),
      ADR2 => MAC_S1(2),
      ADR3 => R1_DFF2_Q_399,
      O => MAC_S2(1)
    );
  MAC_S0_0_and00001 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => R0_DFF0_Q_411,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => R1_DFF0_Q_405,
      O => S3_0_pack_2
    );
  Ain_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_1_INBUF,
      O => Ain_1_IBUF_376
    );
  R2_DFF1_Q : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => R2_DFF1_Q_DXMUX_757,
      CE => VCC,
      CLK => R2_DFF1_Q_CLKINV_740,
      SET => GND,
      RST => GND,
      O => R2_DFF1_Q_408
    );
  FA_FA9_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"A959",
      LOC => "SLICE_X2Y9"
    )
    port map (
      ADR0 => R2_DFF9_Q_386,
      ADR1 => N6_0,
      ADR2 => FA_FA6_Cout1_O,
      ADR3 => N7_0,
      O => S6(9)
    );
  Ain_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 605 ps
    )
    port map (
      I => Ain_2_INBUF,
      O => Ain_2_IBUF_378
    );
  FA_FA1_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => R2_DFF0_Q_409,
      ADR1 => R2_DFF1_Q_408,
      ADR2 => S3(1),
      ADR3 => S3(0),
      O => S6(1)
    );
  MAC_HAM10_H1_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"6CA0",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => R0_DFF0_Q_411,
      ADR1 => R0_DFF1_Q_400,
      ADR2 => R1_DFF1_Q_404,
      ADR3 => R1_DFF0_Q_405,
      O => S3_1_pack_1
    );
  MAC_FAM30_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X3Y6"
    )
    port map (
      ADR0 => MAC_C2_0_0,
      ADR1 => N11_0,
      ADR2 => MAC_C1(1),
      ADR3 => MAC_S1(2),
      O => S3_3_pack_1
    );
  MAC_FAM31_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X5Y6"
    )
    port map (
      ADR0 => R1_DFF3_Q_423,
      ADR1 => MAC_S2_2_0,
      ADR2 => MAC_C2_1_0,
      ADR3 => R0_DFF1_Q_400,
      O => MAC_S3_1_pack_1
    );
  MAC_HAM23_A1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X6Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R0_DFF3_Q_424,
      ADR2 => VCC,
      ADR3 => R1_DFF2_Q_399,
      O => MAC_HAM23_A_pack_1
    );
  FA_FA1_Cout1 : X_LUT4
    generic map(
      INIT => X"E8C0",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => R2_DFF0_Q_409,
      ADR1 => R2_DFF1_Q_408,
      ADR2 => S3(1),
      ADR3 => S3(0),
      O => FA_D(1)
    );
  FA_FA8_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"A965",
      LOC => "SLICE_X5Y9"
    )
    port map (
      ADR0 => R2_DFF8_Q_385,
      ADR1 => FA_D_5_0,
      ADR2 => N15_0,
      ADR3 => FA_FA6_Cout1_SW2_O,
      O => S6(8)
    );
  MAC_FA41_Cout1 : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X7Y7"
    )
    port map (
      ADR0 => MAC_C3(1),
      ADR1 => MAC_S3_2_0,
      ADR2 => N2_0,
      ADR3 => MAC_S3(1),
      O => MAC_C4_1_pack_1
    );
  MAC_FA42_Cout1 : X_LUT4
    generic map(
      INIT => X"EA80",
      LOC => "SLICE_X7Y7"
    )
    port map (
      ADR0 => MAC_C3_2_0,
      ADR1 => R0_DFF3_Q_424,
      ADR2 => R1_DFF3_Q_423,
      ADR3 => MAC_C4(1),
      O => S3(7)
    );
  FA_FA3_Cout1 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X3Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R2_DFF3_Q_379,
      ADR2 => S3(3),
      ADR3 => FA_D_2_0,
      O => FA_D(3)
    );
  MAC_FA42_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X5Y7"
    )
    port map (
      ADR0 => MAC_C3_2_0,
      ADR1 => MAC_C4(1),
      ADR2 => R1_DFF3_Q_423,
      ADR3 => R0_DFF3_Q_424,
      O => S3_6_pack_1
    );
  MAC_FAM32_Cout1 : X_LUT4
    generic map(
      INIT => X"E8A0",
      LOC => "SLICE_X6Y4"
    )
    port map (
      ADR0 => MAC_C2(2),
      ADR1 => R0_DFF2_Q_403,
      ADR2 => MAC_HAM23_A,
      ADR3 => R1_DFF3_Q_423,
      O => MAC_C3(2)
    );
  MAC_HA40_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"1E78",
      LOC => "SLICE_X5Y6"
    )
    port map (
      ADR0 => MAC_FAM30_A_0,
      ADR1 => MAC_C2_0_0,
      ADR2 => MAC_S3(1),
      ADR3 => MAC_S2_1_0,
      O => S3(4)
    );
  FA_FA7_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"17E8",
      LOC => "SLICE_X3Y9"
    )
    port map (
      ADR0 => S3(6),
      ADR1 => FA_D_5_0,
      ADR2 => R2_DFF6_Q_383,
      ADR3 => FA_FA6_Cout1_SW0_O,
      O => S6(7)
    );
  R2_DFF7_Q : X_FF
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => '0'
    )
    port map (
      I => R2_DFF7_Q_DXMUX_871,
      CE => VCC,
      CLK => R2_DFF7_Q_CLKINV_854,
      SET => GND,
      RST => GND,
      O => R2_DFF7_Q_384
    );
  FA_FA6_Cout1_SW0 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X3Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => S3_7_0,
      ADR3 => R2_DFF7_Q_384,
      O => FA_FA6_Cout1_SW0_O_pack_2
    );
  R2_DFF8_Q : X_FF
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => '0'
    )
    port map (
      I => R2_DFF8_Q_DXMUX_817,
      CE => VCC,
      CLK => R2_DFF8_Q_CLKINV_802,
      SET => GND,
      RST => GND,
      O => R2_DFF8_Q_385
    );
  FA_FA5_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X0Y6"
    )
    port map (
      ADR0 => S3_5_0,
      ADR1 => FA_D(4),
      ADR2 => VCC,
      ADR3 => R2_DFF5_Q_382,
      O => S6(5)
    );
  MAC_FAM20_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X5Y4"
    )
    port map (
      ADR0 => MAC_C1(0),
      ADR1 => MAC_S1_1_0,
      ADR2 => R0_DFF0_Q_411,
      ADR3 => R1_DFF2_Q_399,
      O => S3_2_pack_1
    );
  MAC_FAM21_Cout1 : X_LUT4
    generic map(
      INIT => X"F880",
      LOC => "SLICE_X4Y7"
    )
    port map (
      ADR0 => R0_DFF1_Q_400,
      ADR1 => R1_DFF2_Q_399,
      ADR2 => MAC_S1(2),
      ADR3 => MAC_C1(1),
      O => MAC_C2(1)
    );
  MAC_FAM32_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X7Y5"
    )
    port map (
      ADR0 => R1_DFF3_Q_423,
      ADR1 => MAC_HAM23_A,
      ADR2 => R0_DFF2_Q_403,
      ADR3 => MAC_C2(2),
      O => MAC_S3(2)
    );
  FA_FA5_Cout1 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X2Y6"
    )
    port map (
      ADR0 => S3_5_0,
      ADR1 => R2_DFF5_Q_382,
      ADR2 => VCC,
      ADR3 => FA_D(4),
      O => FA_D(5)
    );
  MAC_FAM22_H2_Mxor_Sout_Result1_SW0 : X_LUT4
    generic map(
      INIT => X"55FF",
      LOC => "SLICE_X6Y5"
    )
    port map (
      ADR0 => R1_DFF1_Q_404,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => R0_DFF3_Q_424,
      O => MAC_FAM22_H2_Mxor_Sout_Result1_SW0_O_pack_1
    );
  FA_FA6_Cout1_SW1 : X_LUT4
    generic map(
      INIT => X"173F",
      LOC => "SLICE_X5Y7"
    )
    port map (
      ADR0 => R2_DFF6_Q_383,
      ADR1 => R2_DFF7_Q_384,
      ADR2 => S3_7_0,
      ADR3 => S3(6),
      O => N15
    );
  FA_FA2_Cout1 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X5Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R2_DFF2_Q_377,
      ADR2 => S3(2),
      ADR3 => FA_D_1_0,
      O => FA_D(2)
    );
  MAC_HAM12_H1_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"6CA0",
      LOC => "SLICE_X4Y7"
    )
    port map (
      ADR0 => R1_DFF0_Q_405,
      ADR1 => R0_DFF2_Q_403,
      ADR2 => R0_DFF3_Q_424,
      ADR3 => R1_DFF1_Q_404,
      O => MAC_S1_2_pack_1
    );
  MAC_HAM10_H1_Cout1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X4Y4"
    )
    port map (
      ADR0 => R1_DFF0_Q_405,
      ADR1 => R0_DFF1_Q_400,
      ADR2 => R1_DFF1_Q_404,
      ADR3 => R0_DFF0_Q_411,
      O => MAC_C1_0_pack_2
    );
  MAC_FAM22_Cout1 : X_LUT4
    generic map(
      INIT => X"C080",
      LOC => "SLICE_X7Y5"
    )
    port map (
      ADR0 => R1_DFF2_Q_399,
      ADR1 => N18_0,
      ADR2 => R1_DFF1_Q_404,
      ADR3 => R1_DFF0_Q_405,
      O => MAC_C2_2_pack_1
    );
  MAC_FAM22_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"CB07",
      LOC => "SLICE_X6Y5"
    )
    port map (
      ADR0 => R1_DFF0_Q_405,
      ADR1 => R0_DFF2_Q_403,
      ADR2 => MAC_FAM22_H2_Mxor_Sout_Result1_SW0_O,
      ADR3 => R1_DFF2_Q_399,
      O => MAC_S2(2)
    );
  MAC_FA41_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"3C96",
      LOC => "SLICE_X7Y6"
    )
    port map (
      ADR0 => MAC_S3(1),
      ADR1 => MAC_S3_2_0,
      ADR2 => MAC_C3(1),
      ADR3 => N4_0,
      O => S3(5)
    );
  MAC_FAM20_Cout1 : X_LUT4
    generic map(
      INIT => X"EC80",
      LOC => "SLICE_X4Y4"
    )
    port map (
      ADR0 => R1_DFF2_Q_399,
      ADR1 => MAC_S1_1_0,
      ADR2 => R0_DFF0_Q_411,
      ADR3 => MAC_C1(0),
      O => MAC_C2(0)
    );
  MAC_FAM31_Cout1 : X_LUT4
    generic map(
      INIT => X"E8C0",
      LOC => "SLICE_X7Y6"
    )
    port map (
      ADR0 => R1_DFF3_Q_423,
      ADR1 => MAC_C2_1_0,
      ADR2 => MAC_S2_2_0,
      ADR3 => R0_DFF1_Q_400,
      O => MAC_C3_1_pack_1
    );
  FA_FA4_Cout1 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X2Y6"
    )
    port map (
      ADR0 => R2_DFF4_Q_381,
      ADR1 => VCC,
      ADR2 => FA_D_3_0,
      ADR3 => S3_4_0,
      O => FA_D_4_pack_1
    );
  FA_FA2_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X5Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R2_DFF2_Q_377,
      ADR2 => S3(2),
      ADR3 => FA_D_1_0,
      O => S6(2)
    );
  R2_DFF3_Q : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      I => R2_DFF3_Q_DYMUX_1261,
      CE => VCC,
      CLK => R2_DFF3_Q_CLKINV_1252,
      SET => GND,
      RST => GND,
      O => R2_DFF3_Q_379
    );
  R2_DFF6_Q : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      I => R2_DFF6_Q_DYMUX_1195,
      CE => VCC,
      CLK => R2_DFF6_Q_CLKINV_1186,
      SET => GND,
      RST => GND,
      O => R2_DFF6_Q_383
    );
  MAC_FAM30_H2_Mxor_Sout_Result1_SW0 : X_LUT4
    generic map(
      INIT => X"6AC0",
      LOC => "SLICE_X6Y6"
    )
    port map (
      ADR0 => R0_DFF1_Q_400,
      ADR1 => R1_DFF3_Q_423,
      ADR2 => R0_DFF0_Q_411,
      ADR3 => R1_DFF2_Q_399,
      O => N11
    );
  MAC_FAM30_A1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X4Y8"
    )
    port map (
      ADR0 => R0_DFF0_Q_411,
      ADR1 => R1_DFF3_Q_423,
      ADR2 => VCC,
      ADR3 => VCC,
      O => MAC_FAM30_A
    );
  FA_FA8_H2_Cout1_SW1 : X_LUT4
    generic map(
      INIT => X"555F",
      LOC => "SLICE_X3Y8"
    )
    port map (
      ADR0 => R2_DFF8_Q_385,
      ADR1 => VCC,
      ADR2 => S3_7_0,
      ADR3 => R2_DFF7_Q_384,
      O => N7
    );
  R0_DFF0_Q : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      I => R0_DFF0_Q_DYMUX_1312,
      CE => VCC,
      CLK => R0_DFF0_Q_CLKINV_1310,
      SET => GND,
      RST => GND,
      O => R0_DFF0_Q_411
    );
  FA_FA8_H2_Cout1_SW0 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X3Y8"
    )
    port map (
      ADR0 => R2_DFF8_Q_385,
      ADR1 => VCC,
      ADR2 => S3_7_0,
      ADR3 => R2_DFF7_Q_384,
      O => N6
    );
  R2_DFF2_Q : X_FF
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => '0'
    )
    port map (
      I => R2_DFF2_Q_DYMUX_1243,
      CE => VCC,
      CLK => R2_DFF2_Q_CLKINV_1234,
      SET => GND,
      RST => GND,
      O => R2_DFF2_Q_377
    );
  R2_DFF5_Q : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      I => R2_DFF5_Q_DYMUX_1177,
      CE => VCC,
      CLK => R2_DFF5_Q_CLKINV_1168,
      SET => GND,
      RST => GND,
      O => R2_DFF5_Q_382
    );
  FA_FA4_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X3Y7"
    )
    port map (
      ADR0 => R2_DFF4_Q_381,
      ADR1 => FA_D_3_0,
      ADR2 => VCC,
      ADR3 => S3_4_0,
      O => S6(4)
    );
  R2_DFF4_Q : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      I => R2_DFF4_Q_DYMUX_1279,
      CE => VCC,
      CLK => R2_DFF4_Q_CLKINV_1270,
      SET => GND,
      RST => GND,
      O => R2_DFF4_Q_381
    );
  MAC_HA40_Cout1_SW1 : X_LUT4
    generic map(
      INIT => X"1777",
      LOC => "SLICE_X6Y6"
    )
    port map (
      ADR0 => MAC_S2_1_0,
      ADR1 => MAC_C2_0_0,
      ADR2 => R0_DFF0_Q_411,
      ADR3 => R1_DFF3_Q_423,
      O => N4
    );
  FA_FA6_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X2Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R2_DFF6_Q_383,
      ADR2 => FA_D_5_0,
      ADR3 => S3(6),
      O => S6(6)
    );
  FA_HA0_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"66CC",
      LOC => "SLICE_X4Y8"
    )
    port map (
      ADR0 => R0_DFF0_Q_411,
      ADR1 => R2_DFF0_Q_409,
      ADR2 => VCC,
      ADR3 => R1_DFF0_Q_405,
      O => S6(0)
    );
  R2_DFF0_Q : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      I => R2_DFF0_Q_DYMUX_1216,
      CE => VCC,
      CLK => R2_DFF0_Q_CLKINV_1207,
      SET => GND,
      RST => GND,
      O => R2_DFF0_Q_409
    );
  FA_FA3_H2_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X2Y7"
    )
    port map (
      ADR0 => FA_D_2_0,
      ADR1 => S3(3),
      ADR2 => R2_DFF3_Q_379,
      ADR3 => VCC,
      O => S6(3)
    );
  R1_DFF0_Q : X_FF
    generic map(
      LOC => "SLICE_X18Y4",
      INIT => '0'
    )
    port map (
      I => R1_DFF0_Q_DYMUX_1372,
      CE => VCC,
      CLK => R1_DFF0_Q_CLKINV_1370,
      SET => GND,
      RST => GND,
      O => R1_DFF0_Q_405
    );
  R1_DFF1_Q : X_FF
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => '0'
    )
    port map (
      I => R1_DFF1_Q_DYMUX_1381,
      CE => VCC,
      CLK => R1_DFF1_Q_CLKINV_1379,
      SET => GND,
      RST => GND,
      O => R1_DFF1_Q_404
    );
  MAC_FAM22_Cout1_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X4Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => R0_DFF2_Q_403,
      ADR3 => R0_DFF3_Q_424,
      O => N18
    );
  R0_DFF3_Q : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      I => R0_DFF3_Q_DYMUX_1363,
      CE => VCC,
      CLK => R0_DFF3_Q_CLKINV_1361,
      SET => GND,
      RST => GND,
      O => R0_DFF3_Q_424
    );
  MAC_HA40_Cout1_SW0 : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X6Y7"
    )
    port map (
      ADR0 => MAC_S2_1_0,
      ADR1 => MAC_C2_0_0,
      ADR2 => R0_DFF0_Q_411,
      ADR3 => R1_DFF3_Q_423,
      O => N2
    );
  R1_DFF2_Q : X_FF
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => '0'
    )
    port map (
      I => R1_DFF2_Q_DYMUX_1402,
      CE => VCC,
      CLK => R1_DFF2_Q_CLKINV_1400,
      SET => GND,
      RST => GND,
      O => R1_DFF2_Q_399
    );
  R0_DFF2_Q : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      I => R0_DFF2_Q_DYMUX_1354,
      CE => VCC,
      CLK => R0_DFF2_Q_CLKINV_1352,
      SET => GND,
      RST => GND,
      O => R0_DFF2_Q_403
    );
  R1_DFF3_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y0",
      INIT => '0'
    )
    port map (
      I => R1_DFF3_Q_DYMUX_1411,
      CE => VCC,
      CLK => R1_DFF3_Q_CLKINV_1409,
      SET => GND,
      RST => GND,
      O => R1_DFF3_Q_423
    );
  MAC_HAM11_H1_Mxor_Sout_Result1 : X_LUT4
    generic map(
      INIT => X"6AC0",
      LOC => "SLICE_X4Y5"
    )
    port map (
      ADR0 => R1_DFF0_Q_405,
      ADR1 => R0_DFF1_Q_400,
      ADR2 => R1_DFF1_Q_404,
      ADR3 => R0_DFF2_Q_403,
      O => MAC_S1(1)
    );
  R0_DFF1_Q : X_FF
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => '0'
    )
    port map (
      I => R0_DFF1_Q_DYMUX_1345,
      CE => VCC,
      CLK => R0_DFF1_Q_CLKINV_1343,
      SET => GND,
      RST => GND,
      O => R0_DFF1_Q_400
    );
  Result_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF2_Q_377,
      O => Result_2_O
    );
  Aout_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 605 ps
    )
    port map (
      I => R0_DFF0_Q_1_395,
      O => Aout_0_O
    );
  Result_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF0_Q_409,
      O => Result_0_O
    );
  Result_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF1_Q_408,
      O => Result_1_O
    );
  Result_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF3_Q_379,
      O => Result_3_O
    );
  Result_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF7_Q_384,
      O => Result_7_O
    );
  Result_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF8_Q_385,
      O => Result_8_O
    );
  Result_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF6_Q_383,
      O => Result_6_O
    );
  Result_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF5_Q_382,
      O => Result_5_O
    );
  Result_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF9_Q_386,
      O => Result_9_O
    );
  Result_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 605 ps
    )
    port map (
      I => R2_DFF4_Q_381,
      O => Result_4_O
    );
  Bout_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 605 ps
    )
    port map (
      I => R1_DFF1_Q_1_389,
      O => Bout_1_O
    );
  Bout_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 605 ps
    )
    port map (
      I => R1_DFF0_Q_1_387,
      O => Bout_0_O
    );
  Bout_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 605 ps
    )
    port map (
      I => R1_DFF2_Q_1_391,
      O => Bout_2_O
    );
  Bout_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 605 ps
    )
    port map (
      I => R1_DFF3_Q_1_393,
      O => Bout_3_O
    );
  NlwBlock_DPU_matrix_multiplication_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_DPU_matrix_multiplication_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

