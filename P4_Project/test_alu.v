`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:04:45 11/11/2019
// Design Name:   alu
// Module Name:   C:/Users/Ethan/P4/test_alu.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu;

	// Inputs
	reg [31:0] alu_input1;
	reg [31:0] alu_input2;
	reg [2:0] ALUop;

	// Outputs
	wire [31:0] alu_out;
	wire alu_zero;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.alu_input1(alu_input1), 
		.alu_input2(alu_input2), 
		.ALUop(ALUop), 
		.alu_out(alu_out), 
		.alu_zero(alu_zero)
	);

	initial begin
		// Initialize Inputs
		alu_input1 = 0;
		alu_input2 = 0;
		ALUop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

