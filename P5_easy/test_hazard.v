`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:28:49 11/22/2019
// Design Name:   hazard
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5/test_hazard.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hazard
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_hazard;

	// Inputs
	reg [4:0] rs_D;
	reg [4:0] rt_D;
	reg [4:0] rs_E;
	reg [4:0] rt_E;
	reg memtoreg_E;
	reg memtoreg_M;
	reg regwrite_E;
	reg regwrite_M;
	reg regwrite_W;
	reg jrop_D;
	reg beq_D;
	reg [4:0] writereg_E;
	reg [4:0] writereg_M;
	reg [4:0] writereg_W;

	// Outputs
	wire stop;
	wire [1:0] forward_AD;
	wire [1:0] forward_BD;
	wire [1:0] forward_AE;
	wire [1:0] forward_BE;

	// Instantiate the Unit Under Test (UUT)
	hazard uut (
		.rs_D(rs_D), 
		.rt_D(rt_D), 
		.rs_E(rs_E), 
		.rt_E(rt_E), 
		.memtoreg_E(memtoreg_E), 
		.memtoreg_M(memtoreg_M), 
		.regwrite_E(regwrite_E), 
		.regwrite_M(regwrite_M), 
		.regwrite_W(regwrite_W), 
		.jrop_D(jrop_D), 
		.beq_D(beq_D), 
		.writereg_E(writereg_E), 
		.writereg_M(writereg_M), 
		.writereg_W(writereg_W), 
		.stop(stop), 
		.forward_AD(forward_AD), 
		.forward_BD(forward_BD), 
		.forward_AE(forward_AE), 
		.forward_BE(forward_BE)
	);

	initial begin
		// Initialize Inputs
		rs_D = 0;
		rt_D = 0;
		rs_E = 0;
		rt_E = 0;
		memtoreg_E = 0;
		memtoreg_M = 0;
		regwrite_E = 0;
		regwrite_M = 0;
		regwrite_W = 0;
		jrop_D = 0;
		beq_D = 0;
		writereg_E = 0;
		writereg_M = 0;
		writereg_W = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

