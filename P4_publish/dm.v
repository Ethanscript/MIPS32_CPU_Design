`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:48 11/11/2019 
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
    input [31:0] invalue,
    input reset,
    input clk,
    input memwrite,
    input memread,
	 input [31:0]pc_new,
    output [31:0] outvalue
    );
	 
	 reg [31:0]DM[1023:0];
	 integer i;
	 initial begin
		for(i=0;i<=1023;i=i+1) begin
			DM[i] = 0;
		end
	 end
	 
	 assign outvalue = (memread==1)? DM[addr[11:2]] : 0;
	 
	 always @(posedge clk) begin
		if(reset==1) begin
			for(i=0;i<=1023;i=i+1) begin
				DM[i] = 0;
			end
		end
		else begin
			if(memwrite==1) begin////////////////////////////////////////////////////
				DM[addr[11:2]] = invalue;
				$display("@%h: *%h <= %h",pc_new, addr,invalue);//
			end
		end
	 end
	
endmodule
