`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:51 11/11/2019
// Design Name:   im
// Module Name:   C:/Users/Ethan/P4/test_im.v
// Project Name:  P4
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

