`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:25:59 12/18/2019 
// Design Name: 
// Module Name:    pipeline_Dout 
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
module pipeline_Dout(
    input [31:0] Dout_in,
    output [31:0] Dout_out,
	 input reset,
    input clk,
    input en
    );
	 
	 reg [31:0] register;
	 assign Dout_out = register;
	 
	 initial begin
		register = 0;
	 end
	 
	 always @(posedge clk) begin
		if(reset == 1) begin 
			register <= 0;
		end
		else begin
			if(en == 1) begin
				register <= Dout_in ;
			end
		end
	 end

endmodule
