`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:41:56 12/01/2019
// Design Name:   mips
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5_new/test_mips.v
// Project Name:  P5_new
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
	
		clk = 0; 
		reset = 1;
		#40 reset = 0;
		#40000 $finish;
		
	end
	
	always begin
		#2;
		clk=~clk;
   end
      
endmodule

