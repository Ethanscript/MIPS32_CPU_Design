`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:45:21 11/20/2019 
// Design Name: 
// Module Name:    hazard 
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
module hazard(
    input [4:0] D_rs,
    input [4:0] D_rt,
    input [4:0] E_rs,
    input [4:0] E_rt,
	 input E_memtoreg, // DM
	 input M_memtoreg, // DM
	 input E_regwrite, // GRF
	 input M_regwrite, // GRF
	 input W_regwrite,
	 input D_jrop,
	 input D_beqop,
	 input M_jalop,//////////////////////////////////////////////////
    input [4:0] E_write_reg, // GRF addr
    input [4:0] M_write_reg, // GRF addr
    input [4:0] W_write_reg, // GRF addr
    output stop,
    output [1:0] forward_AD,
    output [1:0] forward_BD,
    output [1:0] forward_AE,
    output [1:0] forward_BE,
	 output [1:0] forward_MtoD_jal
    );
	 
	 //以addu/jr 思考转发与暂停的关系
	 
	 wire lw,jr,beq;
	 assign lw = ( (E_memtoreg == 1) && ((E_rt==D_rt)||(E_rt==D_rs)) );	//lw作为需求者 , 表格竖着写//判断0
	 assign jr = ( E_regwrite && D_jrop && (E_write_reg == D_rs) ) || ( M_memtoreg && D_jrop && (M_write_reg == D_rs) ); //表格横着写（memtoreg即判断是不是load）
	 assign beq = ( E_regwrite && D_beqop && ((E_write_reg == D_rs) || (E_write_reg == D_rt)) ) ||
					  ( M_memtoreg && D_beqop &&( (M_write_reg == D_rs)||(M_write_reg == D_rt) )) ;
	 assign stop = lw || jr || beq ;

	 assign forward_AD = ( M_regwrite && (M_write_reg == D_rs) && (D_rs != 0) ) ? 2'b01 :	
								( W_regwrite && (W_write_reg == D_rs) && (D_rs != 0) ) ? 2'b10 :	
																										   2'b00 ;

	 assign forward_BD = 
						      ( M_regwrite && (M_write_reg == D_rt) && (D_rt != 0) ) ? 2'b01 :
								( W_regwrite && (W_write_reg == D_rt) && (D_rt != 0) ) ? 2'b10 :
																										   2'b00 ;
																									
	 assign forward_AE = ( M_regwrite && (M_write_reg == E_rs) && (E_rs != 0) ) ? 2'b10 :
								( W_regwrite && (W_write_reg == E_rs) && (E_rs != 0) ) ? 2'b01 :	
																										   2'b00 ;
																									
	 assign forward_BE = ( M_regwrite && (M_write_reg == E_rt) && (E_rt != 0) ) ? 2'b10 :
								( W_regwrite && (W_write_reg == E_rt) && (E_rt != 0) ) ? 2'b01 :
																											2'b00 ;																							
								
	 assign forward_MtoD_jal = ( M_jalop && ( M_regwrite && (M_write_reg == D_rs) && (D_rs != 0) ) ) ? 1 : 0;//////////////////////

endmodule
