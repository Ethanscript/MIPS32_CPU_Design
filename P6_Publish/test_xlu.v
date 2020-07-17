`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:58:40 12/09/2019
// Design Name:   xlu
// Module Name:   C:/Users/Ethan/Desktop/test_code/P6/P6_1/test_xlu.v
// Project Name:  P6_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xlu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_xlu;

	// Inputs
	reg [31:0] xlu_in1;
	reg [31:0] xlu_in2;
	reg [2:0] xlu_op;
	reg clk;
	reg reset;

	// Outputs
	wire start;
	wire busy;
	wire [31:0] hi_out;
	wire [31:0] lo_out;

	// Instantiate the Unit Under Test (UUT)
	xlu uut (
		.xlu_in1(xlu_in1), 
		.xlu_in2(xlu_in2), 
		.xlu_op(xlu_op), 
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.busy(busy), 
		.hi_out(hi_out), 
		.lo_out(lo_out)
	);

	initial begin
		// Initialize Inputs
		xlu_in1 = 0;
		xlu_in2 = 0;
		xlu_op = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

