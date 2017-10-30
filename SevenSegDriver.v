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
    input [15:0] bin,
    input clk,
    output seg_data,
    output seg_latch
	 //output [15:0] temp
    );
	 
	 wire [3:0] ones;
	 wire [3:0] tens;
	 wire [3:0] hundreds;
	 wire [3:0] milions;
	 
	 wire [15:0] out1;
	 wire [15:0] out10;
	 wire [15:0] out100;
	 wire [15:0] out1000;
	 
	 reg [15:0] out;
	 
	 reg [1:0] exp1;
	 reg [1:0] exp10;
	 reg [1:0] exp100;
	 reg [1:0] exp1000;
	 
	 integer cnt = 0;
	 initial begin
		out = 16'b1111_1110_0100_0000;
		exp1 = 2'b00;
		exp10 = 2'b01;
		exp100 = 2'b10;
		exp1000 = 2'b11;
	 end
	 
	 
	 bin_to_BCD m1(
		.bin(bin),
		.ones(ones),
		.tens(tens),
		.hundreds(hundreds),
		.milions(milions)
	 );
	 
	 SevenSegDCD dcd1(
    .in_digit(ones),
    .exp(exp1),
    .segments(out1[15:8]),
    .control(out1[7:0])
    );
	 
	 SevenSegDCD dcd10(
    .in_digit(tens),
    .exp(exp10),
    .segments(out10[15:8]),
    .control(out10[7:0])
    );
	 
	 SevenSegDCD dcd100(
    .in_digit(hundreds),
    .exp(exp100),
    .segments(out100[15:8]),
    .control(out100[7:0])
    );
	 
	 SevenSegDCD dcd1000(
    .in_digit(milions),
    .exp(exp1000),
    .segments(out1000[15:8]),
    .control(out1000[7:0])
    );
	 
	 parallel_to_serial m3(
    .p_in(out),
    .clk(clk),
    .s_out(seg_data),
    .latch(seg_latch)
    );
	 
	//assign temp = {milions , hundreds , tens , ones};
	 
	always @(negedge clk) begin
		if(seg_latch == 0) begin
			case (cnt)
				0: out = out1;
				1: out = out10;
				2: out = out100;
				3: out = out1000;
			endcase
			cnt = cnt + 1;
			if(cnt == 4) cnt = 0;
		end
	end

endmodule
