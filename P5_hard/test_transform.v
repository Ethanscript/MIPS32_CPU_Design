`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:39:48 12/01/2019
// Design Name:   transform
// Module Name:   C:/Users/Ethan/Desktop/test_code/P5_new/test_transform.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: transform
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_transform;

	// Inputs
	reg [31:0] D_instr;
	reg [31:0] E_instr;
	reg [31:0] M_instr;
	reg [1:0] E_Tnew;
	reg [1:0] M_Tnew;
	reg [1:0] W_Tnew;
	reg [31:0] E_WD;
	reg [31:0] M_WD;
	reg [31:0] W_WD;
	reg [31:0] E_A3;
	reg [31:0] M_A3;
	reg [31:0] W_A3;
	reg [31:0] D_RD1;
	reg [31:0] D_RD2;
	reg [31:0] E_in1;
	reg [31:0] E_in2;
	reg [31:0] M_aluout;

	// Outputs
	wire [31:0] GRF_RD1;
	wire [31:0] GRF_RD2;
	wire [31:0] Src1;
	wire [31:0] Src2;
	wire [31:0] DM_A;

	// Instantiate the Unit Under Test (UUT)
	transform uut (
		.D_instr(D_instr), 
		.E_instr(E_instr), 
		.M_instr(M_instr), 
		.E_Tnew(E_Tnew), 
		.M_Tnew(M_Tnew), 
		.W_Tnew(W_Tnew), 
		.E_WD(E_WD), 
		.M_WD(M_WD), 
		.W_WD(W_WD), 
		.E_A3(E_A3), 
		.M_A3(M_A3), 
		.W_A3(W_A3), 
		.D_RD1(D_RD1), 
		.D_RD2(D_RD2), 
		.E_in1(E_in1), 
		.E_in2(E_in2), 
		.M_aluout(M_aluout), 
		.GRF_RD1(GRF_RD1), 
		.GRF_RD2(GRF_RD2), 
		.Src1(Src1), 
		.Src2(Src2), 
		.DM_A(DM_A)
	);

	initial begin
		// Initialize Inputs
		D_instr = 0;
		E_instr = 0;
		M_instr = 0;
		E_Tnew = 0;
		M_Tnew = 0;
		W_Tnew = 0;
		E_WD = 0;
		M_WD = 0;
		W_WD = 0;
		E_A3 = 0;
		M_A3 = 0;
		W_A3 = 0;
		D_RD1 = 0;
		D_RD2 = 0;
		E_in1 = 0;
		E_in2 = 0;
		M_aluout = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

