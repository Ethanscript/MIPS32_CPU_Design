`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:56 11/11/2019 
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
    input [31:0] pc_in,
	 input [31:0] jr,
	 input [31:0] jalr,
    output [31:0] pc_out,
	 output [31:0]	pc_4
    );
	
	wire [31:0]jal,j,beq;//wire [31:0]jal,[31:0]j,[31:0]beq; wrong!!
	wire [31:0]pc4;
	assign pc4 = pc_in + 4;
	assign pc_4 = pc_in + 4;
	assign beq = (alu_zero == 0)? pc4:
											((offset<<2)+(pc_in+4));//
	assign jal = {{pc_in[31:28]},{imm26},{2{1'b0}}};
	assign j = {{pc_in[31:28]},{imm26},{2{1'b0}}};
	
	assign pc_out = (npc_slc == 3'b000)? pc4:
						 (npc_slc == 3'b001)? beq:
						 (npc_slc == 3'b010)? j:
						 (npc_slc == 3'b011)? jal:
						 (npc_slc == 3'b100)? jr:
												    jalr;
									
	
endmodule
