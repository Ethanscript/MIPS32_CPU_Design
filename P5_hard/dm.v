`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:47 11/19/2019 
// Design Name: 
// Module Name:    dm 
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
module dm(
    input [31:0] addr,
    input [31:0] dm_in,
    input reset,
    input clk,
    input memwrite,
	 input [31:0]pc_new,
    output [31:0] dm_out
    );
	 
	 reg [31:0]DM[1023:0];
	 integer i;
	 initial begin
		for(i=0;i<=1023;i=i+1) begin
			DM[i] = 0;
		end
	 end
	 
	 assign dm_out = DM[addr[11:2]] ;
	 
	 always @(posedge clk) begin
		if(reset==1) begin
			for(i=0;i<=1023;i=i+1) begin
				DM[i] <= 0;
			end
		end
		else begin
			if(memwrite==1) begin////////////////////////////////////////////////////
				DM[addr[11:2]] <= dm_in;
				$display("%d@%h: *%h <= %h", $time, pc_new, addr,dm_in);//
			end
		end
	 end
	
endmodule

