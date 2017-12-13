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
    output reg CF,
    output reg ZF,
    output reg SF,
    output reg OF
    );
	 reg [8:0] add_res;
	 reg CF_;
	 reg ZF_;
	 reg SF_;
	 reg OF_;
	 
	 initial begin
		CF_ = 1'b0;
		ZF_ = 1'b0;
		SF_ = 1'b0;
		OF_ = 1'b0;
	 end
	 
	 
	 always @(in1,in2,op) begin
		case(op)
			4'b0000: begin // NOP instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
			end
			
			4'b0001: begin //ADD instruction
				if(!clock) begin
					add_res = in1 + in2;
					res = add_res[7:0];
					CF_ = add_res[8];
					ZF_ = ((add_res[7:0] == 0)? 1'b1: 1'b0);
					SF_ = add_res[7];
					if(in1[7] & in2[7] & (!add_res[7])) 
						OF_ = 1'b1;
					else if((!in1[7]) & (!in2[7]) & (add_res[7]))
						OF_ = 1'b1;
					else
						OF_ = 1'b0;
				end
			end
			
			4'b1111: begin //SHOWR instruction
				if(!clock) begin
					{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
					res = in1;
				end
			end
		endcase
	 end
	 
	 always @(posedge clock) begin
		{CF,ZF,SF,OF} = {CF_,ZF_,SF_,OF_};
	 end

endmodule
