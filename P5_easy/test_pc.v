`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:57 11/22/2019
// Design Name:   pc
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_pc.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pc;

	// Inputs
	reg [31:0] pc_old;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] pc_new;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.pc_old(pc_old), 
		.pc_new(pc_new), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		pc_old = 0;
		reset = 0;
		clk = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

