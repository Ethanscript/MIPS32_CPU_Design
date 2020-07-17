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
module alu(
    input [31:0] alu_input1,
    input [31:0] alu_input2,
    input [2:0] alu_op,
    output reg [31:0] alu_out
    );
	
	always @(*) begin
		case (alu_op)
			3'b000:
				alu_out = alu_input1 & alu_input2;
			3'b001:
				alu_out = alu_input1 | alu_input2;
			3'b010:
				alu_out = alu_input1 + alu_input2;
			3'b011:
				alu_out = alu_input1 - alu_input2;
		endcase																		
	end					  
endmodule


