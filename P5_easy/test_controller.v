`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:45 11/22/2019
// Design Name:   controller
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_controller.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_controller;

	// Inputs
	reg [31:0] instr;

	// Outputs
	wire regdst;
	wire alusrc;
	wire memtoreg;
	wire regwrite;
	wire memwrite;
	wire memread;
	wire extop;
	wire luiop;
	wire [2:0] aluop;
	wire [2:0] npc_slc;
	wire jalop;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.instr(instr), 
		.regdst(regdst), 
		.alusrc(alusrc), 
		.memtoreg(memtoreg), 
		.regwrite(regwrite), 
		.memwrite(memwrite), 
		.memread(memread), 
		.extop(extop), 
		.luiop(luiop), 
		.aluop(aluop), 
		.npc_slc(npc_slc), 
		.jalop(jalop)
	);

	initial begin
		// Initialize Inputs
		instr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

