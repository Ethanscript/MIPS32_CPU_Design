`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:01:45 11/20/2019 
// Design Name: 
// Module Name:    pipeline_register 
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
module pipeline_register(
    input [31:0] pipe_in,
    output [31:0] pipe_out,
    input reset,
    input clk,
    input en
    );
	 
	 reg [31:0]register;
	 assign pipe_out = register;
	 
	 initial begin
		register = 0;
	 end
	 
	 always @(posedge clk) begin
		if(reset == 1) begin 
			register <= 0;
		end
		else begin
			if(en == 1) begin
				register <= pipe_in ;
			end
		end
	 end


endmodule
