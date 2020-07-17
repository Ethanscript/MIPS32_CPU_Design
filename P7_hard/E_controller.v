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

module E_controller(

    input [31:0]instr,
	 
	 output reg [1:0]Tnew,
	 output reg [4:0]A3,
	 
	 output reg alu_src,
    output reg [3:0]alu_op,
	 output reg [3:0]xlu_op,
	 output reg mfhi_op,
	 output reg mflo_op,
	 output reg notv_op    // sll sra srl
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
				  
				  cop0 = 6'b010000,
				  eret = 6'b011000,
				  mtc0 = 5'b00100,		//rs
				  mfc0 = 5'b00000;	//rs
	
	 always @(*) begin
	
	 case (instr[`opc]) 
	 
		cop0 : begin
			if(instr[`func] == eret)
				begin
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			else if(instr[`rs] == mtc0)
				begin
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
			end
			
			else if(instr[`rs] == mfc0)
				begin
					 Tnew		= 2;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			end
		
		r : begin
			case (instr[`func]) 
			
				jalr: begin
			
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			
				slt: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0110;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				sltu: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0111;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			
				sll: begin
			
					 Tnew		= 1;///
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b1000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 1;
				end
				
				sllv: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b1000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				sra: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b1010;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 1;
				end
				
				srav: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b1010;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				srl: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b1001;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 1;
				end
				
				srlv: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b1001;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			
				add: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0010;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				and1: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				nor1: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0101;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				or1 : begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0001;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				sub : begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0011;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				xor1 : begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0100;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			
				addu: begin
			
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0010;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				subu: begin
				
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0011;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				mult: begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				multu:begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0001;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				div : begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0010;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				divu: begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0011;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				mthi: begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0100;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				mtlo: begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0101;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				mfhi: begin
				
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0110;
					 mfhi_op = 1;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				mflo: begin
				
					 Tnew		= 1;
					 A3		= instr[`rd];
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b0111;
					 mfhi_op = 0;
					 mflo_op = 1;
					 notv_op = 0;
				end
				
				j: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
				default begin
				
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			endcase
			end
			
		slti : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0110;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		sltiu : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0111;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
			
		addi : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		addiu : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		andi : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0000;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		xori : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0100;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		ori : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0001;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		lw  : begin

					 Tnew		= 2;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		lb  : begin

					 Tnew		= 2;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		lbu  : begin

					 Tnew		= 2;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		lh  : begin

					 Tnew		= 2;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		lhu  : begin

					 Tnew		= 2;
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		sw  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		sb  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		sh  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				end
				
		lui  : begin

					 Tnew		= 1;/////
					 A3		= instr[`rt];
	 
					 alu_op  = 4'b0010;
					 alu_src = 1;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				 end
		
		jal	: begin

					 Tnew	   = 0;
					 A3		= 5'd31;
	 
					 alu_op  = 4'b0000;
					 alu_src = 0;
					 xlu_op  = 4'b1000;
					 mfhi_op = 0;
					 mflo_op = 0;
					 notv_op = 0;
				 end
				
		jr		: begin

					  Tnew		= 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
				 end
				 
		bne	: begin

					  Tnew	 = 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
				 end
				 
		blez	: begin

					  Tnew	 = 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
				 end
				 
		bgtz	: begin

					  Tnew	 = 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
				 end
				 
		bltz_bgez	: begin
				case (instr[`rt])
					bltz: begin
					  Tnew	 = 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
					  
					 end
					bgez: begin
					  Tnew	 = 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
					  
					 end
				endcase
				 end				 
				 
		beq	: begin

					  Tnew	 = 0;
					  A3		= 5'b00000;
	 
					  alu_op  = 4'b0000;
					  alu_src = 0;
					  xlu_op  = 4'b1000;
					  mfhi_op = 0;
					  mflo_op = 0;
					  notv_op = 0;
				 end
		default begin
			 Tnew		= 0;
			 A3		= 5'b00000;
	 
	 		 alu_op  = 4'b0000;
	    	 alu_src = 0;	 
			 xlu_op  = 4'b1000;
			 mfhi_op = 0;
			 mflo_op = 0;
			 notv_op = 0;
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
