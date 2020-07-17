`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:52 11/20/2019 
// Design Name: 
// Module Name:    alu 
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
`define And  4'b0000
`define Or   4'b0001
`define Add  4'b0010
`define Sub  4'b0011
`define Xor  4'b0100
`define Nor  4'b0101
`define Slt  4'b0110
`define Sltu 4'b0111
`define Sll  4'b1000
`define Srl  4'b1001
`define Sra  4'b1010

module alu(
    input [31:0] alu_input1,
    input [31:0] alu_input2,
    input [3:0] aluop,
    output reg [31:0] alu_out,
	 output reg overflow
    );
	
	reg [32:0] temp;
	
	always @(*) begin
		case (aluop) 
			`And : alu_out = alu_input1 & alu_input2 ; 
			`Or  : alu_out = alu_input1 | alu_input2 ;
			`Add : begin
						alu_out = alu_input1 + alu_input2 ;
						temp = {alu_input1[31],alu_input1} + {alu_input2[31],alu_input2} ;
						overflow = (temp[32] == temp[31]) ? 0 : 1;
					end
			`Sub : begin
						alu_out = alu_input1 - alu_input2 ;
						temp = {alu_input1[31],alu_input1} - {alu_input2[31],alu_input2} ;
						overflow = (temp[32] == temp[31]) ? 0 : 1;
					end		
			`Xor : alu_out = alu_input1 ^ alu_input2 ;
			`Nor : alu_out = ~ (alu_input1 | alu_input2 );
			`Slt : begin
						if ($signed(alu_input1) < $signed(alu_input2)) alu_out = {{31{1'b0}},{1'b1}} ;
						else alu_out = {32{1'b0}} ;
					end
			`Sltu: begin
						if ({{1'b0},alu_input1} < {{1'b0},alu_input2}) alu_out = {{31{1'b0}},{1'b1}} ;
						else alu_out = {32{1'b0}} ;
					end
			`Sll : alu_out = alu_input2 << alu_input1[4:0] ;
			`Srl : alu_out = alu_input2 >> alu_input1[4:0] ;
			`Sra : alu_out = $signed(alu_input2) >>> alu_input1[4:0] ;
		endcase	
	end
	
						  
endmodule


