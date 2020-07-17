`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:13 11/30/2019
// Design Name:   E_controller
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5_new/test_E_controller.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: E_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_E_controller;

	// Inputs
	reg [31:0] instr;

	// Outputs
	wire [1:0] Tuse_rs;
	wire [1:0] Tuse_rt;
	wire [1:0] Tnew;
	wire [4:0] A3;
	wire alu_src;
	wire [1:0] alu_op;

	// Instantiate the Unit Under Test (UUT)
	E_controller uut (
		.instr(instr), 
		.Tuse_rs(Tuse_rs), 
		.Tuse_rt(Tuse_rt), 
		.Tnew(Tnew), 
		.A3(A3), 
		.alu_src(alu_src), 
		.alu_op(alu_op)
	);

	initial begin
		// Initialize Inputs
		instr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

