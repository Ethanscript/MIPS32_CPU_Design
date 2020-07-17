`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:45 12/18/2019 
// Design Name: 
// Module Name:    M_Exc 
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
`define AdEL 4
`define AdEs 5
`define Ri   10
`define Ov   12
`define dm_start 32'h0000_0000
`define dm_end 32'h0000_2fff 
`define instr_start 32'h0000_3000
`define instr_end   32'h0000_4fff
`define time0_start 32'h0000_7f00
`define time0_end   32'h0000_7f0b
`define time1_start 32'h0000_7f10
`define time1_end   32'h0000_7f1b
`define time0_count 32'h0000_7f08
`define time1_count 32'h0000_7f18

module M_Exc(
    input [6:2] M_ExcCode_in,
	 input bop,
	 input hop,
	 input fop,
	 input loadop,
	 input storeop,
	 input [31:0]addr,
	 input overflow,
    output reg [6:2] M_ExcCode_out
    );
	
	always @(*) begin
	
		if(loadop == 1) begin
			 if(fop == 1) begin
				if (addr%4) M_ExcCode_out = `AdEL;
				else if (overflow == 1) M_ExcCode_out = `AdEL;
				else if (!((`dm_start <= addr && addr <= `dm_end) || (`time0_start <= addr && addr <= `time0_end) 
						 || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEL;
				else M_ExcCode_out = M_ExcCode_in;
			 end
			 
			 if(hop == 1) begin
				if (addr%2) M_ExcCode_out = `AdEL;
				else if (overflow == 1) M_ExcCode_out = `AdEL;
				else if (((`time0_start <= addr && addr <= `time0_end) || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEL;
				else if (!((`dm_start <= addr && addr <= `dm_end) || (`time0_start <= addr && addr <= `time0_end) 
						 || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEL;
				else M_ExcCode_out = M_ExcCode_in;
			 end
			 
			 if(bop == 1) begin
				if (overflow == 1) M_ExcCode_out = `AdEL;
				else if (((`time0_start <= addr && addr <= `time0_end) || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEL;
				else if (!((`dm_start <= addr && addr <= `dm_end) || (`time0_start <= addr && addr <= `time0_end) 
						 || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEL;
				else M_ExcCode_out = M_ExcCode_in;
			 end
		end
		
		else if(storeop == 1) begin
			if(fop == 1) begin
				if (addr%4) M_ExcCode_out = `AdEs;
				else if (addr == `time0_count || addr == `time1_count) M_ExcCode_out = `AdEs;
				else if (overflow == 1) M_ExcCode_out = `AdEs;
				else if (!((`dm_start <= addr && addr <= `dm_end) || (`time0_start <= addr && addr <= `time0_end) 
						 || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEs;
				else M_ExcCode_out = M_ExcCode_in;
			 end
			 
			 if(hop == 1) begin
				if (addr%2) M_ExcCode_out = `AdEs;
				else if (addr == `time0_count || addr == `time1_count) M_ExcCode_out = `AdEs;
				else if (overflow == 1) M_ExcCode_out = `AdEs;
				else if (((`time0_start <= addr && addr <= `time0_end) || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEs;
				else if (!((`dm_start <= addr && addr <= `dm_end) || (`time0_start <= addr && addr <= `time0_end) 
						 || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEs;
				else M_ExcCode_out = M_ExcCode_in;
			 end
			 
			 if(bop == 1) begin
				if (overflow == 1) M_ExcCode_out = `AdEs;
				else if (addr == `time0_count || addr == `time1_count) M_ExcCode_out = `AdEs;
				else if (((`time0_start <= addr && addr <= `time0_end) || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEs;
				else if (!((`dm_start <= addr && addr <= `dm_end) || (`time0_start <= addr && addr <= `time0_end) 
						 || (`time1_start <= addr && addr <= `time1_end)) == 1) M_ExcCode_out = `AdEs;
				else M_ExcCode_out = M_ExcCode_in;
			 end
		end
		else M_ExcCode_out = M_ExcCode_in;
		
	end
endmodule
