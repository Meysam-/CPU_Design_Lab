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
    output reg [4:0] alu_op,
    output reg [2:0] addr1,
    output reg [2:0] addr2,
	 output reg [7:0] im8,
    output reg show,
    output reg write
    );
	 
	 always@(instr) begin
		if(instr[15] == 0) begin
			addr2 = instr[2:0];
			addr1 = instr[5:3];
			
			case(instr[14:6])
				9'b000_000_000: begin // Nope
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b00000;
				end
				9'b000_000_001: begin //ADD
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00001;
				end
				9'b000_000_010: begin //AND
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00010;
				end
				9'b000_000_011: begin //SUB
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00011;
				end
				9'b000_000_100: begin //OR
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00100;
				end
				9'b000_000_101: begin //XOR
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00101;
				end
				9'b000_000_110: begin //MOV
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00110;
				end
				9'b000_000_111: begin //ADC (add carry)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b00111;
				end
				9'b000_001_000: begin //NOT
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01000;
				end
				
				9'b000_001_001: begin //SAR (shift arithmatic right)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01001;
				end
				
				9'b000_001_010: begin //SLR (shift logical right)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01010;
				end
				
				9'b000_001_011: begin //SAL (shift arithmatic left)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01011;
				end
				
				9'b000_001_100: begin //SLL (shift logical left)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01100;
				end
				
				9'b000_001_101: begin //ROL (rotate left)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01101;
				end
				
				9'b000_001_110: begin //ROR (rotate right)
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01110;
				end
				
				9'b000_001_111: begin //INC
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b01111;
				end
				
				9'b000_010_000: begin //DEC
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b10000;
				end
				
				
				9'b000_010_010: begin //ShowR
					write = 1'b0;
					show = 1'b1;
					alu_op = 5'b11111;
				end
				
				9'b000_010_011: begin //ShowRR
					write = 1'b0;
					show = 1'b1;
					alu_op = 5'b10011;
				end
				
				9'b000_010_100: begin //Load Dip R
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b10100;
				end
				
				9'b000_010_101: begin //Load Dip R R
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b10101;
				end
				
				9'b000_010_110: begin //CMP (compare registers)
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b10110;
				end

				
			endcase
			
		end
		
		else begin // second type instructions
			im8 = instr[7:0];
			addr1 = instr[10:8];
			case(instr[14:11])
				4'b0000: begin // JE condition ZF = 1
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b11000;
				end
				
				4'b0001: begin // JB condition CF = 1
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b11001;
				end
				
				4'b0010: begin // JA condition ZF = 1 & CF = 1
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b11010;
				end
				
				4'b0011: begin // JL condition SF != OF
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b11011;
				end
				
				4'b0100: begin // JG condition SF=OF & ZF=0
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b11100;
				end
				
				4'b0101: begin // JMP condition SF != OF
					write = 1'b0;
					show = 1'b0;
					alu_op = 5'b11101;
				end
				
				4'b0110: begin // LI load imidiate
					write = 1'b1;
					show = 1'b0;
					alu_op = 5'b11110;
				end
				
			endcase
		end
		
	 end

endmodule
