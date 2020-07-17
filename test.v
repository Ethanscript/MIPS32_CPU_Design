`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:28:35 10/18/2019
// Design Name:   ext
// Module Name:   C:/Project/P2/test.v
// Project Name:  P2
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

module test;

	// Inputs
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin

		imm = 32'h0000fabc;
		EOp = 2'b00;
		#10;
		
		imm = 32'h0000fabc;
		EOp = 2'b01;
		#10;
		
		imm = 32'h0000fabc;
		EOp = 2'b10;
		#10;
		
		imm = 32'h0000fabc;
		EOp = 2'b11;
		#10;
		  
		
	end
      
endmodule

