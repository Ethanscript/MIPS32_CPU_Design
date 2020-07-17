`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:32 11/22/2019
// Design Name:   npc
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_npc.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: npc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_npc;

	// Inputs
	reg [2:0] npc_slc;
	reg [25:0] imm26;
	reg [31:0] offset;
	reg alu_zero;
	reg [31:0] pc_in;
	reg [31:0] jr;

	// Outputs
	wire [31:0] pc_out;
	wire [31:0] pc_4;
	wire [31:0] pc_8;

	// Instantiate the Unit Under Test (UUT)
	npc uut (
		.npc_slc(npc_slc), 
		.imm26(imm26), 
		.offset(offset), 
		.alu_zero(alu_zero), 
		.pc_in(pc_in), 
		.jr(jr), 
		.pc_out(pc_out), 
		.pc_4(pc_4), 
		.pc_8(pc_8)
	);

	initial begin
		// Initialize Inputs
		npc_slc = 0;
		imm26 = 0;
		offset = 0;
		alu_zero = 0;
		pc_in = 0;
		jr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

