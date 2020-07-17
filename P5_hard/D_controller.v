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
	 input blezal_cmp,
	 
	 output reg [1:0]Tuse_rs,
	 output reg [1:0]Tuse_rt,
	 output reg [4:0]A3,

    output reg extop,
    output reg luiop,
	 output reg beqop,
    output reg [2:0] npc_slc,
    output reg jalop,
	 output reg jop,
	 output reg jrop,
	 output reg blezalop
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
				  slt  = 6'b101010,
				  blezal = 6'b111111;
	
	 always @(*) begin
	
	 case (instr[`opc]) 
		
		blezal : begin
			Tuse_rs = 1;
			Tuse_rt = 1;
			if (blezal_cmp == 1 ) begin
				A3		= instr[`rd];
				end
			else begin
				A3		= 5'd31;
				end
			extop	= 0;
			luiop	= 0;
			beqop	= 0;
			npc_slc = 3'b000;
			jalop	= 0;
			jop		= 0;
			jrop		= 0;
			if (blezal_cmp == 1) begin
				blezalop = 1;
				end
			else begin
				blezalop = 0;
				end
		end
		
		r : begin
			case (instr[`func]) 
			
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
				end
				
				slt: begin
					 Tuse_rs = 0;
					 Tuse_rt = 0;
					 A3		= instr[`rd];
	 
					 extop	= 0;
					 luiop	= 0;
					 beqop	= 0;
					 npc_slc = 3'b000;
					 jalop	= 0;
					 jop		= 0;
					 jrop		= 0;
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
					end
			endcase
			
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
