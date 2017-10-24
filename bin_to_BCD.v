`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:46:05 10/24/2017 
// Design Name: 
// Module Name:    bin_to_BCD 
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
module bin_to_BCD(
    input [15:0] bin,
    output reg [3:0] ones,
    output reg [3:0] tens,
    output reg [3:0] hundreds,
    output reg [3:0] milions
    );
	integer i;
	always @(bin) begin
		ones = 4'b0000;
		tens = 4'b0000;
		hundreds = 4'b0000;
		milions = 4'b0000;
		
		for(i = 15; i >= 0; i = i - 1) begin
			if(milions >= 5) milions = milions + 3;
			if(hundreds >= 5) hundreds = hundreds + 3;
			if(tens >= 5) tens = tens + 3;
			if(ones >= 5) ones = ones + 3;
			
			milions = milions << 1;
			milions[0] = hundreds[3];
			hundreds = hundreds << 1;
			hundreds[0] = tens[3];
			tens = tens << 1;
			tens[0] = ones[3];
			ones = ones << 1;
			ones[0] = bin[i];
			
		end
	end

endmodule
