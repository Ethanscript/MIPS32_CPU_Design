`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:16 11/11/2019
// Design Name:   dm
// Module Name:   C:/Users/Ethan/P4/test_dm.v
// Project Name:  P4
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
	reg [31:0] invalue;
	reg reset;
	reg clk;
	reg memwrite;
	reg memread;

	// Outputs
	wire [31:0] outvalue;

	// Instantiate the Unit Under Test (UUT)
	dm uut (
		.addr(addr), 
		.invalue(invalue), 
		.reset(reset), 
		.clk(clk), 
		.memwrite(memwrite), 
		.memread(memread), 
		.outvalue(outvalue)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		invalue = 0;
		reset = 0;
		clk = 0;
		memwrite = 0;
		memread = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

