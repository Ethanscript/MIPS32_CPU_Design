`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:15:08 10/17/2019
// Design Name:   alu
// Module Name:   C:/Project/P2/test_alu.v
// Project Name:  P2
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
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp), 
		.C(C)
	);

	initial begin
		
		A = 1;
		B = 2;
		ALUOp = 0;

		#10;
        
		A = 3;
		B = 2;
		ALUOp = 1;

		#10;
		
		A = 4;
		B = 1;
		ALUOp = 2;

		#10;
		
		A = 1;
		B = 2;
		ALUOp = 3;

		#10;
		
		A = 1;
		B = 2;
		ALUOp = 4;

		#10;
		// Add stimulus here

	end
      
endmodule

