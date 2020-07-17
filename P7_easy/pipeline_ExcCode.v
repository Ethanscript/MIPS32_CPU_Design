`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:00 12/17/2019 
// Design Name: 
// Module Name:    pipeline_ExcCode 
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
module pipeline_ExcCode(
    input [6:2] ExcCode_in,
    output [6:2] ExcCode_out,
    input reset,
    input clk,
    input en
    );
	 
	 reg [31:0]register;
	 assign ExcCode_out = register;
	 
	 initial begin
		register = 0;
	 end
	 
	 always @(posedge clk) begin
		if(reset == 1) begin 
			register <= 0;
		end
		else begin
			if(en == 1) begin
				register <= ExcCode_in ;
			end
		end
	 end
endmodule
