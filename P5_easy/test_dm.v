`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:23 11/24/2019
// Design Name:   dm
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_dm.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dm;

	// Inputs
	reg [31:0] addr;
	reg [31:0] dm_in;
	reg reset;
	reg clk;
	reg memwrite;
	reg memread;
	reg [31:0] pc_new;

	// Outputs
	wire [31:0] dm_out;

	// Instantiate the Unit Under Test (UUT)
	dm uut (
		.addr(addr), 
		.dm_in(dm_in), 
		.reset(reset), 
		.clk(clk), 
		.memwrite(memwrite), 
		.memread(memread), 
		.pc_new(pc_new), 
		.dm_out(dm_out)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		dm_in = 0;
		reset = 0;
		clk = 0;
		memwrite = 0;
		memread = 0;
		pc_new = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

