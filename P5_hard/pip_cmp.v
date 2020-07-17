`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:53 12/05/2019 
// Design Name: 
// Module Name:    pip_cmp 
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
module pip_cmp(
    input pip_cmp_in,
	 input reset,
    input clk,
    input en,
    output pip_cmp_out
	 
    );

	 reg register;
	 assign pip_cmp_out = register;
	 
	 initial begin
		register = 0;
	 end
	 
	 always @(posedge clk) begin
		if(reset == 1) begin 
			register <= 0;
		end
		else begin
			if(en == 1) begin
				register <= pip_cmp_in ;
			end
		end
	 end

endmodule
