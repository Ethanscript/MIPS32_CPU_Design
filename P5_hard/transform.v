`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:35 11/30/2019 
// Design Name: 
// Module Name:    transform 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define rs 25:21
`define rt 20:16


module transform(
	input [31:0]  D_instr,
	input [31:0]  E_instr,
	input [31:0]  M_instr,
	input [1:0]   E_Tnew,
	input [1:0]   M_Tnew,
	input [1:0]   W_Tnew,
	input [31:0]  E_WD,
	input [31:0]  M_WD,  //指GRF
	input [31:0]  W_WD,
	input [4:0]  E_A3,
	input [4:0]  M_A3,
	input [4:0]  W_A3,
	//
	input [31:0]  D_RD1,
	input [31:0]  D_RD2,
	input [31:0]  E_in1,
	input [31:0]  E_in2,
	input [31:0]  M_aluout, // 转发起始端
	input [31:0]  M_dm_in, //  转发接受端
	//
	output [31:0] GRF_RD1,	//rs
	output [31:0] GRF_RD2,	//rt
	output [31:0] Src1,
	output [31:0] Src2,
	output [31:0] DM_invalue
    );
	 
	assign GRF_RD1 = (D_instr[`rs] == E_A3 && E_Tnew == 0 && D_instr[`rs] != 0) ? E_WD : 
						  (D_instr[`rs] == M_A3 && M_Tnew == 0 && D_instr[`rs] != 0) ? M_WD : 
						  (D_instr[`rs] == W_A3 && W_Tnew == 0 && D_instr[`rs] != 0) ? W_WD :
																											D_RD1;
																											
   assign GRF_RD2 = (D_instr[`rt] == E_A3 && E_Tnew == 0 && D_instr[`rt] != 0) ? E_WD : 
						  (D_instr[`rt] == M_A3 && M_Tnew == 0 && D_instr[`rt] != 0) ? M_WD : 
						  (D_instr[`rt] == W_A3 && W_Tnew == 0 && D_instr[`rt] != 0) ? W_WD :
																											D_RD2;
																											
	assign Src1    = (E_instr[`rs] == M_A3 && M_Tnew == 0 && E_instr[`rs] != 0) ? M_WD : 
						  (E_instr[`rs] == W_A3 && W_Tnew == 0 && E_instr[`rs] != 0) ? W_WD :
																											E_in1;
																											
	assign Src2    = (E_instr[`rt] == M_A3 && M_Tnew == 0 && E_instr[`rt] != 0) ? M_WD : 
						  (E_instr[`rt] == W_A3 && W_Tnew == 0 && E_instr[`rt] != 0) ? W_WD :
																											E_in2;
																											
	assign DM_invalue    = (M_instr[`rt] == W_A3 && W_Tnew == 0 && M_instr[`rt] != 0) ? W_WD : 
																													M_dm_in;


endmodule
