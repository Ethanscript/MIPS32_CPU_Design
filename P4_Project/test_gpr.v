`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:41 11/11/2019
// Design Name:   gpr
// Module Name:   C:/Users/Ethan/P4/test_gpr.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gpr
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
	reg [4:0] read_reg1;
	reg [4:0] read_reg2;
	reg [4:0] write_reg;
	reg [31:0] write_data;
	reg regwrite;
	reg reset;
	reg clk;

	// Outputs
	wire [31:0] read_data1;
	wire [31:0] read_data2;

	// Instantiate the Unit Under Test (UUT)
	grf uut (
		.read_reg1(read_reg1), 
		.read_reg2(read_reg2), 
		.write_reg(write_reg), 
		.write_data(write_data), 
		.regwrite(regwrite), 
		.reset(reset), 
		.clk(clk), 
		.read_data1(read_data1), 
		.read_data2(read_data2)
	);

	initial begin
		// Initialize Inputs
		read_reg1 = 0;
		read_reg2 = 0;
		write_reg = 0;
		write_data = 0;
		regwrite = 0;
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

