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

	 output reg change,
    input [31:0]instr,
	 
	 output reg [1:0]Tnew,
	 output reg [4:0]A3,
	 
    output reg memwrite,
	 output reg jalop
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
				  slt  = 6'b101010;
	
	 always @(*) begin
	
	 case (instr[`opc]) 
		r : begin
			case (instr[`func]) 
			
				addu: begin
				
					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				end
				
				subu: begin

					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				end
				
				slt: begin

					 Tnew		= 0;
					 A3		= instr[`rd];
	 
					 memwrite = 0;
					 jalop = 0;
	
						change = 1;
				end
				
				j: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				end
				
				default begin
					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				end
			endcase
			end
			
		ori : begin 

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				end
				
		lw  : begin

					 Tnew		= 1;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				end
				
		sw  : begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 1;
					 jalop = 0;
					 change = 0;
				end
				
		lui  : begin

					 Tnew		= 0;
					 A3		= instr[`rt];
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				 end
		
		jal	: begin

					 Tnew	   = 0;
					 A3		= 5'd31;
	 
					 memwrite = 0;
					 jalop = 1;
					 change = 0;
				 end
				
		jr		: begin

					 Tnew		= 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				 end
				 
		beq	: begin

					 Tnew	   = 0;
					 A3		= 5'b00000;
	 
					 memwrite = 0;
					 jalop = 0;
					 change = 0;
				 end
				 
		default begin
			Tnew		= 0;
			A3		= 5'b00000;
	 
			memwrite = 0;
			jalop = 0;
			change = 0;
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
