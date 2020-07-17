`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:08:48 11/11/2019
// Design Name:   controller
// Module Name:   C:/Users/Ethan/P4/test_controller.v
// Project Name:  P4
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
	reg [5:0] opc;
	reg [5:0] func;

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
	wire jrop;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.opc(opc), 
		.func(func), 
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
		.jalop(jalop), 
		.jrop(jrop)
	);

	initial begin
		// Initialize Inputs
		opc = 0;
		func = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

