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
`define madd  4'b1001
`define maddu 4'b1010
`define msub  4'b1011
`define msubu 4'b1100

module xlu(
    input [31:0] xlu_in1,
	 input [31:0] xlu_in2,
	 input [3:0]xlu_op,
	 input clk,
	 input reset,
	 
	 output start,
	 output reg busy,
    output [31:0] hi_out,	//mod
    output [31:0] lo_out	//div
    );

	 assign start =  (xlu_op == 4'b0000)	||  (xlu_op == 4'b0001)  ||  (xlu_op == 4'b0010)  ||  (xlu_op == 4'b0011)  ||
						  (xlu_op == 4'b1001)   ||  (xlu_op == 4'b1010)  ||  (xlu_op == 4'b1011)  ||  (xlu_op == 4'b1100)	;							
							//  mult_op = 0000 || multu_op = 0001 || div_op = 0010 ||divu_op = 0011 ||mthi_op = 0100 ||mtlo_op = 0101;
							//  mfhi_op = 0110 || mflo_op = 0111 || default = 1000
	 initial begin//
		busy = 0;
	 end
	 
	 reg [63:0]temp = 0 ;
	 reg [31:0]hi = 0;
	 reg [31:0]lo = 0;
	 assign hi_out = hi;
	 assign lo_out = lo;
	 
	 reg [4:0]num = 0;
	 
	 always @(posedge clk) begin
		if(reset == 1) begin
			busy <= 0;
			hi   <= 0;
			lo   <= 0;
			num  <= 0;
		end
		else begin
			if(start == 1) begin
				busy <= 1;
				case(xlu_op)
					`madd:  begin
							    temp  =  $signed(xlu_in1)*$signed(xlu_in2);
								 temp <=  {hi,lo} + temp ;
								 num  <=  5'd4;
							  end
					`maddu:  begin
							    temp  =  {{1'b0},xlu_in1} * {{1'b0},xlu_in2};
								 temp <=  {hi,lo} + temp ;
								 num  <=  5'd4;
							  end
					`msub:  begin
							    temp  =  $signed(xlu_in1)*$signed(xlu_in2);
								 temp <=  {hi,lo} - temp ;
								 num  <=  5'd4;
							  end
					`msubu:  begin
							    temp  =  {{1'b0},xlu_in1} * {{1'b0},xlu_in2};
								 temp <=  {hi,lo} - temp ;
								 num  <=  5'd4;
							  end
							  
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
			
			else if(busy == 0 && num == 0 && start == 0) begin
				case(xlu_op)
					`mthi:	hi <= xlu_in1;
					`mtlo:   lo <= xlu_in1;
				endcase
			end
			
		end
	 end
	 
endmodule
