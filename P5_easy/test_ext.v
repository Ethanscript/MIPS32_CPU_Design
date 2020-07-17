`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:28:15 11/22/2019
// Design Name:   ext
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_ext.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ext;

	// Inputs
	reg [15:0] imm16;
	reg extop;
	reg luiop;

	// Outputs
	wire [31:0] ext32;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm16(imm16), 
		.extop(extop), 
		.luiop(luiop), 
		.ext32(ext32)
	);

	initial begin
		// Initialize Inputs
		imm16 = 0;
		extop = 0;
		luiop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

