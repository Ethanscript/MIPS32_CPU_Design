`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:45:53 11/12/2019
// Design Name:   mips
// Module Name:   C:/Users/Ethan/Desktop/P4/test_mips.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0; //Ϊ0
		reset = 0;
		//reset = 1;

		// Wait 100 ns for global reset to finish        
		// Add stimulus here
		//#100;
	end
	
	always begin
		#20;
		clk=~clk;
   end
endmodule

