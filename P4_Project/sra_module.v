`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:40 11/21/2019 
// Design Name: 
// Module Name:    sra_module 
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
module sra_module(
    input [4:0] sra_in1,	//s
    input [31:0] sra_in2,	//rt
    output reg[31:0] sra_out
    );
	integer i;
	always @(*)begin
		for(i=0;i<=31;i=i+1) begin
		
			sra_out = {{i{sra_in2[31]}},{i[31:i]}};
		
		end
	end

endmodule
