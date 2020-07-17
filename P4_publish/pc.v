`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:13 11/11/2019 
// Design Name: 
// Module Name:    pc 
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
module pc(
    input [31:0] pc_old,
    output [31:0] pc_new,
    input reset,
    input clk
    );

	reg [31:0]pc;
	assign pc_new = pc; 
	initial begin
		pc = 32'h0000_3000;//8'h0000_3000 X（第一个数字代表位宽 不是进制）
	end 
	
	always @(posedge clk) begin
		if(reset==1) begin 
			pc = 32'h0000_3000;
		end
		else begin
			pc = pc_old;
		end
	end
endmodule
