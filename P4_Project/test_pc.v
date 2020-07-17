`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:23 11/11/2019
// Design Name:   pc
// Module Name:   C:/Users/Ethan/P4/test_pc.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pc;

	// Inputs
	reg [31:0] pc_old;
	reg reset;
	reg clk;

	// Outputs
	wire [31:0] pc_new;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.pc_old(pc_old), 
		.pc_new(pc_new), 
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		pc_old = 0;
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

