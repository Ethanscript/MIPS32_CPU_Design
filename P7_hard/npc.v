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
    input beq_npc,
	 input bne_npc,
	 input blez_npc,
	 input bgtz_npc,
	 input bltz_npc,
	 input bgez_npc,
    input [31:0] npc_in,
	 input [31:0] jr,
	 input [31:0] jalr,
    output [31:0] npc_out
    );
	
	wire [31:0]jal,j,beq;//wire [31:0]jal,[31:0]j,[31:0]beq; wrong!!

	assign beq = ( (beq_npc || bne_npc || blez_npc || bgtz_npc || bltz_npc || bgez_npc) == 0 )? npc_in:  // have already plus 4
											((offset<<2)+ npc_in );//
	assign jal = {{npc_in[31:28]},{imm26},{2{1'b0}}};
	assign j = {{npc_in[31:28]},{imm26},{2{1'b0}}};
	
	assign npc_out = (npc_slc == 3'b000)? npc_in:
						  (npc_slc == 3'b001)? beq:
						  (npc_slc == 3'b010)? j:
						  (npc_slc == 3'b011)? jal:
						  (npc_slc == 3'b100)? jr :
													 jalr;
									
	
endmodule
