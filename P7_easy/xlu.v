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
`define mult  4'b0000
`define multu 4'b0001
`define div   4'b0010
`define divu  4'b0011
`define mthi  4'b0100
`define mtlo  4'b0101

module xlu(
    input [31:0] xlu_in1,
	 input [31:0] xlu_in2,
	 input [3:0]xlu_op,
	 input clk,
	 input reset,
	 input intreq,
	 input eretop,
	 output start,
	 output reg busy,
    output [31:0] hi_out,	//mod
    output [31:0] lo_out	//div
    );

	 assign start =  (xlu_op == 4'b0000)	||  (xlu_op == 4'b0001)  ||  (xlu_op == 4'b0010)  ||  (xlu_op == 4'b0011)  ;							
							//  mult_op = 0000 || multu_op = 0001 || div_op = 0010 ||divu_op = 0011 ||mthi_op = 0100 ||mtlo_op = 0101;
							//  mfhi_op = 0110 || mflo_op = 0111 || default = 1000
							
	 reg [63:0]temp;
	 reg [31:0]hi;
	 reg [31:0]lo;
	 assign hi_out = hi;
	 assign lo_out = lo;
	 
	 reg [4:0]num = 0;
	 initial begin//
		busy = 0;
		temp = 0;
		hi   = 0;
		lo   = 0;
	 end
	 
	 always @(posedge clk) begin
		busy <= busy;
		temp <= temp;
		hi   <= hi;
		lo   <= lo;
		if(reset == 1) begin
			busy <= 0;
			hi   <= 0;
			lo   <= 0;
			num  <= 0;
		end
		else begin
			if(start == 1 && !intreq && !eretop) begin
				busy <= 1;
				case(xlu_op)
					`mult:  begin
								 temp <= $signed(xlu_in1) * $signed(xlu_in2);
								 num <= 5'd4; 
							 end
					`multu: begin
								 temp <= {{1'b0},xlu_in1} * {{1'b0},xlu_in2};
								 num <= 5'd4;
							 end
					`div  : begin
								
									temp[63:32] <= $signed(xlu_in1) % $signed(xlu_in2);  
									temp[31:0]  <= $signed(xlu_in1) / $signed(xlu_in2);
								
								 num <= 5'd9;
							 end
					`divu : begin
								
									temp[63:32] <= {{1'b0},xlu_in1} % {{1'b0},xlu_in2};
									temp[31:0]  <= {{1'b0},xlu_in1} / {{1'b0},xlu_in2};
								
								 num <= 5'd9;
							 end		 
				endcase
			end
			
			else if(busy == 1 && num != 0) begin
				num <= num -1;
			end
			
			else if(busy == 1 && num == 0) begin //start = 0 ?
				{hi,lo} <= temp;
				busy <= 0;
			end
			
			else if(busy == 0 && num == 0 && start == 0 && !intreq && !eretop) begin
				case(xlu_op)
					`mthi:	hi <= xlu_in1;
					`mtlo:   lo <= xlu_in1;
				endcase
			end
			
		end
	 end
	 
endmodule
