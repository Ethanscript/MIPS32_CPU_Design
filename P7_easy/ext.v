`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:15 11/19/2019 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm16,
    input extop,
    input luiop,
    output [31:0] ext32
    );
	 
	 assign ext32 = (extop==0&&luiop==0) ? ({{16{1'b0}},imm16}):	//{16{0}}(x) 16{0}(x); {16{1'b0}} (right)
						 (extop==1&&luiop==0) ? ({{16{imm16[15]}},imm16}):
													   ({imm16,{16{1'b0}}});
	 

endmodule
