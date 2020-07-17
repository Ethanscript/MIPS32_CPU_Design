`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:06:09 11/20/2019 
// Design Name: 
// Module Name:    mux_2 
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
module mux_2(
	input [31:0] in0,
	input [31:0] in1,
	input sel,
	output [31:0] out
    );
	 
	assign out = (sel==0)? in0 : in1; 

endmodule
