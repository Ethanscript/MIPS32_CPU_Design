`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:06 11/22/2019
// Design Name:   mux_2
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_mux_2.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux_2;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;
	reg sel;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux_2 uut (
		.in1(in1), 
		.in2(in2), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

