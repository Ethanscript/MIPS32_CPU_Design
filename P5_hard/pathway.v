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

module pathway(
	input clk,
	input reset
    );
	 
	 wire[31:0] F_mux_out, F_pc_out, F_instr, F_pc4, npc_out, D_instr, D_pc4, W_WD, W_pc, D_RD1, D_RD2,
					GRF_RD1, GRF_RD2, D_ext32, D_pc8, E_instr, E_pc8, E_ext32, E_in1, E_in2, 
					alu_in1, alu_in2, E_aluout, Src2, E_WD, M_instr, M_aluout, M_pc8, M_dm_in, DM_invalue, DM_A,
					M_pc, M_dm_out, M_WD, W_instr, W_aluout, W_dm_out, W_pc8, Src1;
					
	 wire[4:0] D_A3, W_A3, E_A3, M_A3;
	 
	 wire[2:0] npc_slc, alu_op;
	 
	 wire[1:0] Tuse_rs, Tuse_rt, E_Tnew, M_Tnew, W_Tnew;
	 
	 //F
	 /////////////////////////////////
	pc pc (
		.pc_in(F_mux_out), 
		.pc_out(F_pc_out), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop_en)
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
	assign F_pc4 = F_pc_out+4;
	
	//F - > D register
	//////////////////////////////////
	pipeline_register pipe_FD_instr (
		.pipe_in(F_instr), 
		.pipe_out(D_instr), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop_en)
	);
	
	pipeline_register pipe_FD_pc (
		.pipe_in(F_pc4), 
		.pipe_out(D_pc4), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop_en)
	);
	
	//D
	//////////////////////////////////
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
		.jrop(jrop)
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
	
	cmp_beq cmp_beq (
		.beq_in1(GRF_RD1), 
		.beq_in2(GRF_RD2), 
		.beq_zero(D_equal),
		.blezal(D_blezal)
	);
	
	npc npc (
		.npc_slc(npc_slc), 
		.imm26(D_instr[25:0]), 
		.offset(D_ext32),
		.alu_zero(D_equal), 
		.npc_in(D_pc4), 
		.jr(GRF_RD1),
		.npc_out(npc_out)
	);
	
	ext ext (
		.imm16(D_instr[`imm16]), 
		.extop(extop), 
		.luiop(luiop), 
		.ext32(D_ext32)
	);
	
	assign D_pcsrc =  (beqop && D_equal) || D_jalop || jop || jrop;//D_jalop  ->  立刻跳转 （非W_jalop), W_jalop 与 跳转无瓜
	assign D_pc8 = D_pc4 + 4;
	
	//D -> E
	/////////////////////////////////////////
	
	pip_cmp pip_DE_cmp (
		.pip_cmp_in(slt), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1), 
		.pip_cmp_out(E_slt)
	);

	
	pipeline_register pipe_DE_instr (
		.pipe_in(D_instr), 
		.pipe_out(E_instr), 
		.reset(reset||stop_en), 
		.clk(clk), 
		.en(1'b1)//////////
	);
	
	pipeline_register pipe_DE_pc (
		.pipe_in(D_pc8), 
		.pipe_out(E_pc8), 
		.reset(reset||stop_en), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_ext (
		.pipe_in(D_ext32), 
		.pipe_out(E_ext32), 
		.reset(reset||stop_en), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_WD1 (
		.pipe_in(GRF_RD1), //
		.pipe_out(E_in1), 
		.reset(reset||stop_en), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_WD2 (
		.pipe_in(GRF_RD2), 
		.pipe_out(E_in2), 
		.reset(reset||stop_en), 
		.clk(clk), 
		.en(1'b1)
	);

	//E
	////////////////////////////////////////
	E_controller E_controller (
		.instr(E_instr), 
		.Tnew(E_Tnew), 
		.A3(E_A3), 
		.alu_src(alu_src), 
		.alu_op(alu_op),
		.jalop(E_jalop),
	   .change(E_change)
	);
	
	alu alu (
		.alu_input1(alu_in1), 
		.alu_input2(alu_in2), 
		.alu_op(alu_op), 
		.alu_out(E_aluout)
	);
	
	mux_2 E_mux(
		.in0(Src2), 
		.in1(E_ext32), 
		.sel(alu_src), 
		.out(alu_in2)
	);
	
	assign alu_in1 = Src1;
	
	assign E_WD = (E_jalop == 1) ? E_pc8 : ///  可能会加入控制信号E_jalop
					  (E_jalop == 0 && E_slt == 1 && E_change == 1) ? {{31{1'b0}},{1'b1}} :
					  (E_jalop == 0 && E_slt == 0 && E_change == 1) ? {32{1'b0}}:
																					   E_pc8;
	//E->M
	///////////////////////////////////////
	
	pip_cmp pip_EM_cmp (
		.pip_cmp_in(E_slt), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1), 
		.pip_cmp_out(M_slt)
	);
	
	pipeline_register pipe_EM_instr (
		.pipe_in(E_instr), 
		.pipe_out(M_instr), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_aluout (
		.pipe_in(E_aluout), 
		.pipe_out(M_aluout), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_pc (
		.pipe_in(E_pc8), 
		.pipe_out(M_pc8), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_dm_data ( 
		.pipe_in(Src2), 
		.pipe_out(M_dm_in), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	//M
	///////////////////////////////////////
	M_controller M_controller (
		.instr(M_instr), 
		.Tnew(M_Tnew), 
		.A3(M_A3), 
		.memwrite(memwrite),
		.jalop(M_jalop),
	   .change(M_change)
	);
	
	dm dm (
		.addr(M_aluout), 
		.dm_in(DM_invalue), 
		.reset(reset), 
		.clk(clk), 
		.memwrite(memwrite), 
		.pc_new(M_pc),
		.dm_out(M_dm_out)
	);
	
	assign M_pc=M_pc8 - 8;
	assign M_WD= (M_jalop == 1 && M_change == 0) ? M_pc8 : 
					  (M_jalop == 0 && M_slt == 1 && M_change == 1 ) ? {{31{1'b0}},{1'b1}} :
					  (M_jalop == 0 && M_slt == 0 && M_change == 1) ? {32{1'b0}}:
																						M_aluout;//WD 指 写入GRF 而不是 DM
	
	//M -> W
	///////////////////////////////////////
	
	pip_cmp pip_MW_cmp (
		.pip_cmp_in(M_slt), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1), 
		.pip_cmp_out(W_slt)
	);
	
	pipeline_register pipe_MW_instr (
		.pipe_in(M_instr), 
		.pipe_out(W_instr), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_aluout (
		.pipe_in(M_aluout), 
		.pipe_out(W_aluout), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_pc (
		.pipe_in(M_pc8), 
		.pipe_out(W_pc8), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_dm_out (
		.pipe_in(M_dm_out), 
		.pipe_out(W_dm_out), 
		.reset(reset), 
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
	   .change(W_change)
	);
	
	assign W_WD = (memtoreg == 1 && W_change == 0) ? W_dm_out :
	              (memtoreg == 0 && W_jalop == 0 && W_change == 0) ? W_aluout :
					  (memtoreg == 0 && W_jalop == 0 && W_slt == 1 && W_change == 1) ? {{31{1'b0}},{1'b1}} :
					  (memtoreg == 0 && W_jalop == 0 && W_slt == 0 && W_change == 1) ? {32{1'b0}}:
																						W_pc8;
											  
	assign W_pc= W_pc8 - 8;
	
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
	.stop_en(stop_en)
   );
	
endmodule
