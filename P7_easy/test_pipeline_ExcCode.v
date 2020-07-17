`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:49 12/17/2019
// Design Name:   pipeline_ExcCode
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_pipeline_ExcCode.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_ExcCode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pipeline_ExcCode;

	// Inputs
	reg [6:2] ExcCode_in;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [6:2] ExcCode_out;

	// Instantiate the Unit Under Test (UUT)
	pipeline_ExcCode uut (
		.ExcCode_in(ExcCode_in), 
		.ExcCode_out(ExcCode_out), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		ExcCode_in = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

