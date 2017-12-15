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
reg [15:0] led = 16'b0000_0000_0000_0000;

wire s3,s4,s5,s6,s7;
reg [15:0] PC;
wire [15:0] IR;

//ALU outputs
wire [7:0] res;
wire CF,ZF,SF,OF;

//Decoder outputs and ALU inputs
wire [4:0] alu_op;
wire [2:0] addr1;
wire [2:0] addr2;
wire show,write;

//register bank outputs
wire [7:0] r1;
wire [7:0] r2;


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

imem2 i_mem (
  .clka(clk_5), // input clka
  .addra(PC), // input [7 : 0] addra
  .douta(IR) // output [15 : 0] douta
);

assign o_PSCLK = clk_5;

SevenSegDriver seven_seg(
	.bin(PC),
   .clk(clk_5),
   .seg_data(o_SEGData),
   .seg_latch(o_SEGLatch)
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


always begin
	led[15:12] = {CF,ZF,SF,OF};
	led[11:8] = alu_op[3:0];
	//led[7:0] = ((show)? res : 8'b0000_0000);
	led[7:0] = r1;
end

LED_driver ledDriver(
	.clk(clk_5),
	.LED_in(led),
	.LED_data(o_LEDData),
	.LED_latch(o_LEDLatch)
	);
	
debouncer db1(
	.clk(clk_5),
	.in(s3),
	.out(clock)
);

debouncer db2(
	.clk(clk_5),
	.in(s4),
	.out(reset)
);

Decoder dcd(
    .instr(IR),
    .alu_op(alu_op),
    .addr1(addr1),
    .addr2(addr2),
    .show(show),
    .write(write)
    );
	 
reg_bank rb(
	 .addr1(addr1),
    .addr2(addr2),
    .addrw(addr1),
    .din(res),
    .clk(clock),
    .write(write),
    .out1(r1),
    .out2(r2)
);


Alu alu(
   .in1(r1),
   .in2(r2),
   .im(addr2),
   .op(alu_op),
   .clock(clock),
   .res(res),
   .CF(CF),
   .ZF(ZF),
   .SF(SF),
   .OF(OF)
);	 

endmodule

