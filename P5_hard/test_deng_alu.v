`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:11:36 12/06/2019
// Design Name:   deng_alu
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/P5_new/test_deng_alu.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deng_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_deng_alu;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Y;

	// Instantiate the Unit Under Test (UUT)
	deng_alu uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 31'd21;
		B = 31'd12;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

