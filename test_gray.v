`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:49 10/18/2019
// Design Name:   gray
// Module Name:   C:/Project/P2/test_gray.v
// Project Name:  P2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_gray;

	// Inputs
	reg [0:0] Clk;
	reg [0:0] Reset;
	reg [0:0] En;

	// Outputs
	wire [2:0] Output;
	wire [0:0] Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		En = 0;
		#90;
	end
	
	always #5 Clk=~Clk;
	
	initial begin
		#5;
		En=1;
		#20;
		Reset=1;
		#10;
		Reset=0;
		#120;
   end
endmodule

