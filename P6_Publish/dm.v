`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:47 11/19/2019 
// Design Name: 
// Module Name:    dm 
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
`define sw 2'b00
`define sb 2'b01
`define sh 2'b10

//writedm_op = sw:00 ; sb:01 ; sh:10 ; default:11

module dm(
    input [31:0] addr,
    input [31:0] dm_in,
    input reset,
    input clk,
    input memwrite,
	 input [31:0]pc_new,
	 input [1:0]writedm_op,
    output [31:0] dm_out
    );
	 
	 reg [31:0]DM[4095:0];
	 integer i;
	 initial begin
		for(i=0;i<=4095;i=i+1) begin
			DM[i] = 0;
		end
	 end
	 
	 assign dm_out = DM[addr[13:2]] ;
	 
	 always @(posedge clk) begin
		if(reset==1) begin
			for(i=0;i<=4095;i=i+1) begin
				DM[i] = 0;
			end
		end
		else begin
			if(memwrite==1) begin
				case (writedm_op)
				
					`sw : begin
						DM[addr[13:2]] <= dm_in;
						$display("%d@%h: *%h <= %h", $time, pc_new, addr,dm_in);
					end
					
					`sb : begin
						case (addr[1:0]) 
						2'b00:
							begin
								DM[addr[13:2]][7:0]   <= dm_in[7:0];
								$display("%d@%h: *%h <= %h", $time, pc_new, {addr[31:2],2'b00},{DM[addr[13:2]][31:8],dm_in[7:0]});
							end
						2'b01:
							begin
								DM[addr[13:2]][15:8]  <= dm_in[7:0];
								$display("%d@%h: *%h <= %h", $time, pc_new, {addr[31:2],2'b00},{DM[addr[13:2]][31:16],dm_in[7:0],DM[addr[13:2]][7:0]});
							end
						2'b10:
							begin
								DM[addr[13:2]][23:16] <= dm_in[7:0];
								$display("%d@%h: *%h <= %h", $time, pc_new, {addr[31:2],2'b00},{DM[addr[13:2]][31:24],dm_in[7:0],DM[addr[13:2]][15:0]});
							end
						2'b11:
							begin
								DM[addr[13:2]][31:24] <= dm_in[7:0];
								$display("%d@%h: *%h <= %h", $time, pc_new, {addr[31:2],2'b00},{dm_in[7:0],DM[addr[13:2]][23:0]});
							end
						endcase
					end
					
					`sh : begin
						case (addr[1])
						1'b0:
							begin
								DM[addr[13:2]][15:0]  <= dm_in[15:0];
								$display("%d@%h: *%h <= %h", $time, pc_new, {addr[31:2],2'b00},{DM[addr[13:2]][31:16],dm_in[15:0]});
							end
						1'b1:
							begin
								DM[addr[13:2]][31:16]  <= dm_in[15:0];
								$display("%d@%h: *%h <= %h", $time, pc_new, {addr[31:2],2'b00},{dm_in[15:0],DM[addr[13:2]][15:0]});
							end
						endcase
					end
				endcase 
				
			end
		end
	 end
	
endmodule

