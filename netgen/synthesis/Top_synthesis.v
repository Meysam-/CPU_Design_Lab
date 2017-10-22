////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Top_synthesis.v
// /___/   /\     Timestamp: Tue Oct 10 22:08:35 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Top.ngc Top_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: Top.ngc
// Output file	: E:\SBU\Architec Lab\ArchLab\netgen\synthesis\Top_synthesis.v
// # of Modules	: 1
// Design Name	: Top
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Top (
  i_CLK, i_DIPData, i_Eth_INT, i_SW1, i_SW2, i_SW3, i_SW4, i_RXD1, i_RXD2, i_MMC_DO, i_SYS_RESET, o_PSCLK, o_LEDData, o_LEDLatch, o_DIPLatch, 
o_SEGData, o_SEGLatch, o_LCDData, o_LCDLatch, o_Eth_RST, o_Eth_CS, o_Eth_RD, o_Eth_WR, o_USB_SLOE, io_USB_IFCLK, o_USB_SLRD, o_USB_SLWR, o_VGA_blue0, 
o_VGA_blue1, o_VGA_green0, o_VGA_green1, o_VGA_red0, o_VGA_red1, o_VGA_vsync, o_VGA_hsync, o_TXD1, o_TXD2, o_MMC_SCK, o_MMC_DI, o_MMC_CS, io_Data, 
io_MuxEthUSB
);
  input i_CLK;
  input i_DIPData;
  input i_Eth_INT;
  input i_SW1;
  input i_SW2;
  input i_SW3;
  input i_SW4;
  input i_RXD1;
  input i_RXD2;
  input i_MMC_DO;
  input i_SYS_RESET;
  output o_PSCLK;
  output o_LEDData;
  output o_LEDLatch;
  output o_DIPLatch;
  output o_SEGData;
  output o_SEGLatch;
  output o_LCDData;
  output o_LCDLatch;
  output o_Eth_RST;
  output o_Eth_CS;
  output o_Eth_RD;
  output o_Eth_WR;
  output o_USB_SLOE;
  inout io_USB_IFCLK;
  output o_USB_SLRD;
  output o_USB_SLWR;
  output o_VGA_blue0;
  output o_VGA_blue1;
  output o_VGA_green0;
  output o_VGA_green1;
  output o_VGA_red0;
  output o_VGA_red1;
  output o_VGA_vsync;
  output o_VGA_hsync;
  output o_TXD1;
  output o_TXD2;
  output o_MMC_SCK;
  output o_MMC_DI;
  output o_MMC_CS;
  inout [7 : 0] io_Data;
  inout [9 : 0] io_MuxEthUSB;
  wire o_PSCLK_OBUF_1;
  wire \ledDriver/LED_data_2 ;
  wire \ledDriver/LED_latch_3 ;
  wire N1_inv;
  wire \clock_gen/clkfbout_buf ;
  wire \clock_gen/clkout3 ;
  wire \clock_gen/clkout2 ;
  wire \clock_gen/clkout1 ;
  wire \clock_gen/clkout0 ;
  wire \clock_gen/clkfbout ;
  wire \clock_gen/clkin1 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<6> ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<5>_71 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<5> ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<4>_73 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<4> ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<3>_75 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<3> ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<2>_77 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<2> ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<1>_79 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<1> ;
  wire \ledDriver/cnt[31] ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<0>_82 ;
  wire \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<0>_83 ;
  wire \ledDriver/Result[31] ;
  wire \ledDriver/Result[3] ;
  wire \ledDriver/Result[2] ;
  wire \ledDriver/Result[1] ;
  wire \ledDriver/Result[0] ;
  wire \ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ;
  wire \ledDriver/_n0027 ;
  wire \ledDriver/cnt[31]_INV_2_o ;
  wire \ledDriver/GND_53_o_cnt[31]_LessThan_4_o ;
  wire \ledDriver/cnt[0] ;
  wire \ledDriver/cnt[1] ;
  wire \ledDriver/cnt[2] ;
  wire \ledDriver/cnt[3] ;
  wire \ledDriver/Mcount_cnt_cy<30>_rt_100 ;
  wire \ledDriver/Mcount_cnt_cy<29>_rt_101 ;
  wire \ledDriver/Mcount_cnt_cy<28>_rt_102 ;
  wire \ledDriver/Mcount_cnt_cy<27>_rt_103 ;
  wire \ledDriver/Mcount_cnt_cy<26>_rt_104 ;
  wire \ledDriver/Mcount_cnt_cy<25>_rt_105 ;
  wire \ledDriver/Mcount_cnt_cy<24>_rt_106 ;
  wire \ledDriver/Mcount_cnt_cy<23>_rt_107 ;
  wire \ledDriver/Mcount_cnt_cy<22>_rt_108 ;
  wire \ledDriver/Mcount_cnt_cy<21>_rt_109 ;
  wire \ledDriver/Mcount_cnt_cy<20>_rt_110 ;
  wire \ledDriver/Mcount_cnt_cy<19>_rt_111 ;
  wire \ledDriver/Mcount_cnt_cy<18>_rt_112 ;
  wire \ledDriver/Mcount_cnt_cy<17>_rt_113 ;
  wire \ledDriver/Mcount_cnt_cy<16>_rt_114 ;
  wire \ledDriver/Mcount_cnt_cy<15>_rt_115 ;
  wire \ledDriver/Mcount_cnt_cy<14>_rt_116 ;
  wire \ledDriver/Mcount_cnt_cy<13>_rt_117 ;
  wire \ledDriver/Mcount_cnt_cy<12>_rt_118 ;
  wire \ledDriver/Mcount_cnt_cy<11>_rt_119 ;
  wire \ledDriver/Mcount_cnt_cy<10>_rt_120 ;
  wire \ledDriver/Mcount_cnt_cy<9>_rt_121 ;
  wire \ledDriver/Mcount_cnt_cy<8>_rt_122 ;
  wire \ledDriver/Mcount_cnt_cy<7>_rt_123 ;
  wire \ledDriver/Mcount_cnt_cy<6>_rt_124 ;
  wire \ledDriver/Mcount_cnt_cy<5>_rt_125 ;
  wire \ledDriver/Mcount_cnt_cy<4>_rt_126 ;
  wire \ledDriver/Mcount_cnt_cy<3>_rt_127 ;
  wire \ledDriver/Mcount_cnt_cy<2>_rt_128 ;
  wire \ledDriver/Mcount_cnt_cy<1>_rt_129 ;
  wire \ledDriver/Mcount_cnt_xor<31>_rt_130 ;
  wire \ledDriver/cnt_3_rstpot_131 ;
  wire \ledDriver/cnt_2_rstpot_132 ;
  wire \ledDriver/cnt_1_rstpot_133 ;
  wire \ledDriver/cnt_0_rstpot_134 ;
  wire \ledDriver/LED_data_rstpot_135 ;
  wire N2;
  wire \ledDriver/_n00271_lut_137 ;
  wire \ledDriver/cnt_31_1_138 ;
  wire \ledDriver/cnt_31_2_139 ;
  wire \NLW_clock_gen/clkout4_buf_O_UNCONNECTED ;
  wire \NLW_clock_gen/clkout3_buf_O_UNCONNECTED ;
  wire \NLW_clock_gen/clkout2_buf_O_UNCONNECTED ;
  wire \NLW_clock_gen/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_clock_gen/pll_base_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_clock_gen/pll_base_inst_LOCKED_UNCONNECTED ;
  wire [30 : 0] \ledDriver/Mcount_cnt_cy ;
  wire [0 : 0] \ledDriver/Mcount_cnt_lut ;
  VCC   XST_VCC (
    .P(N1_inv)
  );
  GND   XST_GND (
    .G(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 )
  );
  BUFG   \clock_gen/clkout4_buf  (
    .O(\NLW_clock_gen/clkout4_buf_O_UNCONNECTED ),
    .I(\clock_gen/clkout3 )
  );
  BUFG   \clock_gen/clkout3_buf  (
    .O(\NLW_clock_gen/clkout3_buf_O_UNCONNECTED ),
    .I(\clock_gen/clkout2 )
  );
  BUFG   \clock_gen/clkout2_buf  (
    .O(\NLW_clock_gen/clkout2_buf_O_UNCONNECTED ),
    .I(\clock_gen/clkout1 )
  );
  BUFG   \clock_gen/clkout1_buf  (
    .O(o_PSCLK_OBUF_1),
    .I(\clock_gen/clkout0 )
  );
  BUFG   \clock_gen/clkf_buf  (
    .O(\clock_gen/clkfbout_buf ),
    .I(\clock_gen/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \clock_gen/clkin1_buf  (
    .I(i_CLK),
    .O(\clock_gen/clkin1 )
  );
  XORCY   \ledDriver/Mcount_cnt_xor<31>  (
    .CI(\ledDriver/Mcount_cnt_cy [30]),
    .LI(\ledDriver/Mcount_cnt_xor<31>_rt_130 ),
    .O(\ledDriver/Result[31] )
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<30>  (
    .CI(\ledDriver/Mcount_cnt_cy [29]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<30>_rt_100 ),
    .O(\ledDriver/Mcount_cnt_cy [30])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<29>  (
    .CI(\ledDriver/Mcount_cnt_cy [28]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<29>_rt_101 ),
    .O(\ledDriver/Mcount_cnt_cy [29])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<28>  (
    .CI(\ledDriver/Mcount_cnt_cy [27]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<28>_rt_102 ),
    .O(\ledDriver/Mcount_cnt_cy [28])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<27>  (
    .CI(\ledDriver/Mcount_cnt_cy [26]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<27>_rt_103 ),
    .O(\ledDriver/Mcount_cnt_cy [27])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<26>  (
    .CI(\ledDriver/Mcount_cnt_cy [25]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<26>_rt_104 ),
    .O(\ledDriver/Mcount_cnt_cy [26])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<25>  (
    .CI(\ledDriver/Mcount_cnt_cy [24]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<25>_rt_105 ),
    .O(\ledDriver/Mcount_cnt_cy [25])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<24>  (
    .CI(\ledDriver/Mcount_cnt_cy [23]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<24>_rt_106 ),
    .O(\ledDriver/Mcount_cnt_cy [24])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<23>  (
    .CI(\ledDriver/Mcount_cnt_cy [22]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<23>_rt_107 ),
    .O(\ledDriver/Mcount_cnt_cy [23])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<22>  (
    .CI(\ledDriver/Mcount_cnt_cy [21]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<22>_rt_108 ),
    .O(\ledDriver/Mcount_cnt_cy [22])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<21>  (
    .CI(\ledDriver/Mcount_cnt_cy [20]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<21>_rt_109 ),
    .O(\ledDriver/Mcount_cnt_cy [21])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<20>  (
    .CI(\ledDriver/Mcount_cnt_cy [19]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<20>_rt_110 ),
    .O(\ledDriver/Mcount_cnt_cy [20])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<19>  (
    .CI(\ledDriver/Mcount_cnt_cy [18]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<19>_rt_111 ),
    .O(\ledDriver/Mcount_cnt_cy [19])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<18>  (
    .CI(\ledDriver/Mcount_cnt_cy [17]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<18>_rt_112 ),
    .O(\ledDriver/Mcount_cnt_cy [18])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<17>  (
    .CI(\ledDriver/Mcount_cnt_cy [16]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<17>_rt_113 ),
    .O(\ledDriver/Mcount_cnt_cy [17])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<16>  (
    .CI(\ledDriver/Mcount_cnt_cy [15]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<16>_rt_114 ),
    .O(\ledDriver/Mcount_cnt_cy [16])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<15>  (
    .CI(\ledDriver/Mcount_cnt_cy [14]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<15>_rt_115 ),
    .O(\ledDriver/Mcount_cnt_cy [15])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<14>  (
    .CI(\ledDriver/Mcount_cnt_cy [13]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<14>_rt_116 ),
    .O(\ledDriver/Mcount_cnt_cy [14])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<13>  (
    .CI(\ledDriver/Mcount_cnt_cy [12]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<13>_rt_117 ),
    .O(\ledDriver/Mcount_cnt_cy [13])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<12>  (
    .CI(\ledDriver/Mcount_cnt_cy [11]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<12>_rt_118 ),
    .O(\ledDriver/Mcount_cnt_cy [12])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<11>  (
    .CI(\ledDriver/Mcount_cnt_cy [10]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<11>_rt_119 ),
    .O(\ledDriver/Mcount_cnt_cy [11])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<10>  (
    .CI(\ledDriver/Mcount_cnt_cy [9]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<10>_rt_120 ),
    .O(\ledDriver/Mcount_cnt_cy [10])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<9>  (
    .CI(\ledDriver/Mcount_cnt_cy [8]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<9>_rt_121 ),
    .O(\ledDriver/Mcount_cnt_cy [9])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<8>  (
    .CI(\ledDriver/Mcount_cnt_cy [7]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<8>_rt_122 ),
    .O(\ledDriver/Mcount_cnt_cy [8])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<7>  (
    .CI(\ledDriver/Mcount_cnt_cy [6]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<7>_rt_123 ),
    .O(\ledDriver/Mcount_cnt_cy [7])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<6>  (
    .CI(\ledDriver/Mcount_cnt_cy [5]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<6>_rt_124 ),
    .O(\ledDriver/Mcount_cnt_cy [6])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<5>  (
    .CI(\ledDriver/Mcount_cnt_cy [4]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<5>_rt_125 ),
    .O(\ledDriver/Mcount_cnt_cy [5])
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<4>  (
    .CI(\ledDriver/Mcount_cnt_cy [3]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<4>_rt_126 ),
    .O(\ledDriver/Mcount_cnt_cy [4])
  );
  XORCY   \ledDriver/Mcount_cnt_xor<3>  (
    .CI(\ledDriver/Mcount_cnt_cy [2]),
    .LI(\ledDriver/Mcount_cnt_cy<3>_rt_127 ),
    .O(\ledDriver/Result[3] )
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<3>  (
    .CI(\ledDriver/Mcount_cnt_cy [2]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<3>_rt_127 ),
    .O(\ledDriver/Mcount_cnt_cy [3])
  );
  XORCY   \ledDriver/Mcount_cnt_xor<2>  (
    .CI(\ledDriver/Mcount_cnt_cy [1]),
    .LI(\ledDriver/Mcount_cnt_cy<2>_rt_128 ),
    .O(\ledDriver/Result[2] )
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<2>  (
    .CI(\ledDriver/Mcount_cnt_cy [1]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<2>_rt_128 ),
    .O(\ledDriver/Mcount_cnt_cy [2])
  );
  XORCY   \ledDriver/Mcount_cnt_xor<1>  (
    .CI(\ledDriver/Mcount_cnt_cy [0]),
    .LI(\ledDriver/Mcount_cnt_cy<1>_rt_129 ),
    .O(\ledDriver/Result[1] )
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<1>  (
    .CI(\ledDriver/Mcount_cnt_cy [0]),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcount_cnt_cy<1>_rt_129 ),
    .O(\ledDriver/Mcount_cnt_cy [1])
  );
  XORCY   \ledDriver/Mcount_cnt_xor<0>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .LI(\ledDriver/Mcount_cnt_lut [0]),
    .O(\ledDriver/Result[0] )
  );
  MUXCY   \ledDriver/Mcount_cnt_cy<0>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .DI(N1_inv),
    .S(\ledDriver/Mcount_cnt_lut [0]),
    .O(\ledDriver/Mcount_cnt_cy [0])
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<6>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<5>_71 ),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<6> ),
    .O(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv )
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<5>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<4>_73 ),
    .DI(\ledDriver/cnt_31_1_138 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<5> ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<5>_71 )
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<4>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<3>_75 ),
    .DI(\ledDriver/cnt_31_1_138 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<4> ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<4>_73 )
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<3>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<2>_77 ),
    .DI(\ledDriver/cnt_31_1_138 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<3> ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<3>_75 )
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<2>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<1>_79 ),
    .DI(\ledDriver/cnt_31_1_138 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<2> ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<2>_77 )
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<1>  (
    .CI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<0>_82 ),
    .DI(\ledDriver/cnt_31_1_138 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<1> ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<1>_79 )
  );
  MUXCY   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<0>  (
    .CI(N1_inv),
    .DI(\ledDriver/cnt_31_1_138 ),
    .S(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<0>_83 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<0>_82 )
  );
  LUT5 #(
    .INIT ( 32'h00008000 ))
  \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<0>  (
    .I0(\ledDriver/cnt[0] ),
    .I1(\ledDriver/cnt[3] ),
    .I2(\ledDriver/cnt[2] ),
    .I3(\ledDriver/cnt[1] ),
    .I4(\ledDriver/cnt_31_1_138 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<0>_83 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_31  (
    .C(o_PSCLK_OBUF_1),
    .CE(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o ),
    .D(\ledDriver/Result[31] ),
    .R(\ledDriver/_n0027 ),
    .Q(\ledDriver/cnt[31] )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDriver/LED_latch  (
    .C(o_PSCLK_OBUF_1),
    .CE(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .D(\ledDriver/cnt[31]_INV_2_o ),
    .Q(\ledDriver/LED_latch_3 )
  );
  OBUF   o_PSCLK_OBUF (
    .I(o_PSCLK_OBUF_1),
    .O(o_PSCLK)
  );
  OBUF   o_LEDData_OBUF (
    .I(\ledDriver/LED_data_2 ),
    .O(o_LEDData)
  );
  OBUF   o_LEDLatch_OBUF (
    .I(\ledDriver/LED_latch_3 ),
    .O(o_LEDLatch)
  );
  OBUFT   o_DIPLatch_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_DIPLatch)
  );
  OBUFT   o_SEGData_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_SEGData)
  );
  OBUFT   o_SEGLatch_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_SEGLatch)
  );
  OBUFT   o_LCDData_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_LCDData)
  );
  OBUFT   o_LCDLatch_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_LCDLatch)
  );
  OBUFT   o_Eth_RST_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_Eth_RST)
  );
  OBUFT   o_Eth_CS_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_Eth_CS)
  );
  OBUFT   o_Eth_RD_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_Eth_RD)
  );
  OBUFT   o_Eth_WR_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_Eth_WR)
  );
  OBUFT   o_USB_SLOE_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_USB_SLOE)
  );
  OBUFT   o_USB_SLRD_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_USB_SLRD)
  );
  OBUFT   o_USB_SLWR_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_USB_SLWR)
  );
  OBUFT   o_VGA_blue0_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_blue0)
  );
  OBUFT   o_VGA_blue1_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_blue1)
  );
  OBUFT   o_VGA_green0_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_green0)
  );
  OBUFT   o_VGA_green1_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_green1)
  );
  OBUFT   o_VGA_red0_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_red0)
  );
  OBUFT   o_VGA_red1_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_red1)
  );
  OBUFT   o_VGA_vsync_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_vsync)
  );
  OBUFT   o_VGA_hsync_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_VGA_hsync)
  );
  OBUFT   o_TXD1_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_TXD1)
  );
  OBUFT   o_TXD2_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_TXD2)
  );
  OBUFT   o_MMC_SCK_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_MMC_SCK)
  );
  OBUFT   o_MMC_DI_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_MMC_DI)
  );
  OBUFT   o_MMC_CS_OBUFT (
    .I(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .T(N1_inv),
    .O(o_MMC_CS)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<30>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<30>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<29>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<29>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<28>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<28>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<27>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<27>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<26>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<26>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<25>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<25>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<24>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<24>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<23>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<23>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<22>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<22>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<21>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<21>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<20>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<20>_rt_110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<19>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<19>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<18>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<18>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<17>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<17>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<16>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<16>_rt_114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<15>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<15>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<14>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<14>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<13>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<13>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<12>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<12>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<11>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<11>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<10>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<10>_rt_120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<9>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<9>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<8>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<8>_rt_122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<7>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<7>_rt_123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<6>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<6>_rt_124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<5>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<5>_rt_125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<4>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_cy<4>_rt_126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<3>_rt  (
    .I0(\ledDriver/cnt[3] ),
    .O(\ledDriver/Mcount_cnt_cy<3>_rt_127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<2>_rt  (
    .I0(\ledDriver/cnt[2] ),
    .O(\ledDriver/Mcount_cnt_cy<2>_rt_128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_cy<1>_rt  (
    .I0(\ledDriver/cnt[1] ),
    .O(\ledDriver/Mcount_cnt_cy<1>_rt_129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDriver/Mcount_cnt_xor<31>_rt  (
    .I0(\ledDriver/cnt[31] ),
    .O(\ledDriver/Mcount_cnt_xor<31>_rt_130 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_3  (
    .C(o_PSCLK_OBUF_1),
    .D(\ledDriver/cnt_3_rstpot_131 ),
    .Q(\ledDriver/cnt[3] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_2  (
    .C(o_PSCLK_OBUF_1),
    .D(\ledDriver/cnt_2_rstpot_132 ),
    .Q(\ledDriver/cnt[2] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_1  (
    .C(o_PSCLK_OBUF_1),
    .D(\ledDriver/cnt_1_rstpot_133 ),
    .Q(\ledDriver/cnt[1] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_0  (
    .C(o_PSCLK_OBUF_1),
    .D(\ledDriver/cnt_0_rstpot_134 ),
    .Q(\ledDriver/cnt[0] )
  );
  FD   \ledDriver/LED_data  (
    .C(o_PSCLK_OBUF_1),
    .D(\ledDriver/LED_data_rstpot_135 ),
    .Q(\ledDriver/LED_data_2 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \ledDriver/cnt_3_rstpot_SW0  (
    .I0(\ledDriver/cnt[31] ),
    .I1(\ledDriver/cnt[0] ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h00008080FF00FF00 ))
  \ledDriver/cnt_3_rstpot  (
    .I0(\ledDriver/cnt[1] ),
    .I1(\ledDriver/cnt[2] ),
    .I2(\ledDriver/cnt[3] ),
    .I3(\ledDriver/Result[3] ),
    .I4(N2),
    .I5(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .O(\ledDriver/cnt_3_rstpot_131 )
  );
  LUT6 #(
    .INIT ( 64'h00008080FF00FF00 ))
  \ledDriver/cnt_2_rstpot  (
    .I0(\ledDriver/cnt[1] ),
    .I1(\ledDriver/cnt[2] ),
    .I2(\ledDriver/cnt[3] ),
    .I3(\ledDriver/Result[2] ),
    .I4(N2),
    .I5(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .O(\ledDriver/cnt_2_rstpot_132 )
  );
  LUT6 #(
    .INIT ( 64'h00008080FF00FF00 ))
  \ledDriver/cnt_1_rstpot  (
    .I0(\ledDriver/cnt[1] ),
    .I1(\ledDriver/cnt[2] ),
    .I2(\ledDriver/cnt[3] ),
    .I3(\ledDriver/Result[1] ),
    .I4(N2),
    .I5(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .O(\ledDriver/cnt_1_rstpot_133 )
  );
  LUT6 #(
    .INIT ( 64'h00008080FF00FF00 ))
  \ledDriver/cnt_0_rstpot  (
    .I0(\ledDriver/cnt[1] ),
    .I1(\ledDriver/cnt[2] ),
    .I2(\ledDriver/cnt[3] ),
    .I3(\ledDriver/Result[0] ),
    .I4(N2),
    .I5(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .O(\ledDriver/cnt_0_rstpot_134 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA3330FCCF ))
  \ledDriver/LED_data_rstpot  (
    .I0(\ledDriver/LED_data_2 ),
    .I1(\ledDriver/cnt[0] ),
    .I2(\ledDriver/cnt[1] ),
    .I3(\ledDriver/cnt[2] ),
    .I4(\ledDriver/cnt[3] ),
    .I5(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .O(\ledDriver/LED_data_rstpot_135 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF7FFF ))
  \ledDriver/_n00271_lut  (
    .I0(\ledDriver/cnt[0] ),
    .I1(\ledDriver/cnt[3] ),
    .I2(\ledDriver/cnt[2] ),
    .I3(\ledDriver/cnt[1] ),
    .I4(\ledDriver/cnt[31] ),
    .O(\ledDriver/_n00271_lut_137 )
  );
  MUXCY   \ledDriver/_n00271_cy  (
    .CI(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .DI(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .S(\ledDriver/_n00271_lut_137 ),
    .O(\ledDriver/_n0027 )
  );
  LUT5 #(
    .INIT ( 32'hFF7FFFFF ))
  \ledDriver/cnt[31]_INV_2_o1  (
    .I0(\ledDriver/cnt[1] ),
    .I1(\ledDriver/cnt[2] ),
    .I2(\ledDriver/cnt[3] ),
    .I3(\ledDriver/cnt[31] ),
    .I4(\ledDriver/cnt[0] ),
    .O(\ledDriver/cnt[31]_INV_2_o )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_31_1  (
    .C(o_PSCLK_OBUF_1),
    .CE(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o ),
    .D(\ledDriver/Result[31] ),
    .R(\ledDriver/_n0027 ),
    .Q(\ledDriver/cnt_31_1_138 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ledDriver/cnt_31_2  (
    .C(o_PSCLK_OBUF_1),
    .CE(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o ),
    .D(\ledDriver/Result[31] ),
    .R(\ledDriver/_n0027 ),
    .Q(\ledDriver/cnt_31_2_139 )
  );
  INV   \ledDriver/Mcount_cnt_lut<0>_INV_0  (
    .I(\ledDriver/cnt[0] ),
    .O(\ledDriver/Mcount_cnt_lut [0])
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_cy<6>_inv1_INV_0  (
    .I(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o_inv ),
    .O(\ledDriver/GND_53_o_cnt[31]_LessThan_4_o )
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<6>1_INV_0  (
    .I(\ledDriver/cnt_31_2_139 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<6> )
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<5>1_INV_0  (
    .I(\ledDriver/cnt_31_1_138 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<5> )
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<4>1_INV_0  (
    .I(\ledDriver/cnt_31_1_138 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<4> )
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<3>1_INV_0  (
    .I(\ledDriver/cnt_31_1_138 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<3> )
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<2>1_INV_0  (
    .I(\ledDriver/cnt_31_1_138 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<2> )
  );
  INV   \ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<1>1_INV_0  (
    .I(\ledDriver/cnt_31_1_138 ),
    .O(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lut<1> )
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 8 ),
    .CLKOUT0_DIVIDE ( 80 ),
    .CLKOUT1_DIVIDE ( 20 ),
    .CLKOUT2_DIVIDE ( 8 ),
    .CLKOUT3_DIVIDE ( 4 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 20.000000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.010000 ))
  \clock_gen/pll_base_inst  (
    .CLKIN(\clock_gen/clkin1 ),
    .CLKOUT3(\clock_gen/clkout3 ),
    .CLKFBIN(\clock_gen/clkfbout_buf ),
    .CLKOUT1(\clock_gen/clkout1 ),
    .CLKOUT0(\clock_gen/clkout0 ),
    .CLKFBOUT(\clock_gen/clkfbout ),
    .CLKOUT2(\clock_gen/clkout2 ),
    .RST(\ledDriver/Mcompar_GND_53_o_cnt[31]_LessThan_4_o_lutdi5 ),
    .CLKOUT4(\NLW_clock_gen/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_clock_gen/pll_base_inst_CLKOUT5_UNCONNECTED ),
    .LOCKED(\NLW_clock_gen/pll_base_inst_LOCKED_UNCONNECTED )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

