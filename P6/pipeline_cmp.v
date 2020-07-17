`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:52 12/12/2019 
// Design Name: 
// Module Name:    pipeline_cmp 
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
module pipeline_cmp(
    input pipe_cmp_in,
    input clk,
    input reset,
	 input en,
	 output pipe_cmp_out
    );

	reg register;
	 assign pipe_cmp_out = register;
	 
	 initial begin
		register = 0;
	 end
	 
	 always @(posedge clk) begin
		if(reset == 1) begin 
			register <= 0;
		end
		else begin
			if(en == 1) begin
				register <= pipe_cmp_in ;
			end
		end
	 end

endmodule
