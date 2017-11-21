`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:28 11/07/2017 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(
    input in,
    input clk,
    output reg out
    );
	 
	 reg lastSignal;
	 
	 initial
		lastSignal = 0;
	 
	 integer cnt = 0;
	 
	 always @(negedge clk) begin
		if(in == lastSignal) begin
			cnt = cnt + 1;
		end
		else
		begin
			cnt = 0;
			lastSignal = in;
		end
		
		if(cnt > 100000) begin
			out = lastSignal;
		end
		
	 end


endmodule
