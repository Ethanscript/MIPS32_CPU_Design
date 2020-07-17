`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:07 11/20/2019 
// Design Name: 
// Module Name:    addu_change 
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
module addu_change(
    input [31:0] change_in1,
    input [31:0] change_in2,
    output [31:0] change_out
    );

	wire [31:0] res_in1;
	genvar i;
	
	generate
		for(i=0;i<32;i=i+1) begin: loop
			assign res_in1[i] = change_in1[31-i];
		end
	endgenerate

endmodule
