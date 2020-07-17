`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:33:07 11/30/2019
// Design Name:   grf
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5_new/test_grf.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: grf
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_grf;

	// Inputs
	reg [4:0] A1;
	reg [4:0] A2;
	reg [4:0] A3;
	reg [31:0] WD3;
	reg regwrite;
	reg reset;
	reg clk;
	reg [31:0] pc_new;

	// Outputs
	wire [31:0] RD1;
	wire [31:0] RD2;

	// Instantiate the Unit Under Test (UUT)
	grf uut (
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.WD3(WD3), 
		.regwrite(regwrite), 
		.reset(reset), 
		.clk(clk), 
		.pc_new(pc_new), 
		.RD1(RD1), 
		.RD2(RD2)
	);

	initial begin
		// Initialize Inputs
		A1 = 0;
		A2 = 0;
		A3 = 0;
		WD3 = 0;
		regwrite = 0;
		reset = 0;
		clk = 0;
		pc_new = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

