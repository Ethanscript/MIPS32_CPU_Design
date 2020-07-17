`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:09:58 12/06/2019 
// Design Name: 
// Module Name:    deng_alu 
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
module deng_alu(
    input [31:0] A,
    input [31:0] B,
    output [31:0] Y
    );

	assign Y = (A+2) ^ (A+B);

endmodule
