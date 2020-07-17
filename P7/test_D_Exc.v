`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:47:06 12/17/2019
// Design Name:   D_Exc
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_D_Exc.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_Exc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_D_Exc;

	// Inputs
	reg Default;
	reg [6:2] ExcCode_in;

	// Outputs
	wire [6:2] ExcCode_out;

	// Instantiate the Unit Under Test (UUT)
	D_Exc uut (
		.Default(Default), 
		.ExcCode_in(ExcCode_in), 
		.ExcCode_out(ExcCode_out)
	);

	initial begin
		// Initialize Inputs
		Default = 0;
		ExcCode_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

