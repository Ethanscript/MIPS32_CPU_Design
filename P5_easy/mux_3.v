`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:05 11/20/2019 
// Design Name: 
// Module Name:    mux_3 
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
module mux_3(
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    input [1:0] sel,
    output [31:0] out
    );
	 
	assign out = (sel == 2'b00)? in0:
					 (sel == 2'b01)? in1:
										  in2;

endmodule
