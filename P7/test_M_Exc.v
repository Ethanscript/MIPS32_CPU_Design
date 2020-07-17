`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:55:36 12/18/2019
// Design Name:   M_Exc
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_M_Exc.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: M_Exc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_M_Exc;

	// Inputs
	reg [6:2] M_ExcCode_in;
	reg bop;
	reg hop;
	reg fop;
	reg loadop;
	reg storeop;
	reg [31:0] addr;
	reg overflow;

	// Outputs
	wire [6:2] M_ExcCode_out;

	// Instantiate the Unit Under Test (UUT)
	M_Exc uut (
		.M_ExcCode_in(M_ExcCode_in), 
		.bop(bop), 
		.hop(hop), 
		.fop(fop), 
		.loadop(loadop), 
		.storeop(storeop), 
		.addr(addr), 
		.overflow(overflow), 
		.M_ExcCode_out(M_ExcCode_out)
	);

	initial begin
		// Initialize Inputs
		M_ExcCode_in = 0;
		bop = 0;
		hop = 0;
		fop = 0;
		loadop = 0;
		storeop = 0;
		addr = 0;
		overflow = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

