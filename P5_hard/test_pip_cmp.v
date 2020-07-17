`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:57:53 12/05/2019
// Design Name:   pip_cmp
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/P5_new/test_pip_cmp.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pip_cmp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pip_cmp;

	// Inputs
	reg pip_cmp_in;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire pip_cmp_out;

	// Instantiate the Unit Under Test (UUT)
	pip_cmp uut (
		.pip_cmp_in(pip_cmp_in), 
		.reset(reset), 
		.clk(clk), 
		.en(en), 
		.pip_cmp_out(pip_cmp_out)
	);

	initial begin
		// Initialize Inputs
		pip_cmp_in = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

