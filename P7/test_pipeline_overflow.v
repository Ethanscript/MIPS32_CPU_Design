`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:58:57 12/18/2019
// Design Name:   pipeline_overflow
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_pipeline_overflow.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_overflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pipeline_overflow;

	// Inputs
	reg overflow_in;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire overflow_out;

	// Instantiate the Unit Under Test (UUT)
	pipeline_overflow uut (
		.overflow_in(overflow_in), 
		.overflow_out(overflow_out), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		overflow_in = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

