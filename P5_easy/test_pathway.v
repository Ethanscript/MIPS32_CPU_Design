`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:44 11/24/2019
// Design Name:   pathway
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_pathway.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pathway
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pathway;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	pathway uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

