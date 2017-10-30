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
	 output reg DIP_latch,
    output [0:15] DIP_data,
	 output s3,
	 output s4,
	 output s5,
	 output s6,
	 output s7
    );
	 
	reg [0:23] tmp_in;
	wire [0:15] cross;

	integer cnt = 0;
	
	assign cross[0:7] = tmp_in[16:23];
	assign cross[8:15] = tmp_in[8:15];
	assign DIP_data = cross;
	assign s3 = tmp_in[4];
	assign s4 = tmp_in[3];
	assign s5 = tmp_in[2];
	assign s6 = tmp_in[1];
	assign s7 = tmp_in[0];

	initial begin
		DIP_latch = 1'b1;
		tmp_in = 24'b0000_0000_0000_0000_0000_0000;
	end
	always @(negedge clk) begin
		if(cnt < 24) begin
			DIP_latch = 1'b1;
			tmp_in[23-cnt] = DIP_in;
			cnt = cnt + 1;
		end
		else if(cnt == 24 ) begin
			DIP_latch = 1'b0;
			cnt = 0;
		end

	end

endmodule
