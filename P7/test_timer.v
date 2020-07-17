`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:07 12/16/2019
// Design Name:   timer
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_timer.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_timer;

	// Inputs
	reg clk;
	reg reset;
	reg [31:2] Addr;
	reg WE;
	reg [31:0] Din;

	// Outputs
	wire [31:0] Dout;
	wire IRQ;

	// Instantiate the Unit Under Test (UUT)
	timer uut (
		.clk(clk), 
		.reset(reset), 
		.Addr(Addr), 
		.WE(WE), 
		.Din(Din), 
		.Dout(Dout), 
		.IRQ(IRQ)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Addr = 0;
		WE = 0;
		Din = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

