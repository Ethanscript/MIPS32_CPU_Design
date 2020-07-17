`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:16 11/30/2019 
// Design Name: 
// Module Name:    D_controller 
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

module D_controller(

    input [31:0]instr,
	 
	 output reg [1:0]Tuse_rs,
	 output reg [1:0]Tuse_rt,
	 output reg [4:0]A3,

    output reg extop,
    output reg luiop,
	 output reg beqop,
	 output reg bneop,
	 output reg blezop,
	 output reg bgtzop,
	 output reg bltzop,
	 output reg bgezop,
    output reg [2:0] npc_slc,
    output reg jalop,
	 output reg jop,
	 output reg jrop,
	 output reg jalrop,
	 output reg xluop
    );
	 
	 parameter addu = 6'b100001,
				  subu = 6'b100011,
				  ori  = 6'b001101,
				  lw   = 6'b100011,
				  sw   = 6'b101011,
				  beq  = 6'b000100,
				  lui  = 6'b001111,
				  jal  = 6'b000011,
				  jr   = 6'b001000,
				  j    = 6'b000010,
				  r    = 6'b000000,
				  mult = 6'b011000,
				  multu= 6'b011001,
				  div  = 6'b011010,
				  divu = 6'b011011,
				  mfhi = 6'b010000,
				  mflo = 6'b010010,
				  mthi = 6'b010001,
				  mtlo = 6'b010011,
				  
				  add  = 6'b100000,
				  and1 = 6'b100100, 
				  nor1 = 6'b100111,
				  or1  = 6'b100101,
				  sub  = 6'b100010,
				  xor1 = 6'b100110,
				  
				  addi = 6'b001000,
				  addiu= 6'b001001,
				  andi = 6'b001100,
				  xori = 6'b001110,
				  
				  sll  = 6'b000000,
				  sllv = 6'b000100,
				  sra  = 6'b000011,
				  srav = 6'b000111,
				  srl  = 6'b000010,
				  srlv = 6'b000110,
				  
				  slt  = 6'b101010,
				  sltu = 6'b101011,
				  slti = 6'b001010,
				  sltiu= 6'b001011,
				  
				  sh   = 6'b101001,
				  sb   = 6'b101000,
				  
				  lb   = 6'b100000,
				  lbu  = 6'b100100,
				  lh   = 6'b100001,
				  lhu  = 6'b100101,
				  
				  bne  = 6'b000101,
				  blez = 6'b000110,
				  bgtz = 6'b000111,
				  bltz_bgez = 6'b000001,
				  bltz = 5'b00000,
				  bgez = 5'b00001,
				  
				  jalr = 6'b001001,
				  
				  m	 = 6'b011100,
				  madd = 6'b000000,
				  maddu= 6'b000001,
				  msub = 6'b000100,
				  msubu= 6'b000101;
	
	 always @(*) begin
	
	 case (instr[`opc]) 
		r : begin
			case (instr[`func]) 
			
				jalr: begin
					 Tuse_rs = 0;
					 Tuse_rt = 3;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b101;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 1;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
					 
				end
				
				slt: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				sltu: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end


			
				sll: begin
					 Tuse_rs = 3;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				sllv: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				sra: begin
					 Tuse_rs = 3;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				srav: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				srl: begin
					 Tuse_rs = 3;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				srlv: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
			
				add: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				and1: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				nor1: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				or1 : begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				sub : begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				xor1: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
			
				addu: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				subu: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= instr[`rd];

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				mult: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				multu: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				div: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				divu: begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				mthi: begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				mtlo: begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				mfhi: begin
					 Tuse_rs = 3;
					 Tuse_rt = 3;
					 A3		= instr[`rd];

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				mflo: begin
					 Tuse_rs = 3;
					 Tuse_rt = 3;
					 A3		= instr[`rd];

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				jr		: begin
					  Tuse_rs = 0;
					  Tuse_rt = 3;
					  A3		= 5'b00000;

					  extop	= 0;
					  luiop	= 0;
					  beqop	= 0;
					  npc_slc = 3'b100;
					  jalop	= 0;
					  jop		= 0;
					  jrop		= 1;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				 end
				
				
				default: begin	////////////////////
					  Tuse_rs = 3;
					  Tuse_rt = 3;
					  A3		= 5'b00000;

					  extop	= 0;
					  luiop	= 0;
					  beqop	= 0;
					  npc_slc = 3'b000;
					  jalop	= 0;
					  jop		= 0;
					  jrop		= 0;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
					end
			endcase
			
			end
			
		m    : begin
			case(instr[`func])
			
				madd : begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				maddu : begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				msub : begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
				msubu : begin
					 Tuse_rs = 1;
					 Tuse_rt = 1;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 1;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
		
			endcase
				end
			
		slti : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		sltiu : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
			
		addi : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		addiu : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		andi : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		xori : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		ori : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		lw  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		lb  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		lbu  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		lh  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		lhu  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		sw  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 2;
					 A3		= 5'b00000;

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		sb  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 2;
					 A3		= 5'b00000;

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		sh  : begin
					 Tuse_rs = 1;
					 Tuse_rt = 2;
					 A3		= 5'b00000;

					 extop	= 1;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end
				
		lui  : begin
					 Tuse_rs = 3;
					 Tuse_rt = 3;
					 A3		= instr[`rt];

					 extop	= 0;
					 luiop	= 1;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				 end
		
		jal	: begin
					  Tuse_rs = 3;
					  Tuse_rt = 3;
					  A3		= 5'd31;

					  extop	= 0;
					  luiop	= 0;
					  beqop	= 0;
					  npc_slc = 3'b011;
					  jalop	= 1;
					  jop		= 0;
					  jrop		= 0;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				 end
		
		
		j		: begin
					 Tuse_rs = 3;
					 Tuse_rt = 3;
					 A3		= 5'b00000;

					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b010;
					 jalop	= 0;
					 jop		= 1;
					 jrop		= 0;
					 xluop	= 0;
					 jalrop  = 0;
					 bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
				end  
		
		bne	: begin
					  Tuse_rs = 0;
					  Tuse_rt = 0;
					  A3		= 5'b00000;

					  extop	= 1;
					  luiop	= 0;
					  beqop	= 0;
					  npc_slc = 3'b001;
					  jalop	= 0;
					  jop		= 0;
					  jrop		= 0;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 1;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
		
				 end
				 
		blez	: begin
					  Tuse_rs = 0;
					  Tuse_rt = 3;
					  A3		= 5'b00000;

					  extop	= 1;
					  luiop	= 0;
					  beqop	= 0;
					  npc_slc = 3'b001;
					  jalop	= 0;
					  jop		= 0;
					  jrop		= 0;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 0;	
				    blezop	= 1;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
		
				 end
				 
		bgtz	: begin
					  Tuse_rs = 0;
					  Tuse_rt = 3;
					  A3		= 5'b00000;

					  extop	= 1;
					  luiop	= 0;
					  beqop	= 0;
					  npc_slc = 3'b001;
					  jalop	= 0;
					  jop		= 0;
					  jrop		= 0;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 1;
					 bltzop	= 0;
					 bgezop	= 0;
		
				 end
				 
		bltz_bgez	: begin
				case (instr[`rt])
					bltz : begin
								 Tuse_rs = 0;
								 Tuse_rt = 3;
								 A3		= 5'b00000;

								 extop	= 1;
								 luiop	= 0;
								 beqop	= 0;
								 npc_slc = 3'b001;
								 jalop	= 0;
								 jop		= 0;
								 jrop		= 0;
								 xluop	= 0;
								 jalrop  = 0;
								 bneop	= 0;	
								blezop	= 0;
								bgtzop	= 0;
								bltzop	= 1;
								bgezop	= 0;
							 end
							 
					bgez :begin
								 Tuse_rs = 0;
								 Tuse_rt = 3;
								 A3		= 5'b00000;


								 extop	= 1;
								 luiop	= 0;
								 beqop	= 0;
								 npc_slc = 3'b001;
								 jalop	= 0;
								 jop		= 0;
								 jrop		= 0;
								 xluop	= 0;
								 jalrop  = 0;
								 bneop	= 0;	
								blezop	= 0;
								bgtzop	= 0;
								bltzop	= 0;
								bgezop	= 1;
							 end
				endcase
					 
		
				 end
				 
		beq	: begin
					  Tuse_rs = 0;
					  Tuse_rt = 0;
					  A3		= 5'b00000;

					  extop	= 1;
					  luiop	= 0;
					  beqop	= 1;
					  npc_slc = 3'b001;
					  jalop	= 0;
					  jop		= 0;
					  jrop		= 0;
					  xluop	= 0;
					  jalrop  = 0;
					  bneop	= 0;	
				    blezop	= 0;
					 bgtzop	= 0;
					 bltzop	= 0;
					 bgezop	= 0;
		
				 end
		default: begin
			Tuse_rs = 3;
			Tuse_rt = 3;
			A3		= 5'b00000;

			extop	= 0;
			luiop	= 0;
			beqop	= 0;
			npc_slc = 3'b000;
		   jalop	= 0;
			jop		= 0;
		   jrop		= 0;
			xluop	= 0;
			jalrop  = 0;
			bneop	= 0;	
		  blezop	= 0;
		  bgtzop	= 0;
		  bltzop	= 0;
		  bgezop	= 0;
		end
	 endcase
	 
	 
	 end
	 
	 

endmodule

/*
wire [5:0]opc,func;
	 wire addu,subu,ori,lw,sw,beq,lui,jal,jr;
	 
	 assign opc = instr[31:26];
	 assign func = instr[5:0];
	 
	 assign addu = ((opc==6'b000000)&&(func==6'b100001));
	 assign subu = ((opc==6'b000000)&&(func==6'b100011));
	 assign ori = (opc==6'b001101);
	 assign lw = (opc==6'b100011);
	 assign sw = (opc==6'b101011);
	 assign beq = (opc==6'b000100);
	 assign lui = (opc==6'b001111);
	 assign jal = (opc==6'b000011);
	 assign jr = ((opc==6'b000000)&&(func==6'b001000));
	 assign j = (opc==6'b000010);
	 
	 assign regdst = addu || subu ;
	 assign alusrc = ori || lw || sw || lui;
	 assign memtoreg = lw;
	 assign regwrite = addu || jal || subu || lw || lui || ori;
	 assign memwrite = sw;
	 assign memread = lw;
	 assign extop = sw || lw || beq;
	 assign luiop = lui;
	 assign jalop = jal;
	 assign beqop = beq;
	 assign jop = j;
	 assign jrop = jr;
	 
	 assign aluop[2] = 0;
	 assign aluop[1] = addu || subu || lw || sw || lui;
	 assign aluop[0] = subu || ori;
	 
	 assign npc_slc[2] = jr; 
	 assign npc_slc[1] = jal || j ;
	 assign npc_slc[0] = jal || beq;
*/
