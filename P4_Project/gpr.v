`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:26 11/11/2019 
// Design Name: 
// Module Name:    gpr 
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
module grf(
    input [4:0] read_reg1,
    input [4:0] read_reg2,
    input [4:0] write_reg,
    input [31:0] write_data,
    input regwrite,
    input reset,
	 input clk,
	 input [31:0]pc_new,
    output [31:0] read_data1,
    output [31:0] read_data2
    );
	
	reg [31:0]register[31:0];
	integer i=0;
	
	assign read_data1 = register[read_reg1];
	assign read_data2 = register[read_reg2];
	
	initial begin
		for(i=0;i<=31;i=i+1)begin
				register[i] = 0;
			end
	end

	always @ (posedge clk) begin
		if(reset==1)begin
			for(i=0;i<=31;i=i+1)begin
				register[i] = 0;
			end
		end
		
		else begin
			if(regwrite==1&&write_reg!=0)begin//²»ÈÃ 0ºÅ¼Ä´æÆ÷Ğ´ÈëÖµ
				register[write_reg] = write_data;
				$display("@%h: $%d <= %h", pc_new, write_reg,write_data);//
			end
		end
	end
	
endmodule
