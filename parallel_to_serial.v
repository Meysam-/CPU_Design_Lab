`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:41 10/24/2017 
// Design Name: 
// Module Name:    parallel_to_serial 
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
module parallel_to_serial(
    input [16:0] p_in,
    input clk,
    output reg s_out,
    output reg latch
    );
	 
	 
	integer cnt = 0;
	initial 
		latch = 1'b1;
		
	always @(negedge clk) begin
		if(cnt < 16) begin
			s_out = p_in[cnt];
			cnt = cnt + 1;
			if( cnt == 16) begin
				latch = 1'b0;
			end
		end
		else begin
			latch = 1'b1;
			cnt = 0;
		end
	end
	

endmodule
