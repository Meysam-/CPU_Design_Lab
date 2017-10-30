`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:50 10/30/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input signal,
	 input reset, //active_low
    output reg [15:0] count
    );
	
	initial count = 16'b0000_0000_0000_0000;
	
	
	always @(negedge signal or negedge reset) begin
		if(!reset)
			count = 16'b0000_0000_0000_0000;
		else
			count = count + 1;
	end

endmodule
