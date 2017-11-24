`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:31 11/21/2017 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(
    input [15:0] instr,
    output reg [3:0] alu_op,
    output reg [2:0] addr1,
    output reg [2:0] addr2,
    output reg show,
    output reg write
    );
	 
	 always@(instr) begin
		if(instr[15] == 0) begin
			addr2 = instr[2:0];
			addr1 = instr[5:3];
			
			case(instr[14:6])
				9'b000_000_001: begin //ADD
					write = 1'b1;
					show = 1'b0;
					alu_op = 4'b0000;
				end
				9'b000_010_010: begin //SHOW
					write = 1'b0;
					show = 1'b1;
					alu_op = 4'b1111;
				end
				
			endcase
			
		end
		else begin
			// second type instructions here
		end
	 end

endmodule
