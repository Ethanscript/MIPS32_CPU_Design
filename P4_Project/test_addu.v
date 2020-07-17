`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:53:39 11/21/2019
// Design Name:   addu_change
// Module Name:   C:/Users/Ethan/Desktop/test_code/P4/P4/test_addu.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: addu_change
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_addu;

	// Inputs
	reg [31:0] change_in1;
	reg [31:0] change_in2;

	// Outputs
	wire [31:0] change_out;

	// Instantiate the Unit Under Test (UUT)
	addu_change uut (
		.change_in1(change_in1), 
		.change_in2(change_in2), 
		.change_out(change_out)
	);

	initial begin
		// Initialize Inputs
		change_in1 = 0;
		change_in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

