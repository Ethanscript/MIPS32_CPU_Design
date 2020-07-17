`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:34 11/19/2019 
// Design Name: 
// Module Name:    controller 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:35 11/11/2019 
// Design Name: 
// Module Name:    controller 
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
`define rs 25:21
`define rt 20:16
`define rd 15:11

module controller(

    input [31:0]instr,
	 
	 output [1:0]Tuse_rs,
	 output [1:0]Tuse_rt,
	 output [1:0]Tnew,
	 output [4:0]A3,
	 
    output regdst,
    output alusrc,
    output memtoreg,
    output regwrite,
    output memwrite,
    output memread,
    output extop,
    output luiop,
	 output beqop,
    output [2:0] aluop,
    output [2:0] npc_slc,
    output jalop,
	 output jop,
	 output jrop
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
				  r    = 6'b000000;
				  
	 case (instr[`opc]) begin
		r : begin
			case (instr[`func]) 
				addu: begin
					Tuse_rs = 1;
					Tuse_rt = 1;
					Tnew	  = 2; 
					A3		  = instr[`rd];
					regdst  = 1;
					alusrc  = 
					memtoreg,
					regwrite,
					memwrite,
					memread,
					extop,
					luiop,
					beqop,
					aluop,
					npc_slc,
					jalop,
					jop,
					jrop
					
				end
			endcase
	 endcase
	 
	 
	 
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
	 

endmodule

