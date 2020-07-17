`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:28 12/17/2019
// Design Name:   pipeline_BD
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_pipeline_BD.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_BD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pipeline_BD;

	// Inputs
	reg BD_in;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire BD_out;

	// Instantiate the Unit Under Test (UUT)
	pipeline_BD uut (
		.BD_in(BD_in), 
		.BD_out(BD_out), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		BD_in = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

