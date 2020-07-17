`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:58 12/01/2019 
// Design Name: 
// Module Name:    stop 
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

module stop(
	input [1:0]Tuse_rs,
	input [1:0]Tuse_rt,
	input [1:0]E_Tnew,
	input [1:0]M_Tnew,
	input [1:0]W_Tnew,
	input [4:0]E_A3,
	input [4:0]M_A3,
	input [4:0]W_A3,
	input [31:0]D_instr,
	input busy,
	input start,
	input xluop,
	
	output stop_en
   );
	
	assign stop_en = ((Tuse_rs < E_Tnew)&&(D_instr[`rs] == E_A3)&&(D_instr[`rs] != 0)) || 
						  ((Tuse_rs < M_Tnew)&&(D_instr[`rs] == M_A3)&&(D_instr[`rs] != 0)) ||
						  ((Tuse_rs < W_Tnew)&&(D_instr[`rs] == W_A3)&&(D_instr[`rs] != 0)) ||
					     ((Tuse_rt < E_Tnew)&&(D_instr[`rt] == E_A3)&&(D_instr[`rt] != 0)) || 
						  ((Tuse_rt < M_Tnew)&&(D_instr[`rt] == M_A3)&&(D_instr[`rt] != 0)) ||
						  ((Tuse_rt < W_Tnew)&&(D_instr[`rt] == W_A3)&&(D_instr[`rt] != 0)) ||
						  ((busy == 1 || start == 1) && (xluop == 1));					/////xlu_op的选择条件是否包括 mfhi\mflo


endmodule
