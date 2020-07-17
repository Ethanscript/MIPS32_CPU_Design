`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:30 12/18/2019
// Design Name:   pipe_pc_FD
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_FD.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipe_pc_FD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_FD;

	// Inputs
	reg clk;
	reg reset;
	reg stopen;
	reg [31:0] PC_in;

	// Outputs
	wire [31:0] PC_out;

	// Instantiate the Unit Under Test (UUT)
	pipe_pc_FD uut (
		.clk(clk), 
		.reset(reset), 
		.stopen(stopen), 
		.PC_in(PC_in), 
		.PC_out(PC_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		stopen = 0;
		PC_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

