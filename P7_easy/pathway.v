`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:16:19 11/30/2019 
// Design Name: 
// Module Name:    pathway 
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
`define opc  31:26
`define func 5:0
`define rs   25:21
`define rt   20:16
`define rd   15:11
`define imm26 25:0
`define imm16 15:0 
`define shamt 10:6

`define AdEL 4
`define AdEs 5
`define Ri   10
`define Ov   12

`define sw 2'b00
`define sb 2'b01
`define sh 2'b10

`define lw  3'b000
`define lb  3'b001
`define lbu 3'b010
`define lh  3'b011
`define lhu 3'b100

module pathway(
	input clk,
	input reset,
	input [31:0]Pr_RD, 
	input [5:0] HW,	
	
	output [31:0] path_addr,
	output [31:0] path_data,
	output path_we,
	output [31:0] path_pc
    );
	 
	 wire[31:0] F_mux_out, F_pc_out, F_instr, F_pc4, npc_out, D_instr, D_pc4, W_WD, W_pc, D_RD1, D_RD2,
					GRF_RD1, GRF_RD2, D_ext32, D_pc8, E_instr, E_pc8, E_ext32, E_in1, E_in2, F_pc, D_pc, E_pc,
					alu_in1, alu_in2, E_aluout, Src2, E_WD, M_instr, M_aluout, M_pc8, M_dm_in, DM_invalue, 
					M_pc, M_dm_out, M_WD, W_instr, W_aluout, W_dm_out, W_pc8, Src1, hi_out, lo_out, alu_out, dm_out, EPC_out,
					M_Dout,W_Dout, F_instr_in, D_instr_in, E_instr_in;
					
	 wire[4:0] D_A3, W_A3, E_A3, M_A3;
	 
	 wire[3:0] xlu_op, alu_op;
	 
	 wire[2:0] npc_slc, readdm_op;
	 
	 wire[1:0] Tuse_rs, Tuse_rt, E_Tnew, M_Tnew, W_Tnew, writedm_op;
	 wire memwrite;
	 
	 wire[6:2] F_ExcCode, D_ExcCode_in, D_ExcCode_out, E_ExcCode_in, E_ExcCode_out, M_ExcCode_in, M_ExcCode_out;
	 
	 //mips
	 /////////////////////////////////
	 
	 assign path_addr = M_aluout;
	 assign path_data = DM_invalue;
	 assign path_we   = (memwrite == 1 && M_ExcCode_out == 0) ? 1 : 0;   
	 assign path_pc   = (M_pc != 0) ?  M_pc :
							  (E_pc != 0) ?  E_pc :
							  (D_pc != 0) ?  D_pc :
												  F_pc ; 
	 
	 //F
	 /////////////////////////////////

	 
	pc pc (
		.pc_in(F_mux_out), ////////////错！！！！
		.pc_out(F_pc_out), 
		.reset(reset), 
		.clk(clk), 
		.intreq(intreq),
		.eretop(eretop),
	   .epc(EPC_out),
		.stop_en(stop_en)////////////////////////////////
	); 
	
	im im (
		.address(F_pc_out), 
		.instr(F_instr)
	);
	
	mux_2 F_mux(
		.in0(F_pc4), 
		.in1(npc_out), 
		.sel(D_pcsrc), 
		.out(F_mux_out)
	);
	
	F_Exc F_Exc(
	.pc_test(F_pc_out),
	.ExcCode(F_ExcCode)
   );
	
	assign F_pc4 = F_pc_out+4;
	assign F_pc = F_pc_out;
	assign F_instr_in = (F_ExcCode == 5'b0) ?  F_instr : 0 ; 
	assign F_BD = shit_BD;
	
	//F - > D register
	//////////////////////////////////
	pipeline_BD pipe_FD_BD (
		.BD_in(F_BD), 
		.BD_out(D_BD), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop_en)
	);

	pipeline_ExcCode pipe_FD_ExcCode (
		.ExcCode_in(F_ExcCode), 
		.ExcCode_out(D_ExcCode_in), 
		.reset(reset || intreq || eretop), 
		.clk(clk), 
		.en(~stop_en)
	);
	
	pipeline_register pipe_FD_instr (
		.pipe_in(F_instr_in), 
		.pipe_out(D_instr), 
		.reset(reset || intreq || eretop), 
		.clk(clk), 
		.en(~stop_en)
	);
	
	pipeline_register pipe_FD_PC (
		.pipe_in(F_pc), 
		.pipe_out(D_pc), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop_en)
	);
	
	
	//D
	//////////////////////////////////
	 D_Exc D_Exc (
		.Default(Default), 
		.ExcCode_in(D_ExcCode_in), 
		.ExcCode_out(D_ExcCode_out)
	 );
	
	 D_controller D_controller (
		.instr(D_instr), 
		
		.Tuse_rs(Tuse_rs), 
		.Tuse_rt(Tuse_rt), 
		.A3(D_A3), 
		.extop(extop), 
		.luiop(luiop), 
		.beqop(beqop), 
		.npc_slc(npc_slc), 
		.jalop(D_jalop), 
		.jop(jop), 
		.jrop(jrop),
		.jalrop(jalrop),
		.xluop(D_xluop),
		.bneop(bneop),	
		.blezop(blezop),
		.bgtzop(bgtzop),
		.bltzop(bltzop),
		.bgezop(bgezop),
		.Default(Default),
		.BD(shit_BD)
	);
	 
	grf grf (
		.A1(D_instr[`rs]), 
		.A2(D_instr[`rt]), 
		.A3(W_A3),////////////////////// 
		.WD3(W_WD),/////////////////////// 
		.regwrite(W_regwrite), ///////////////////
		.reset(reset), 
		.clk(clk), 
		.pc_new(W_pc), 
		.RD1(D_RD1), 
		.RD2(D_RD2)
	);
	
	cmp cmp (
		.cmp_in1(GRF_RD1), 
		.cmp_in2(GRF_RD2), 
		.beq_npc(beq_npc),
		.bne_npc(bne_npc),
		.blez_npc(blez_npc),
		.bgtz_npc(bgtz_npc),
		.bltz_npc(bltz_npc),
		.bgez_npc(bgez_npc)
	);
	
	npc npc (
		.npc_slc(npc_slc), 
		.imm26(D_instr[25:0]), 
		.offset(D_ext32),
		.beq_npc(beq_npc), 
		.bne_npc(bne_npc),
		.blez_npc(blez_npc),
		.bgtz_npc(bgtz_npc),
		.bltz_npc(bltz_npc),
		.bgez_npc(bgez_npc),
		.npc_in(D_pc4), 
		.jr(GRF_RD1),
		.jalr(GRF_RD1),
		.npc_out(npc_out)
	);
	
	ext ext (
		.imm16(D_instr[`imm16]), 
		.extop(extop), 
		.luiop(luiop), 
		.ext32(D_ext32)
	);
	
	assign D_pcsrc =  (((beqop && beq_npc) || (bneop && bne_npc) || (blezop && blez_npc) || (bgtzop && bgtz_npc) ||
							(bltzop && bltz_npc)|| (bgezop && bgez_npc)|| D_jalop || jop || jrop || jalrop) == 1)	?	1 :
																																					0 ;
	assign D_pc8 = D_pc + 8;
	assign D_pc4 = D_pc + 4;
	
	assign D_instr_in = (D_ExcCode_out == 5'b0) ? D_instr : 0;
	
	
	//D -> E
	/////////////////////////////////////////
	pipeline_BD pipe_DE_BD (
		.BD_in(D_BD), 
		.BD_out(E_BD), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_ExcCode pipe_DE_ExcCode (
		.ExcCode_in(D_ExcCode_out), 
		.ExcCode_out(E_ExcCode_in), 
		.reset(reset||stop_en|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_instr (
		.pipe_in(D_instr_in), 
		.pipe_out(E_instr), 
		.reset(reset||stop_en|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);

	pipeline_register pipe_DE_PC (
		.pipe_in(D_pc), 
		.pipe_out(E_pc), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_ext (
		.pipe_in(D_ext32), 
		.pipe_out(E_ext32), 
		.reset(reset||stop_en|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_WD1 (
		.pipe_in(GRF_RD1), 
		.pipe_out(E_in1), 
		.reset(reset||stop_en|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_WD2 (
		.pipe_in(GRF_RD2), 
		.pipe_out(E_in2), 
		.reset(reset||stop_en|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);

	//E
	////////////////////////////////////////
	wire E_whether_ov;
	assign E_whether_ov = ((E_instr[`opc] == 6'b000000 &&((E_instr[`func] == 6'b100000)||(E_instr[`func] == 6'b100010))) || (E_instr[`opc] == 6'b001000) == 1) ? 1 : 0;
	
	E_Exc E_Exc (
		.E_whether_ov(E_whether_ov), 
		.overflow(overflow), 
		.ExcCode_in(E_ExcCode_in), 
		.ExcCode_out(E_ExcCode_out)
	);
	
	E_controller E_controller (
		.instr(E_instr), 
		.Tnew(E_Tnew), 
		.A3(E_A3), 
		.alu_src(alu_src), 
		.alu_op(alu_op),
		.xlu_op(xlu_op),
		.mfhi_op(mfhi_op),
		.mflo_op(mflo_op),
		.notv_op(notv_op)
	);
	
	alu alu (
		.alu_input1(alu_in1), 
		.alu_input2(alu_in2), 
		.aluop(alu_op), 
		.alu_out(alu_out),
		.overflow(overflow)
	);
	
	xlu xlu (
		.xlu_in1(alu_in1), 
		.xlu_in2(alu_in2), 
		.xlu_op(xlu_op), 
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.busy(busy), 
		.hi_out(hi_out), 
		.lo_out(lo_out),
		.intreq(intreq),
		.eretop(eretop)
	);
	
	mux_2 E_mux(
		.in0(Src2), 
		.in1(E_ext32), 
		.sel(alu_src), 
		.out(alu_in2)
	);
	
	assign alu_in1 = (notv_op == 0) ? Src1 : {{27{1'b0}},E_instr[`shamt]} ;
	assign E_aluout = (mfhi_op == 1) ? hi_out :
							(mflo_op == 1) ? lo_out :
												 alu_out ;
	assign E_pc8 = E_pc + 8;
	assign E_WD = E_pc8; ///  可能会加入控制信号E_jalop
	
	assign E_instr_in = (E_ExcCode_out == 5'b0) ? E_instr : 0; //////////换成在每级开头判断，只改变instr
	
	//E->M
	///////////////////////////////////////
	pipeline_overflow pipe_EM_overflow (
		.overflow_in(overflow), 
		.overflow_out(M_overflow), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_BD pipe_EM_BD (
		.BD_in(E_BD), 
		.BD_out(M_BD), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_ExcCode pipe_EM_ExcCode (
		.ExcCode_in(E_ExcCode_out), 
		.ExcCode_out(M_ExcCode_in), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_instr (
		.pipe_in(E_instr_in), 
		.pipe_out(M_instr), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_aluout (
		.pipe_in(E_aluout), 
		.pipe_out(M_aluout), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_PC (
		.pipe_in(E_pc), 
		.pipe_out(M_pc), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_dm_data ( 
		.pipe_in(Src2), 
		.pipe_out(M_dm_in), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	//M
	///////////////////////////////////////
	wire bop ; //byte
	wire hop ; //half
	wire fop ; //full
	wire loadop;
	wire storeop;
	assign bop = (writedm_op == 2'b01 || readdm_op == 3'b001 || readdm_op == 3'b010 ) ? 1 : 0;
	assign hop = (writedm_op == 2'b10 || readdm_op == 3'b011 || readdm_op == 3'b100 ) ? 1 : 0; 
	assign fop = (writedm_op == 2'b00 || readdm_op == 3'b000) ? 1 : 0;
	assign loadop  = (readdm_op  != 3'b111) ? 1 : 0;
	assign storeop = (writedm_op != 2'b11)  ? 1 : 0;
	
	M_Exc M_Exc (
		.M_ExcCode_in(M_ExcCode_in), 
		.bop(bop), 
		.hop(hop), 
		.fop(fop), 
		.loadop(loadop), 
		.storeop(storeop), 
		.addr(M_aluout), 
		.overflow(M_overflow), 
		.M_ExcCode_out(M_ExcCode_out)
	);

	
	CP0 CP0 (
		.A1(M_instr[`rd]),// 
		.A2(M_instr[`rd]), //
		.Din(DM_invalue), //
		.PC(M_pc[31:2]), //
		.ExcCode(M_ExcCode_out), //
		.HW(HW), //
		.we(mtc0op),//
		.Exlset(intreq), //
		.Exlclr(eretop), //
		.clk(clk), //
		.reset(reset),// 
		.BD(M_BD), //
		.intreq(intreq), //
		.EPC_out(EPC_out), //
		.Dout(M_Dout) //
	);

	
	M_controller M_controller (
		.instr(M_instr), 
		.Tnew(M_Tnew), 
		.A3(M_A3), 
		.memwrite(memwrite),
		.jalop(M_jalop),
		.writedm_op(writedm_op),
		.readdm_op(readdm_op),
		.eretop(eretop),
		.mtc0op(mtc0op)
	);
	
	dm dm (
		.addr(M_aluout), 
		.dm_in(DM_invalue), 
		.reset(reset), 
		.clk(clk), 
		.memwrite(memwrite && (!intreq)), 
		.pc_new(M_pc),
		.writedm_op(writedm_op),
		.dm_out(dm_out)
	);
	
	dmext dmext (
		.dm_out(dm_out), 
		.readdm_op(readdm_op), 
		.addr(M_aluout), 
		.M_dm_out(M_dm_out)
	);
	
	wire [31:0] M_dm_result;
	
	//assign M_dm_result = ((M_aluout >=32'h0000_7f00 && M_aluout <=32'h0000_7f0b) || (M_aluout >=32'h0000_7f10 && M_aluout <=32'h0000_7f1b)) ?  Pr_RD : M_dm_out ;
	assign M_dm_result = M_dm_out ;

	assign M_pc8=M_pc + 8;
	assign M_WD= (M_jalop == 1) ? M_pc8 : 
	             ((M_instr[`opc] == 5'b010000) && (M_instr[`rs] == 5'b00000)) ? M_Dout :
																										 M_aluout;//
	
	//M -> W
	///////////////////////////////////////
	pipeline_Dout pipe_MW_Dout (
		.Dout_in(M_Dout), 
		.Dout_out(W_Dout), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_instr (
		.pipe_in(M_instr), 
		.pipe_out(W_instr), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_aluout (
		.pipe_in(M_aluout), 
		.pipe_out(W_aluout), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_pc (
		.pipe_in(M_pc), 
		.pipe_out(W_pc), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);

	
	pipeline_register pipe_MW_dm_out (
		.pipe_in(M_dm_result), 
		.pipe_out(W_dm_out), 
		.reset(reset|| intreq || eretop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	//W
	//////////////////////////////////////
	W_controller W_controller (
		.instr(W_instr), 
		.Tnew(W_Tnew), 
		.A3(W_A3), 
		.memtoreg(memtoreg), 
		.jalop(W_jalop),
		.regwrite(W_regwrite),
		.mfc0op(mfc0op) 
	);
	
	assign W_WD = (memtoreg == 1) ? W_dm_out :
					  (memtoreg == 0 && W_jalop == 1) ? W_pc8 :
					  (memtoreg == 0 && W_jalop == 0 && mfc0op == 1) ? W_Dout :
																	W_aluout ;
					  			  
	assign W_pc8= W_pc + 8;
	
	//transform
	//////////////////////////////////////
	transform transform (
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
		.M_dm_in(M_dm_in),
		.GRF_RD1(GRF_RD1), 
		.GRF_RD2(GRF_RD2), 
		.Src1(Src1), 
		.Src2(Src2), 
		.DM_invalue(DM_invalue)
	);
	
	//stop
	///////////////////////////////////////
	stop stop(
	.Tuse_rs(Tuse_rs),
	.Tuse_rt(Tuse_rt),
	.E_Tnew(E_Tnew),
	.M_Tnew(M_Tnew),
	.W_Tnew(W_Tnew),
	.E_A3(E_A3),
	.M_A3(M_A3),
	.W_A3(W_A3),
	.D_instr(D_instr),
	.busy(busy),
	.start(start),
	.xluop(D_xluop),
	.stop_en(stop_en)
   );
	
endmodule
