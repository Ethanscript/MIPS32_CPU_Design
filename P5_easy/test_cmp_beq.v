`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:30 11/22/2019
// Design Name:   cmp_beq
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_cmp_beq.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cmp_beq
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cmp_beq;

	// Inputs
	reg [31:0] beq_in1;
	reg [31:0] beq_in2;

	// Outputs
	wire beq_zero;

	// Instantiate the Unit Under Test (UUT)
	cmp_beq uut (
		.beq_in1(beq_in1), 
		.beq_in2(beq_in2), 
		.beq_zero(beq_zero)
	);

	initial begin
		// Initialize Inputs
		beq_in1 = 0;
		beq_in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

