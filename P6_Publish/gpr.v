`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:34 11/19/2019 
// Design Name: 
// Module Name:    gpr 
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
module grf(
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD3,
    input regwrite,
    input reset,
	 input clk,
	 input [31:0]pc_new,
    output [31:0] RD1,
    output [31:0] RD2
    );
	
	reg [31:0]register[31:0];
	integer i=0;
	
	assign RD1 = register[A1];
	assign RD2 = register[A2];
	
	initial begin
		for(i=0;i<=31;i=i+1)begin
				register[i] = 0;
			end
	end

	always @ (posedge clk) begin
		if(reset==1)begin
			for(i=0;i<=31;i=i+1)begin
				register[i] <= 0;
			end
		end
		
		else begin
			if(regwrite==1&& A3!=0)begin//²»ÈÃ 0ºÅ¼Ä´æÆ÷Ð´ÈëÖµ
				register[A3] <= WD3;
				$display("%d@%h: $%d <= %h", $time, pc_new, A3,WD3);//
			end
		end
	end
	
endmodule
