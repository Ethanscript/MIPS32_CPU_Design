`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:39 12/17/2019 
// Design Name: 
// Module Name:    CP0 
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
`define im  15:10
`define exl 1
`define ie  0
`define SR    5'd12
`define CAUSE 5'd13
`define EPC   5'd14
`define PRID  5'd15

module CP0(
    input [4:0] A1,//read
    input [4:0] A2,//write
    input [31:0] Din,
    input [31:2] PC,
    input [6:2] ExcCode,
    input [5:0] HW,
    input we,
    input Exlset,
    input Exlclr,
    input clk,
    input reset,
	 input BD,
    output intreq,
    output [31:0] EPC_out,
    output [31:0] Dout
    );
	 wire interrupt;	//中断
	 wire miss;			//异常
	 reg [31:0] sr, cause, epc, prid;
	 initial begin
			sr = {16'd0,6'b111111,8'd0,1'b0,1'b1};   //0,im（六个中断位）,0,exl(异常级),ie（全局中断使能）
			cause = 0;
			epc = 0;
			prid = 32'd18373146;
	 end
	 assign EPC_out = epc ;
	 assign interrupt = (HW & sr[`im]) && sr[`ie] && (!sr[`exl]);
	 assign miss = ExcCode && (!sr[`exl]);
	 assign intreq = interrupt || miss ;
	 
	 assign Dout = (A1 == `SR) ? sr :
						(A1 == `CAUSE) ? cause :
						(A1 == `EPC) ? epc :
											prid ;
	 
	 always @(posedge clk) begin
		if (reset) begin
			sr <= {16'd0, 6'b111111,8'd0,1'b0,1'b1};   //0,im（六个中断位）,0,exl(异常级),ie（全局中断使能）
			cause <= 0;
			epc <= 0;
			prid <= 32'd18373146;
			
		end
		else begin
			if(interrupt == 1) begin
				sr[`exl] <= 1;   //0,im（六个中断位）,0,exl(异常级),ie（中断使能）
				cause[15:10] <= HW;
				cause[6:2] <= 0;
				cause[31] <= BD;
				
				if({PC,2'b0} < 32'h0000_3000 || {PC,2'b0} >= 32'h0000_4180) epc <= epc;
				else begin
					if(BD == 1) epc <= {PC,2'b0} - 4;////
					else epc <= {PC,2'b0};
				end
			end
			
			else if(miss == 1) begin
				sr[`exl] <= 1;   //0,im（六个中断位）,0,exl(异常级),ie（中断使能）
				
				cause[15:10] <= HW;
				cause[6:2] <= ExcCode;
				cause[31] <= BD;
				
				if({PC,2'b0} < 32'h0000_3000 || {PC,2'b0} >= 32'h0000_4180) epc <= epc;
				else begin
					if(BD == 1) epc <= {PC,2'b0} - 4;
					else epc <= {PC,2'b0};
				end
			end
			
			else if(Exlclr == 1) begin
				sr[`exl] <= 0;
				cause[15:10] <= HW;
			end
			
			else if(we == 1) begin	// CP0写使能
				  cause[15:10] <= HW;       ////////////////////
				  if(A2 == `SR)
						sr <= Din;
				  else if(A2 == `EPC)
						epc<= Din;
         end
			
			else begin
				cause[15:10] <= HW;
				sr <= sr;
				epc <= epc;
			end
		end
	 end
	 
endmodule
