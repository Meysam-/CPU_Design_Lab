`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:04 11/21/2017 
// Design Name: 
// Module Name:    reg_bank 
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
module reg_bank(
    input [2:0] addr1,
    input [2:0] addr2,
    input [2:0] addrw,
    input [7:0] din,
    input clk,
    input write,
    output reg [7:0] out1,
    output reg [7:0] out2
    );
	 
	 reg [7:0] R0;
	 reg [7:0] R1;
	 reg [7:0] R2;
	 reg [7:0] R3;
	 reg [7:0] R4;
	 reg [7:0] R5;
	 reg [7:0] R6;
	 reg [7:0] R7;
	 
	 initial begin
		R0 = 8'd0;
		R1 = 8'd0;
		R2 = 8'd0;
		R3 = 8'd0;
		R4 = 8'd0;
		R5 = 8'd0;
		R6 = 8'd0;
		R7 = 8'd0;
	 end
	 
	 
	
	always@(posedge clk) begin
		if(write) begin
			case(addrw)
				3'b000: R0 = din;
				3'b001: R1 = din;
				3'b010: R2 = din;
				3'b011: R3 = din;
				3'b100: R4 = din;
				3'b101: R5 = din;
				3'b110: R6 = din;
				3'b111: R7 = din;
			endcase
		end
	end
	
	always@(addr1) begin
		case(addr1)
				3'b000: out1 = R0;
				3'b001: out1 = R1;
				3'b010: out1 = R2;
				3'b011: out1 = R3;
				3'b100: out1 = R4;
				3'b101: out1 = R5;
				3'b110: out1 = R6;
				3'b111: out1 = R7;
			endcase
	end
	
	always@(addr2) begin
		case(addr2)
				3'b000: out2 = R0;
				3'b001: out2 = R1;
				3'b010: out2 = R2;
				3'b011: out2 = R3;
				3'b100: out2 = R4;
				3'b101: out2 = R5;
				3'b110: out2 = R6;
				3'b111: out2 = R7;
			endcase
	end

endmodule
