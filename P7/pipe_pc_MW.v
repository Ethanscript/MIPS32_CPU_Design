`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:21 12/18/2019 
// Design Name: 
// Module Name:    pipe_pc_MW 
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
module pipe_pc_MW(
    input clk,
    input reset,
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
                    PC_out<=0;
                end

            else
                begin
                    PC_out<=PC_in;
                end
        end

endmodule
