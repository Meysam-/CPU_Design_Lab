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
	 input [7:0] im8,
	 input [15:0] dip_data,
    input [4:0] op,
	 input clock,
    output reg [7:0] res,
	 output reg jmp,
    output reg CF,
    output reg ZF,
    output reg SF,
    output reg OF
    );
	 reg [8:0] add_res;
	 reg [15:0] temp;
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
			5'b00000: begin // NOP instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
			end
			
			5'b00001: begin //ADD instruction
				jmp = 1'b0;
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
			
			5'b00010: begin //AND instruction
				jmp = 1'b0;
				if(!clock) begin
					res = in1 & in2;
					CF_ = 1'b0;
					OF_ = 1'b0;
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b00011: begin //SUB instruction
				jmp = 1'b0;
				if(!clock) begin
					temp[7:0] = (-1) * in2;
					add_res = in1 + temp[7:0];
					res = add_res[7:0];
					CF_ = add_res[8];
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = add_res[7];
					if(in1[7] & in2[7] & (!res[7])) 
						OF_ = 1'b0;
					else if((!in1[7]) & (!in2[7]) & (res[7]))
						OF_ = 1'b1;
					else
						OF_ = 1'b0;
				end
			end
			
			5'b00100: begin //OR instruction
				jmp = 1'b0;
				if(!clock) begin
					res = in1 | in2;
					CF_ = 1'b0;
					OF_ = 1'b0;
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b00101: begin //XOR instruction
				jmp = 1'b0;
				if(!clock) begin
					res = in1 ^ in2;
					CF_ = 1'b0;
					OF_ = 1'b0;
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b00110: begin //MOV instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
				if(!clock) begin
					res = in2;
				end
			end
			
			5'b00001: begin //ADC (add carry) instruction
				jmp = 1'b0;
				if(!clock) begin
					if(CF) begin // have carry
						add_res = in1 + 1;
						res = add_res[7:0];
						CF_ = add_res[8];
						ZF_ = ((res == 0)? 1'b1: 1'b0);
						SF_ = add_res[7];
						if(in1[7] & in2[7] & (!res[7])) 
							OF_ = 1'b1;
						else if((!in1[7]) & (!in2[7]) & (res[7]))
							OF_ = 1'b1;
						else
							OF_ = 1'b0;
					end
					else begin // no carry
						res = in1;
						CF_ = 1'b0;
						ZF_ = ((res == 0)? 1'b1: 1'b0);
						SF_ = res[7];
						OF_ = 1'b0;
					end
				end
			end
			
			5'b01000: begin //NOT instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
				if(!clock) begin
					res = ~in1;
				end
			end
			
			5'b01001: begin //SAR (shift arithmatic right)
				jmp = 1'b0;
				if(!clock) begin
					temp[7:0] = in1;
					temp[15:8] = {8{in1[7]}};
					temp = temp >> im;
					res = temp[7:0];
					CF_ = in1[im];
					OF_ = 1'b0;
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = res[7];
				end
			end
				
			5'b01010: begin //SLR (shift logical right)
				jmp = 1'b0;
				if(!clock) begin
					res = in1 >> im;
					CF_ = in1[im];
					OF_ = ((in1[7] == 0)? 1'b0 : 1'b1);
					ZF_ = ((res == 0)? 1'b1 : 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b01011: begin //SAL (shift arithmatic left)
				jmp = 1'b0;
				if(!clock) begin
					res = in1 << im;
					CF_ = in1[8 - im];
					OF_ = ((in1[7] == res[7])? 1'b0 : 1'b1);
					ZF_ = ((res == 0)? 1'b1 : 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b01100: begin //SLL (shift logical left)
				jmp = 1'b0;
				if(!clock) begin
					res = in1 << im;
					CF_ = in1[8 - im];
					OF_ = ((in1[7] == res[7])? 1'b0 : 1'b1);
					ZF_ = ((res == 0)? 1'b1 : 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b01101: begin //ROL (rotate left)
				jmp = 1'b0;
				if(!clock) begin
					temp[7:0] = in1;
					temp[15:8] = in1;
					temp = temp << im;
					res = temp[15:8];
					CF_ = in1[8 - im];
					OF_ = ((in1[7] == res[7])? 1'b0 : 1'b1);
					ZF_ = ((res == 0)? 1'b1 : 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b01110: begin //ROR (rotate right)
				jmp = 1'b0;
				if(!clock) begin
					temp[7:0] = in1;
					temp[15:8] = in1;
					temp = temp >> im;
					res = temp[7:0];
					CF_ = in1[im];
					OF_ = ((in1[7] == res[7])? 1'b0 : 1'b1);
					ZF_ = ((res == 0)? 1'b1 : 1'b0);
					SF_ = res[7];
				end
			end
			
			5'b01111: begin // INC
				jmp = 1'b0;
				if(!clock) begin
					add_res = in1 + 1;
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
			
			5'b10000: begin //DEC 
				jmp = 1'b0;
				if(!clock) begin
					add_res = in1 -1;
					res = add_res[7:0];
					CF_ = add_res[8];
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = add_res[7];
					if(in1[7] & in2[7] & (!res[7])) 
						OF_ = 1'b0;
					else if((!in1[7]) & (!in2[7]) & (res[7]))
						OF_ = 1'b1;
					else
						OF_ = 1'b0;
				end
			end
		
			5'b11111: begin //SHOW R instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
				res = in1;
			end
			
			5'b10011: begin //SHOW R R instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
				res = in1; //wrong
			end
			
			5'b10100: begin //Load Dip R instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				res = dip_data[7:0];
			end
			
			5'b10101: begin //Load Dip R R instruction
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
				res =  dip_data[7:0]; //wrong
			end
			
			5'b10110: begin //CMP (Compare) instruction
				jmp = 1'b0;
				if(!clock) begin
					temp[7:0] = (-1) * in2;
					add_res = in1 + temp[7:0];
					res = add_res[7:0];
					CF_ = add_res[8];
					ZF_ = ((res == 0)? 1'b1: 1'b0);
					SF_ = add_res[7];
					if(in1[7] & in2[7] & (!res[7])) 
						OF_ = 1'b0;
					else if((!in1[7]) & (!in2[7]) & (res[7]))
						OF_ = 1'b1;
					else
						OF_ = 1'b0;
				end
			end
			
			5'b11000: begin // JE condition ZF = 1
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				if(!clock) begin
					res = im8;
					if(ZF) 
						jmp = 1'b1;
					else
						jmp = 1'b0;
				end
			end
			
			5'b11001: begin // JB condition CF = 1
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				if(!clock) begin
					res = im8;
					if(CF) 
						jmp = 1'b1;
					else
						jmp = 1'b0;
				end
			end
			
			5'b11010: begin // JA condition ZF = 1 & CF = 1
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				if(!clock) begin
					res = im8;
					if(ZF & CF) 
						jmp = 1'b1;
					else
						jmp = 1'b0;
				end
			end
			
			5'b11011: begin // JL condition SF != OF
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				if(!clock) begin
					res = im8;
					if(SF != OF) 
						jmp = 1'b1;
					else
						jmp = 1'b0;
				end
			end
			
			5'b11100: begin // JG condition SF=OF & ZF=0
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				if(!clock) begin
					res = im8;
					if((SF == OF) & !ZF) 
						jmp = 1'b1;
					else
						jmp = 1'b0;
				end
			end
			
			5'b11101: begin // JMP without condition
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				if(!clock) begin
					jmp = 1'b1;
					res = im8;
				end
			end
			
			5'b11110: begin // LI load imidiate
				{CF_,ZF_,SF_,OF_} = {CF,ZF,SF,OF};
				jmp = 1'b0;
				if(!clock) begin
					res = im8;
				end
			end
			
		endcase
	 end
	 
	 always @(posedge clock) begin
		{CF,ZF,SF,OF} = {CF_,ZF_,SF_,OF_};
	 end

endmodule
