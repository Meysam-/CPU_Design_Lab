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
	 input [2:0] im,
    input [4:0] op,
	 input clock,
    output reg [7:0] res,
    output reg CF,
    output reg ZF,
    output reg SF,
    output reg OF
    );
	 reg [8:0] add_res;
	 reg [15:0] temp;
	 
	 initial begin
		CF = 1'b0;
		ZF = 1'b0;
		SF = 1'b0;
		OF = 1'b0;
	 end
	 
	 always @(in1,in2,op) begin
		case(op)
			5'b00000: begin // NOP instruction
			end
			
			5'b00001: begin //ADD instruction
				if(!clock) begin
					add_res = in1 + in2;
					res = add_res[7:0];
					CF = add_res[8];
					ZF = ((res == 0)? 1'b1: 1'b0);
					SF = add_res[7];
					if(in1[7] & in2[7] & (!res[7])) 
						OF = 1'b1;
					else if((!in1[7]) & (!in2[7]) & (res[7]))
						OF = 1'b1;
					else
						OF = 1'b0;
				end
			end
			
			5'b00010: begin //AND instruction
				if(!clock) begin
					res = in1 & in2;
					CF = 1'b0;
					OF = 1'b0;
					ZF = ((res == 0)? 1'b1: 1'b0);
					SF = res[7];
				end
			end
			
			5'b00011: begin //SUB instruction
				if(!clock) begin
					temp[7:0] = (-1) * in2;
					add_res = in1 + temp[7:0];
					res = add_res[7:0];
					CF = add_res[8];
					ZF = ((res == 0)? 1'b1: 1'b0);
					SF = add_res[7];
					if(in1[7] & in2[7] & (!res[7])) 
						OF = 1'b1;
					else if((!in1[7]) & (!in2[7]) & (res[7]))
						OF = 1'b1;
					else
						OF = 1'b0;
				end
			end
			
			5'b00100: begin //OR instruction
				if(!clock) begin
					res = in1 | in2;
					CF = 1'b0;
					OF = 1'b0;
					ZF = ((res == 0)? 1'b1: 1'b0);
					SF = res[7];
				end
			end
			
			5'b00101: begin //XOR instruction
				if(!clock) begin
					res = in1 ^ in2;
					CF = 1'b0;
					OF = 1'b0;
					ZF = ((res == 0)? 1'b1: 1'b0);
					SF = res[7];
				end
			end
			
			5'b00110: begin //MOV instruction
				if(!clock) begin
					res = in2;
				end
			end
			
			5'b00001: begin //ADC (add carry) instruction
				if(!clock) begin
					if(CF) begin // have carry
						add_res = in1 + 1;
						res = add_res[7:0];
						CF = add_res[8];
						ZF = ((res == 0)? 1'b1: 1'b0);
						SF = add_res[7];
						if(in1[7] & in2[7] & (!res[7])) 
							OF = 1'b1;
						else if((!in1[7]) & (!in2[7]) & (res[7]))
							OF = 1'b1;
						else
							OF = 1'b0;
					end
					else begin // no carry
						res = in1;
						CF = 1'b0;
						ZF = ((res == 0)? 1'b1: 1'b0);
						SF = res[7];
						OF = 1'b0;
					end
				end
			end
			
			5'b01000: begin //NOT instruction
				res = ~in1;
			end
			
			5'b01001: begin //SAR (shift arithmatic right)
				temp[7:0] = in1;
				temp[15:8] = {8{in1[7]}};
				temp = temp >> im;
				res = temp[7:0];
				CF = in1[im];
				OF = 1'b0;
				ZF = ((res == 0)? 1'b1: 1'b0);
				SF = res[7];
			end
				
			5'b01010: begin //SLR (shift logical right)
				res = in1 >> im;
				CF = in1[im];
				OF = ((in1[7] == 0)? 1'b0 : 1'b1);
				ZF = ((res == 0)? 1'b1 : 1'b0);
				SF = res[7];
			end
			
			5'b01011: begin //SAL (shift arithmatic left)
				res = in1 << im;
				CF = in1[8 - im];
				OF = ((in1[7] == res[7])? 1'b0 : 1'b1);
				ZF = ((res == 0)? 1'b1 : 1'b0);
				SF = res[7];
			end
			
			5'b01100: begin //SLL (shift logical left)
				res = in1 << im;
				CF = in1[8 - im];
				OF = ((in1[7] == res[7])? 1'b0 : 1'b1);
				ZF = ((res == 0)? 1'b1 : 1'b0);
				SF = res[7];
			end
			
			5'b01101: begin //ROL (rotate left)
				temp[7:0] = in1;
				temp[15:8] = in1;
				temp = temp << im;
				res = temp[15:8];
				CF = in1[8 - im];
				OF = ((in1[7] == res[7])? 1'b0 : 1'b1);
				ZF = ((res == 0)? 1'b1 : 1'b0);
				SF = res[7];
			end
			
			5'b01110: begin //ROR (rotate right)
				temp[7:0] = in1;
				temp[15:8] = in1;
				temp = temp >> im;
				res = temp[7:0];
				CF = in1[im];
				OF = ((in1[7] == res[7])? 1'b0 : 1'b1);
				ZF = ((res == 0)? 1'b1 : 1'b0);
				SF = res[7];
			end
		
			5'b11111: begin //SHOWR instruction
				res = in1;
			end
		endcase
	 end

endmodule
