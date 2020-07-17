`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:02 11/30/2019
// Design Name:   D_controller
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5_new/test_D_controller.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_D_controller;

	// Inputs
	reg [31:0] instr;

	// Outputs
	wire [1:0] Tuse_rs;
	wire [1:0] Tuse_rt;
	wire [1:0] Tnew;
	wire [4:0] A3;
	wire regwrite;
	wire extop;
	wire luiop;
	wire beqop;
	wire [2:0] npc_slc;
	wire jalop;
	wire jop;
	wire jrop;

	// Instantiate the Unit Under Test (UUT)
	D_controller uut (
		.instr(instr), 
		.Tuse_rs(Tuse_rs), 
		.Tuse_rt(Tuse_rt), 
		.Tnew(Tnew), 
		.A3(A3), 
		.regwrite(regwrite), 
		.extop(extop), 
		.luiop(luiop), 
		.beqop(beqop), 
		.npc_slc(npc_slc), 
		.jalop(jalop), 
		.jop(jop), 
		.jrop(jrop)
	);

	initial begin
		// Initialize Inputs
		instr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

