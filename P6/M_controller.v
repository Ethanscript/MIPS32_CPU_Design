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

module M_controller(

    input [31:0]instr,
	 
	 output reg [1:0]Tnew,
	 output reg [4:0]A3,
	 
    output reg memwrite,
	 output reg jalop,
	 output reg [1:0]writedm_op,
	 output reg [2:0]readdm_op
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
				  msubu= 6'b000101,
				  
				  blezal1 = 6'b000001,
				  blezal2 = 5'b10000;
	
	 always @(*) begin
	
	 case (instr[`opc]) 
		r : begin
			case (instr[`func]) 
			
				jalr : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 1; ///////////
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
			
				slt : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				sltu : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
			
				sll : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				sllv : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				sra : begin
			
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				srav : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				srl : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				srlv : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
			
				add : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				and1: begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				nor1: begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				or1 : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				sub : begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				xor1: begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
			
				addu: begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				subu: begin

					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				mult: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				multu: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				div: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				divu: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				mthi: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				mtlo: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				mfhi: begin

					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				mflo: begin

					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				j: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				default begin
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
			endcase
			end
			
		m    : begin
			case (instr[`func])
			
				madd : begin 

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
				maddu : begin 

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end

				msub : begin 

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end

				msubu : begin 

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end

				
			endcase
				end
				
		blezal1: begin
				if(blezal2 == instr[`rt]) begin
						Tnew		= 0;
						A3		= 5'd31;
	 
						memwrite = 0;
						jalop = 1;
						writedm_op = 2'b11;
						readdm_op = 3'b000;
					end
				end
		slti : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
		sltiu : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
			
		addi : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
		addiu : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
		
		andi : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
		xori : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
		ori : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
		lb  : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b001;
				end
				
		lbu  : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b010;
				end
				
		lh  : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b011;
				end
				
		lhu  : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b100;
				end
				
		lw  : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				end
				
		sw  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 1;
					 jalop = 0;
					 writedm_op = 2'b00;
					 readdm_op = 3'b000;
				end
				
		sb  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 1;
					 jalop = 0;
					 writedm_op = 2'b01;
					 readdm_op = 3'b000;
				end
				
		sh  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 1;
					 jalop = 0;
					 writedm_op = 2'b10;
					 readdm_op = 3'b000;
				end
				
		lui  : begin

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
		
		jal	: begin

					 Tnew	   = 0;
					 A3		= 5'd31;
	 
					 memwrite = 0;
					 jalop = 1;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
				
		jr		: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
				 
		bne	: begin

					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
				 
		blez	: begin

					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
				 
		bgtz	: begin

					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
				 
		bltz_bgez	: begin
				 case (instr[`rt])
					bltz : begin
					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
					end
				   
					bgez : begin
					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
					end
					
				 endcase
			end
				 
		beq	: begin

					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 writedm_op = 2'b11;
					 readdm_op = 3'b000;
				 end
				 
		default begin
			Tnew		= 0;
			A3		= 5'b00000;
	 
			memwrite = 0;
			jalop = 0;
			writedm_op = 2'b11;
			readdm_op = 3'b000;
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
