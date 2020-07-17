`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:00 11/19/2019 
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
`define handler 32'h0000_4180
module pc(
    input [31:0] pc_in,
    output [31:0] pc_out,
    input reset,
    input clk,
	 input stop_en,
	 input eretop,
	 input [31:0]epc,
	 input intreq
    );

	reg [31:0]pc;
	assign pc_out = pc; 
	initial begin
		pc = 32'h0000_3000;//8'h0000_3000 X（第一个数字代表位宽 不是进制）
	end 
	
	always @(posedge clk) begin
		if(reset==1) begin 
			pc <= 32'h0000_3000;
		end
		else if(eretop == 1) begin
			pc <= epc;
		end
		else begin
			if(intreq == 1) begin
				pc <= `handler;
			end
			else if(stop_en == 1) begin
				pc <= pc;
			end
			else pc <= pc_in;
		end
	end
endmodule


