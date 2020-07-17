`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:08 12/18/2019 
// Design Name: 
// Module Name:    pipe_pc_FD 
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
module pipe_pc_FD(
	 input clk,
    input reset,
    input stopen,
    input [31:0] PC_in,
    output reg [31:0] PC_out
);
	initial
		begin
			PC_out = 0;
		end
    
    always @(posedge clk)
        begin
            if(reset)
                begin
                    ;
                end
            else if(stopen)
                begin
                    PC_out<=PC_out;
                end
            else
                begin
                    PC_out<=PC_in;
                end
        end

endmodule