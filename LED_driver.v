`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:59 10/10/2017 
// Design Name: 
// Module Name:    LED_driver 
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
module LED_driver(
    input [0:15] LED_in,
    input clk,
    output reg LED_data,
    output reg LED_latch
    );

	wire [0:15] cross;	
	assign cross[0:7] = LED_in[8:15];
	assign cross[8:15] = LED_in[0:7];
	integer cnt = 0;
	initial 
		LED_latch = 1'b1;
		
	always @(negedge clk) begin
		if(cnt < 16) begin
			LED_data = cross[cnt];
			cnt = cnt + 1;
			if( cnt == 16) begin
				LED_latch = 1'b0;
			end
		end
		else begin
				LED_latch = 1'b1;
				//cnt = 0;
		end
	end
	
endmodule
