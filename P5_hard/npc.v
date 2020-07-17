`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:41 11/19/2019 
// Design Name: 
// Module Name:    npc 
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
module npc(
    input [2:0] npc_slc,
    input [25:0] imm26,
    input [31:0] offset,//assign with ext32
    input alu_zero,
    input [31:0] npc_in,
	 input [31:0] jr,
    output [31:0] npc_out
    );
	
	wire [31:0]jal,j,beq;//wire [31:0]jal,[31:0]j,[31:0]beq; wrong!!

	assign beq = (alu_zero == 0)? npc_in:   					// have already plus 4
											((offset<<2)+ npc_in );//
	assign jal = {{npc_in[31:28]},{imm26},{2{1'b0}}};
	assign j = {{npc_in[31:28]},{imm26},{2{1'b0}}};
	
	assign npc_out = (npc_slc == 3'b000)? npc_in:
						  (npc_slc == 3'b001)? beq:
						  (npc_slc == 3'b010)? j:
						  (npc_slc == 3'b011)? jal:
													  jr;
									
	
endmodule
