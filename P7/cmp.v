`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:33 11/22/2019 
// Design Name: 
// Module Name:    cmp_beq 
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
module cmp(
    input [31:0] cmp_in1,
    input [31:0] cmp_in2,
    output beq_npc,
	 output bne_npc,
	 output blez_npc,
	 output bgtz_npc,
	 output bltz_npc,
	 output bgez_npc
    );
	
	assign beq_npc = (cmp_in1 == cmp_in2) ? 1 : 0 ;
	assign bne_npc = (cmp_in1 != cmp_in2) ? 1 : 0 ;
	assign blez_npc = ($signed(cmp_in1) <=0) ? 1: 0 ;
	assign bgtz_npc = ($signed(cmp_in1) > 0) ? 1: 0 ;
	assign bltz_npc = ($signed(cmp_in1) < 0) ? 1: 0 ;
	assign bgez_npc = ($signed(cmp_in1) >=0) ? 1: 0 ;

endmodule
