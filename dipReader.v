`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:37 10/18/2017 
// Design Name: 
// Module Name:    dipReader 
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
module dipReader(

    input DIP_in,
    input clk,
    output [0:15] DIP_data,
    output reg DIP_latch
    );
	 
	reg [0:15] tmp_in;
	wire [0:15] cross;

	integer cnt = 0;
	
	assign cross[0:7] = tmp_in[8:15];
	assign cross[8:15] = tmp_in[0:7];
	assign DIP_data = cross;
	initial begin
		DIP_latch = 1'b1;
		tmp_in = 16'b0000_0000_0000_0000;
	end
	always @(negedge clk) begin
		if(cnt < 16) begin
			DIP_latch = 1'b1;
			tmp_in[15-cnt] = DIP_in;
			cnt = cnt + 1;
		end
		else if(cnt == 16 ) begin
			DIP_latch = 1'b0;
			cnt = 0;
		end

	end

endmodule
