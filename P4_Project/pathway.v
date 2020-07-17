`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:58 11/11/2019 
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
module pathway(
	input clk,
	input reset
    );
	 
	wire [31:0]alu_input1,alu_input2,alu_out,invalue,outvalue,ext32,write_data,read_data1,read_data2,instr,offset,
				  pc_in,pc_out,pc_4,pc_old,pc_new,jr,address,addr;//address,addr 位宽
	wire [2:0]aluop,npc_slc;
	wire [4:0]read_reg1,read_reg2,write_reg;
	wire [5:0]opc,func;
	wire [15:0]imm16;
	wire [25:0]imm26;
	
	wire [31:0]jalr;
	
	wire [4:0]rd,rt,rs;
	
	wire [4:0]sra_in1;
	wire [31:0]sra_in2;
	wire [31:0]sra_out;
	
	alu alu (
		.alu_input1(alu_input1), //
		.alu_input2(alu_input2), //
		.aluop(aluop), //
		.alu_out(alu_out), //
		.alu_zero(alu_zero)//
	);
	
	dm dm (
		.addr(addr), //
		.invalue(invalue), //
		.reset(reset), //
		.clk(clk), //
		.pc_new(pc_new),
		.memwrite(memwrite), //
		.memread(memread), //
		.outvalue(outvalue)//
	);
	
	ext ext (
		.imm16(imm16), //
		.extop(extop), //
		.luiop(luiop), //
		.ext32(ext32)//
	);
	
	grf grf (
		.read_reg1(read_reg1), //
		.read_reg2(read_reg2), //
		.write_reg(write_reg), //
		.write_data(write_data), //
		.pc_new(pc_new),
		.regwrite(regwrite), //
		.reset(reset), //
		.clk(clk), //
		.read_data1(read_data1), //
		.read_data2(read_data2)//
	);
	
	im im (
		.address(address), //
		.instr(instr)//
	);
	
	npc npc (
		.jalr(jalr),
		.npc_slc(npc_slc), //
		.imm26(imm26), //
		.offset(offset), //
		.alu_zero(alu_zero), //
		.jr(jr),
		.pc_in(pc_in), //
		.pc_out(pc_out), //
		.pc_4(pc_4)//
	);
	
	pc pc (
		.pc_old(pc_old), //
		.pc_new(pc_new), //
		.reset(reset), //
		.clk(clk)//
	);
	
	controller controller (
		.opc(opc), //
		.func(func), //
		.regdst(regdst), //
		.alusrc(alusrc), //
		.memtoreg(memtoreg), //
		.regwrite(regwrite), //
		.memwrite(memwrite), //
		.memread(memread), //
		.extop(extop), //
		.luiop(luiop), //
		.aluop(aluop), //
		.npc_slc(npc_slc), //
		.jalop(jalop), //
		.jalrop(jalrop),
		.sraop(sraop)
	);

	//alu
	assign alu_input1 = read_data1 ;
	assign alu_input2=(alusrc==0)? read_data2 : ext32;
	assign addr = alu_out;
	
	//jr
	assign jr = read_data1 ;
	//jalr
	assign jalr = read_data1 ;
	//sra_in1(s)
	assign sra_in1 = instr[10:6];
	assign sra_in2 = read_data2;
	//assign sra_out;/////////////////////////////////////////////////////////
	//dm
	assign invalue=read_data2;//   
		
	assign write_data = (jalr==0) ? ((jalop==0)? ((memtoreg==1)? outvalue : alu_out) : pc_4 ) : pc_4; // memtoreg == 1 -> values come from DM ,  means 'lw'
	//ext
	assign imm16 = instr[15:0];
	//npc
	assign offset = ext32;
	assign pc_in = pc_new;
	assign pc_old = pc_out;//错 pc_out=pc_old !!!!!!!!!!
	//im
	assign address = pc_new;
	assign imm26 = instr[25:0];
	//instr
	assign func = instr[5:0];
	assign opc = instr[31:26];
	assign rd = instr[15:11];
	assign rt = instr[20:16];
	assign rs = instr[25:21];
	//grf
	assign read_reg1 = rs;
	assign read_reg2 = rt;
	assign write_reg = (jalr==0) ? ((jalop==0)? ((regdst==0)? rt : rd) : (32'h1f)) : rd;//!!!!!  多重assign  从里向外 -> 从左向右
	
	
endmodule
