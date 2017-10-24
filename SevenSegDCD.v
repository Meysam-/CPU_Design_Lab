`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:39 10/24/2017 
// Design Name: 
// Module Name:    SevenSegDCD 
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
module SevenSegDCD(
    input [4:0] in_digit,
    input [2:0] exp,
    output reg [8:0] segments,
    output reg [8:0] control
    );
	 
	 always @(in_digit) begin
		 case(in_digit)
			 //                   8'bFCAG_BDEP
			 4'b0000 : segments = 8'b1110_1110; //0
			 4'b0001 : segments = 8'b0100_1000; //1
			 4'b0010 : segments = 8'b0011_1110; //2
			 4'b0011 : segments = 8'b0111_1100; //3
			 4'b0100 : segments = 8'b1101_1000; //4
			 4'b0101 : segments = 8'b1111_0100; //5
			 4'b0110 : segments = 8'b1111_0110; //6
			 4'b0111 : segments = 8'b0110_1000; //7
			 4'b1000 : segments = 8'b1111_1110; //8
			 4'b1001 : segments = 8'b1111_1100; //9
			 default : segments = 8'b1011_0111; //E (error)
		 endcase
	 end
	 
	 always @(exp) begin
		 case(exp)
			//             DC|ones|tens| : |hundreds|milions| | DC
			2'b00 : control = 8'b0100_0000; //ones
			2'b01 : control = 8'b0010_0000; //tens
			2'b10 : control = 8'b0000_1000; //hundreds
			2'b11 : control = 8'b0000_0100; //milions
		 endcase
	 end
endmodule
