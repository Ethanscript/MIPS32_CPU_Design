`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:43 11/22/2019 
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
//终点判断线

module pathway(
    input clk,
    input reset
    );
	 
	 wire[31:0] F_mux_out, F_pc_out, F_instr, F_pc4, npc_out, D_instr, D_pc4, D_ext32, E_ext32, W_write_data, W_pc, read_data1, read_data2, 
					M_aluout, D_mux_1_out, D_mux_2_out,  D_pc8, E_instr, E_rd1, E_rd2, E_pc8, srcAE, E_mux_2_out, srcBE, E_aluout, E_write_data, 
				   M_instr, M_write_data, M_pc8, M_pc,dm_out,W_instr,W_read_data, W_aluout, W_pc8 ,D_mux_3_out;
					
	 wire[4:0] W_write_reg, D_rs, D_rt, D_rd , E_write_reg, M_write_reg, E_rs, E_rt, E_rd;
	 
	 wire[2:0] D_npc_slc, E_aluop;
	 
	 wire[1:0] forward_AD, forward_BD, forward_AE,forward_BE,W_mux_sel;
	 
	 //F
	pc pc (
		.pc_in(F_mux_out), 
		.pc_out(F_pc_out), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop)
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
	
	pipeline_register pipe_FD_instr (
		.pipe_in(F_instr), 
		.pipe_out(D_instr), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop)
	);
	
	pipeline_register pipe_FD_pc (
		.pipe_in(F_pc4), 
		.pipe_out(D_pc4), 
		.reset(reset), 
		.clk(clk), 
		.en(~stop)
	);
	
	//D
	controller D_controller (
		.instr(D_instr), 
		.regdst(D_regdst), 
		.regwrite(D_regwrite), 
		.extop(D_extop), 
		.luiop(D_luiop),
		.beqop(D_beqop),
		.jop(D_jop),
		.jalop(D_jalop),
		.jrop(D_jrop),
		.npc_slc(D_npc_slc)
		);
	
	npc npc (
		.npc_slc(D_npc_slc), 
		.imm26(D_instr[25:0]), 
		.offset(D_ext32),
		.alu_zero(D_equal), //
		.npc_in(D_pc4), 
		.jr(D_mux_3_out),////////////////////////////////////////////  D_mux_3_out -> changed GPR[rs]
		.npc_out(npc_out)
	);
	
	ext ext (
		.imm16(D_instr[15:0]), 
		.extop(D_extop), 
		.luiop(D_luiop), 
		.ext32(D_ext32)
	);
	
	grf grf (
		.read_reg1(D_instr[25:21]), 
		.read_reg2(D_instr[20:16]), 
		.write_reg(W_write_reg), 
		.write_data(W_write_data), 
		.regwrite(W_regwrite),/////////////////// 
		.reset(reset), 
		.clk(clk), 
		.pc_new(W_pc),
		.read_data1(read_data1), 
		.read_data2(read_data2)
	);
	
	mux_3 D_mux_1 (
		.in0(read_data1), 
		.in1(M_aluout), 
		.in2(W_write_data), 
		.sel(forward_AD), 
		.out(D_mux_1_out)
	);
	
	mux_3 D_mux_2 (
		.in0(read_data2), 
		.in1(M_aluout), 
		.in2(W_write_data), 
		.sel(forward_BD), 
		.out(D_mux_2_out)
	);
	mux_2 D_mux_3(				///// jal 转发
		.in0(D_mux_1_out),
		.in1(M_pc8),
		.sel(forward_MtoD_jal),
		.out(D_mux_3_out)	
	);
	
	cmp_beq cmp_beq (
		.beq_in1(D_mux_3_out), ////D_mux_1_out
		.beq_in2(D_mux_2_out), 
		.beq_zero(D_equal)
	);
	
	assign D_pcsrc =  (D_beqop && D_equal) || D_jalop || D_jop || D_jrop;//修改，直接将npc连到 D_pc_in
	assign D_pc8 = D_pc4 + 4;
	assign D_rs = D_instr[25:21];
	assign D_rt = D_instr[20:16];
	assign D_rd = D_instr[15:11];
	
	//D -> E
	pipeline_register pipe_DE_instr (
		.pipe_in(D_instr), 
		.pipe_out(E_instr), 
		.reset(reset||stop), 
		.clk(clk), 
		.en(1'b1)//////////
	);
	
	pipeline_register pipe_DE_rd1 (
		.pipe_in(D_mux_3_out), 
		.pipe_out(E_rd1), 
		.reset(reset||stop), 
		.clk(clk), 
		.en(1'b1)
	);

	pipeline_register pipe_DE_rd2 (
		.pipe_in(D_mux_2_out), 
		.pipe_out(E_rd2), 
		.reset(reset||stop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_pc (
		.pipe_in(D_pc8), 
		.pipe_out(E_pc8), 
		.reset(reset||stop), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_DE_ext (
		.pipe_in(D_ext32), 
		.pipe_out(E_ext32), 
		.reset(reset||stop), 
		.clk(clk), 
		.en(1'b1)
	);

	//E
	controller E_controller (
		.instr(E_instr), 
		.regdst(E_regdst), 
		.aluop(E_aluop),
		.alusrc(E_alusrc),
		.jalop(E_jalop),
		.memtoreg(E_memtoreg),
		.regwrite(E_regwrite)
		);
	
	mux_3 E_mux_1 (
		.in0(E_rd1), 
		.in1(W_write_data), 
		.in2(M_aluout), 
		.sel(forward_AE), 
		.out(srcAE)
	);
	
	mux_3 E_mux_2 (
		.in0(E_rd2), 
		.in1(W_write_data), 
		.in2(M_aluout), 
		.sel(forward_BE), 
		.out(E_mux_2_out)
	);
	
	mux_2 E_mux_3(
		.in0(E_mux_2_out), 
		.in1(E_ext32), 
		.sel(E_alusrc), ///////////////////
		.out(srcBE)
	);
	
	alu alu (
		.alu_input1(srcAE), 
		.alu_input2(srcBE), 
		.aluop(E_aluop), 
		.alu_out(E_aluout)
	);
	
	assign E_write_data = E_mux_2_out;
	assign E_rs = E_instr[25:21];
	assign E_rt = E_instr[20:16];
	assign E_rd = E_instr[15:11];
	assign E_write_reg = (E_jalop == 0) ? ((E_regdst == 0)? E_rt : E_rd) : 32'h1f;
	
	//E -> M
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
	
	pipeline_register pipe_EM_writedata (
		.pipe_in(E_write_data), 
		.pipe_out(M_write_data), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_EM_write_reg (
		.pipe_in(E_write_reg), 
		.pipe_out(M_write_reg), 
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
	
	//M
	controller M_controller (
		.instr(M_instr), 
		.jalop(M_jalop),///////////////////////////
		.memwrite(M_memwrite),
		.memread(M_memread),
		.memtoreg(M_memtoreg),
		.regwrite(M_regwrite)
		);
	
	dm dm (
		.addr(M_aluout), 
		.dm_in(M_write_data), 
		.reset(reset), 
		.clk(clk), 
		.memwrite(M_memwrite), 
		.memread(M_memread), 
		.pc_new(M_pc),
		.dm_out(dm_out)
	);
	
	assign M_pc=M_pc8 - 8;
	
	//M -> W
	pipeline_register pipe_MW_instr (
		.pipe_in(M_instr), 
		.pipe_out(W_instr), 
		.reset(reset), 
		.clk(clk), 
		.en(1'b1)
	);
	
	pipeline_register pipe_MW_read_data (
		.pipe_in(dm_out), 
		.pipe_out(W_read_data), 
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
	
	pipeline_register pipe_MW_write_reg (
		.pipe_in(M_write_reg), 
		.pipe_out(W_write_reg), 
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
	
	//W
	controller W_controller (
		.instr(W_instr), 
		.memtoreg(W_memtoreg),
		.jalop(W_jalop),
		.regwrite(W_regwrite)
		
		);
		
	assign W_mux_sel = (W_memtoreg == 0 && W_jalop == 0)? 2'b00:
							 (W_memtoreg == 1 && W_jalop == 0)? 2'b01:
																		   2'b11; 
	
	mux_3 W_mux (
		.in0(W_aluout), 
		.in1(W_read_data), 
		.in2(W_pc8), 
		.sel(W_mux_sel), 
		.out(W_write_data)
	);

	assign W_pc= W_pc8 - 8;
	//hazard
	hazard hazard (
		.D_rs(D_rs), 
		.D_rt(D_rt), 
		.E_rs(E_rs), 
		.E_rt(E_rt), 
		.E_memtoreg(E_memtoreg), 
		.M_memtoreg(M_memtoreg), 
		.E_regwrite(E_regwrite), 
		.M_regwrite(M_regwrite), 
		.W_regwrite(W_regwrite), 
		.D_jrop(D_jrop), 
		.D_beqop(D_beqop),
		.M_jalop(M_jalop),//////////////////
		.E_write_reg(E_write_reg), 
		.M_write_reg(M_write_reg), 
		.W_write_reg(W_write_reg), 
		.stop(stop), 
		.forward_AD(forward_AD), 
		.forward_BD(forward_BD), 
		.forward_AE(forward_AE), 
		.forward_BE(forward_BE),
		.forward_MtoD_jal(forward_MtoD_jal)
	);
	
	
	

endmodule
