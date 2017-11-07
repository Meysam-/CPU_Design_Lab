`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:55 10/04/2017 
// Design Name: 
// Module Name:    Top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module Top(
    input i_CLK,
    output o_PSCLK,
    output o_LEDData,
    output o_LEDLatch,
    output o_DIPLatch,
    input i_DIPData,
    output o_SEGData,
    output o_SEGLatch,
    output o_LCDData,
    output o_LCDLatch,
    output o_Eth_RST,
    input i_Eth_INT,
    output o_Eth_CS,
    output o_Eth_RD,
    output o_Eth_WR,
    output o_USB_SLOE,
    inout io_USB_IFCLK,
    output o_USB_SLRD,
    output o_USB_SLWR,
    inout [7:0] io_Data,
    inout [9:0] io_MuxEthUSB,
    output o_VGA_blue0,
    output o_VGA_blue1,
    output o_VGA_green0,
    output o_VGA_green1,
    output o_VGA_red0,
    output o_VGA_red1,
    output o_VGA_vsync,
    output o_VGA_hsync,
    input i_SW1,
    input i_SW2,
    input i_SW3,
    input i_SW4,
    output o_TXD1,
    input i_RXD1,
    output o_TXD2,
    input i_RXD2,
    output o_MMC_SCK,
    input i_MMC_DO,
    output o_MMC_DI,
    output o_MMC_CS,
    input i_SYS_RESET
    );


//////////////////////////////////////

//assign o_PSCLK = 1'bz;
//assign o_LEDData = 1'bz;
//assign o_LEDLatch = 1'bz;


//assign o_DIPLatch = 1'bz;
//assign o_SEGData = 1'bz;
//assign o_SEGLatc = 1'bz;
assign o_LCDData = 1'bz;
assign o_LCDLatch = 1'bz;

assign o_MMC_SCK	= 1'bz;

assign o_MMC_DI = 1'bz;
assign o_MMC_CS = 1'bz;

assign o_VGA_blue0 = 1'bz;
assign o_VGA_blue1 = 1'bz;
assign o_VGA_green0 = 1'bz;
assign o_VGA_green1 = 1'bz;
assign o_VGA_red0 = 1'bz;
assign o_VGA_red1 = 1'bz;
assign o_VGA_vsync = 1'bz;
assign o_VGA_hsync = 1'bz;

assign o_Eth_RST = 1'bz;

assign o_Eth_CS = 1'bz;
assign o_Eth_RD = 1'bz;
assign o_Eth_WR = 1'bz;
assign o_USB_SLOE = 1'bz;
assign io_USB_IFCLK = 1'bz;
assign o_USB_SLRD = 1'bz;
assign o_USB_SLWR = 1'bz;
assign io_Data = 8'bz;
assign io_MuxEthUSB = 10'bz;

assign o_TXD1 = 1'bz;
assign o_TXD2 = 1'bz;



//assign o_SEGData = 1'bz;
//assign o_SEGLatch = 1'bz;

assign o_LCDData = 1'bz;
assign o_LCDLatch = 1'bz;


/////////////////////////////////////

wire clk_5, clk_20, clk_50, clk_100;
wire clock,reset;
//reg [0:15] led = 16'b0010_1011_1101_0111;
//reg [0:15] led = 16'b0100_0000_0000_0000;
wire [15:0] led ;
wire s3,s4,s5,s6,s7;
reg [15:0] PC;

initial begin
	PC = 16'b0000_0000_0000_0000;
end

always @(negedge clock or negedge reset) begin
	if(!reset)
		PC = 16'b0000_0000_0000_0000;
	else
		PC = PC + 1;
end


ClockGen clock_gen(
    .CLK_IN_50(i_CLK),      // IN
    .CLK_OUT_5(clk_5),     // OUT
    .CLK_OUT_20(clk_20),     // OUT
    .CLK_OUT_50(clk_50),     // OUT
    .CLK_OUT_100(clk_100)	// OUT
	 );
	 
assign o_PSCLK = clk_5;

SevenSegDriver seven_seg(
	.bin(PC),
   .clk(clk_5),
   .seg_data(o_SEGData),
   .seg_latch(o_SEGLatch)
	//.temp(led2)
	);

dipReader dipReader(
	.clk(clk_5),
	.DIP_in(i_DIPData),
	.DIP_data(),
	.DIP_latch(o_DIPLatch),
	.s3(s3),
	.s4(s4),
	.s5(s5),
	.s6(s6),
	.s7(s7)
	);

	 
assign led[3] = s3;
assign led[4] = s4;
assign led[5] = s5;
assign led[6] = s6;
assign led[7] = s7;
assign led[2:0] = 3'b000;
assign led[15:8] = 8'b0000_0000;

LED_driver ledDriver(
	.clk(clk_5),
	.LED_in(led),
	.LED_data(o_LEDData),
	.LED_latch(o_LEDLatch)
	);
	
debouncer db1(
	.clk(clk_5),
	.in(s5),
	.out(clock)
);

debouncer db2(
	.clk(clk_5),
	.in(s7),
	.out(reset)
);



endmodule

