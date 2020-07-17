`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:33 11/24/2019
// Design Name:   im
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_im.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: im
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_im;

	// Inputs
	reg [31:0] address;

	// Outputs
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	im uut (
		.address(address), 
		.instr(instr)
	);

	initial begin
		// Initialize Inputs
		address = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

