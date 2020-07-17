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
module cmp_beq(
    input [31:0] beq_in1,
    input [31:0] beq_in2,
    output beq_zero,
	 output blezal
    );
	
	assign beq_zero = (beq_in1 == beq_in2) ? 1 : 0 ;
	assign blezal = ($signed(beq_in1) <= 0) ? 1:0;
	

endmodule
