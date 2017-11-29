`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:52 11/22/2017 
// Design Name: 
// Module Name:    Alu 
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
module Alu(
    input [7:0] in1,
    input [7:0] in2,
    input [3:0] op,
	 input clock,
    output reg [7:0] res,
    output CF,
    output ZF,
    output SF,
    output OF
    );
	 reg [8:0] add_res;
	 reg [3:0] pre_flags;
	 reg CF;
	 reg ZF;
	 reg SF;
	 reg OF;
	 
	 /*
	 initial begin
		CF = 1'b0;
		ZF = 1'b0;
		SF = 1'b0;
		OF = 1'b0;
	 end
	 */
	 
	 always @(in1,in2,op) begin
	 pre_flags = {CF,ZF,SF,OF};
		case(op)
			4'b0000: begin // NOP instruction
				CF = 1'b1;
				ZF = 1'b1;
				SF = 1'b1;
				OF = 1'b1;
			end
			
			4'b0001: begin //ADD instruction
				if(!clock) begin
					add_res = in1 + in2;
					res = add_res[7:0];
					CF = add_res[8];
					ZF = ((add_res[7:0] == 0)? 1'b1: 1'b0);
					SF = add_res[7];
					if(in1[7] & in2[7] & (!add_res[7])) 
						OF = 1'b1;
					else if((!in1[7]) & (!in2[7]) & (add_res[7]))
						OF = 1'b1;
					else
						OF = 1'b0;
				end
			end
			
			4'b1111: begin //SHOWR instruction
				if(!clock) begin
					res = in1;
					{CF,ZF,SF,OF} = pre_flags;
				end
			end
		endcase
	 end

endmodule
