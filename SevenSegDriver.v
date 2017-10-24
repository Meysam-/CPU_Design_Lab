`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:42 10/24/2017 
// Design Name: 
// Module Name:    SevenSegDriver 
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
module SevenSegDriver(
    input [16:0] bin,
    input clk,
    output seg_data,
    output seg_latch
    );
	 
	 wire [3:0] ones;
	 wire [3:0] tens;
	 wire [3:0] hudreds;
	 wire [3:0] milions;
	 
	 bin_to_BCD m1(
		.bin(bin),
		.ones(ones),
		.tens(tens),
		.hundreds(hundreds),
		.milions(milions)
	 );


endmodule
