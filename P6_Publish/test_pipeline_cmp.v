`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:32:16 12/12/2019
// Design Name:   pipeline_cmp
// Module Name:   C:/Users/Ethan/Desktop/test_code/P6/P6_1/test_pipeline_cmp.v
// Project Name:  P6_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_cmp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pipeline_cmp;

	// Inputs
	reg pipe_cmp_in;
	reg clk;
	reg reset;
	reg en;

	// Outputs
	wire pipe_cmp_out;

	// Instantiate the Unit Under Test (UUT)
	pipeline_cmp uut (
		.pipe_cmp_in(pipe_cmp_in), 
		.clk(clk), 
		.reset(reset), 
		.en(en), 
		.pipe_cmp_out(pipe_cmp_out)
	);

	initial begin
		// Initialize Inputs
		pipe_cmp_in = 0;
		clk = 0;
		reset = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

