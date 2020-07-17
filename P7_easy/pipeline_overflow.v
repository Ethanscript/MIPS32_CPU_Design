`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:57:48 12/18/2019 
// Design Name: 
// Module Name:    pipeline_overflow 
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
module pipeline_overflow(
    input overflow_in,
    output overflow_out,
	 input reset,
    input clk,
    input en
    );
	 
	 reg register;
	 assign overflow_out = register;
	 
	 initial begin
		register = 0;
	 end
	 
	 always @(posedge clk) begin
		if(reset == 1) begin 
			register <= 0;
		end
		else begin
			if(en == 1) begin
				register <= overflow_in ;
			end
		end
	 end


endmodule

