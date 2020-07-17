`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:33:57 12/10/2019
// Design Name:   dmext
// Module Name:   C:/Users/Ethan/Desktop/test_code/P6/P6_1/test_dmext.v
// Project Name:  P6_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dmext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dmext;

	// Inputs
	reg [31:0] dm_out;
	reg [2:0] readdm_op;
	reg [31:0] addr;

	// Outputs
	wire [31:0] M_dm_out;

	// Instantiate the Unit Under Test (UUT)
	dmext uut (
		.dm_out(dm_out), 
		.readdm_op(readdm_op), 
		.addr(addr), 
		.M_dm_out(M_dm_out)
	);

	initial begin
		// Initialize Inputs
		dm_out = 0;
		readdm_op = 0;
		addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

