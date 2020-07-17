`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:08 12/06/2019 
// Design Name: 
// Module Name:    xlu 
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
`define mult  3'b000
`define multu 3'b001
`define div   3'b010
`define divu  3'b011

module xlu(
    input [31:0] xlu_in1,
	 input [31:0] xlu_in2,
    input [31:0] xlu_out,
	 input start,
	 input [2:0]xlu_op,
	 input clk,
	 input reset,
    output [31:0] hi_out,
    output [31:0] lo_out
    );
	 wire start;
	 assign start =  mult	||  multu  ||  div  ||  divu  ;							
							//  mult_op = 000 || multu_op = 001 || div_op = 010 ||divu_op = 011 ;
	 reg [4:0] busy = 0 ;
	 reg [63:0]temp = 0 ;
	 reg [31:0]hi = 0;
	 reg [31:0]lo = 0;
	 
	 always @(posedge clk) begin
		if(reset == 0) begin
			busy <= 0;
			temp <= 0;
			hi   <= 0;
			lo   <= 0;
		end
		else begin
			if( start == 1) begin
				busy <= 1;
				case (xlu_op)
					mult: begin
								temp <= xlu_in1 * xlu_in2;
								busy <= 5'd4; 
							end
					
					
				endcase
			end
		end
	 end
	 
endmodule
