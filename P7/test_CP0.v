`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:55 12/17/2019
// Design Name:   CP0
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_CP0.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CP0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CP0;

	// Inputs
	reg [4:0] A1;
	reg [4:0] A2;
	reg [31:0] Din;
	reg [31:2] PC;
	reg [6:2] ExcCode;
	reg [5:0] HW;
	reg we;
	reg Exlset;
	reg Exlclr;
	reg clk;
	reg reset;
	reg BD;

	// Outputs
	wire intreq;
	wire [31:0] EPC_out;
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	CP0 uut (
		.A1(A1), 
		.A2(A2), 
		.Din(Din), 
		.PC(PC), 
		.ExcCode(ExcCode), 
		.HW(HW), 
		.we(we), 
		.Exlset(Exlset), 
		.Exlclr(Exlclr), 
		.clk(clk), 
		.reset(reset), 
		.BD(BD), 
		.intreq(intreq), 
		.EPC_out(EPC_out), 
		.Dout(Dout)
	);

	initial begin
		// Initialize Inputs
		A1 = 0;
		A2 = 0;
		Din = 0;
		PC = 0;
		ExcCode = 0;
		HW = 0;
		we = 0;
		Exlset = 0;
		Exlclr = 0;
		clk = 0;
		reset = 0;
		BD = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

