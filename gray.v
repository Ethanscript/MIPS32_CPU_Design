`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:45 10/18/2019 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input [0:0] Clk,
    input [0:0] Reset,
    input [0:0] En,
    output [2:0] Output,
    output [0:0] Overflow
    );
	
	reg [2:0] out;
	assign Output=out;
	reg flow;
	assign Overflow=flow;
	
	initial begin   //整体代码与testbench的顺序 延迟??
		out<=0;
		flow<=0;
	end
	
	always @(posedge Clk) begin
		if(Reset==1) begin
			out<=0;
			flow<=0;
		end
		else begin
			if(En==1) begin
				case(Output)
					3'b000: out<=3'b001;
					3'b001: out<=3'b011;
					3'b011: out<=3'b010;
					3'b010: out<=3'b110;
					3'b110: out<=3'b111;
					3'b111: out<=3'b101;
					3'b101: out<=3'b100;
					3'b100: begin
							out<=3'b000;
							if(!flow)
							flow<=flow+1;
						end
				endcase
			end
			else ;
		end
	end
endmodule
