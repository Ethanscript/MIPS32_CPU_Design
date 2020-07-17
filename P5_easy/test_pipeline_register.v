`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:30:15 11/22/2019
// Design Name:   pipeline_register
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_pipeline_register.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pipeline_register;

	// Inputs
	reg [31:0] in;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	pipeline_register uut (
		.in(in), 
		.out(out), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

