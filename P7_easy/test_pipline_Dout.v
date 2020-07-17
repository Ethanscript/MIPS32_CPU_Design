`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:26:48 12/18/2019
// Design Name:   pipeline_Dout
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_pipline_Dout.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_Dout
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pipline_Dout;

	// Inputs
	reg Dout_in;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire Dout_out;

	// Instantiate the Unit Under Test (UUT)
	pipeline_Dout uut (
		.Dout_in(Dout_in), 
		.Dout_out(Dout_out), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		Dout_in = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

