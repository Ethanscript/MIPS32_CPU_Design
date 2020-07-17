`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:21 12/18/2019
// Design Name:   E_Exc
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_E_Exc.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: E_Exc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_E_Exc;

	// Inputs
	reg E_whether_ov;
	reg overflow;
	reg [6:2] ExcCode_in;

	// Outputs
	wire [6:2] ExcCode_out;

	// Instantiate the Unit Under Test (UUT)
	E_Exc uut (
		.E_whether_ov(E_whether_ov), 
		.overflow(overflow), 
		.ExcCode_in(ExcCode_in), 
		.ExcCode_out(ExcCode_out)
	);

	initial begin
		// Initialize Inputs
		E_whether_ov = 0;
		overflow = 0;
		ExcCode_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

