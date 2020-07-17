`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:54 11/22/2019 
// Design Name: 
// Module Name:    im 
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
module im(
    input [31:0] address,
    output [31:0] instr
    );
	
	 reg [31:0]IM[1023:0];
	 integer i;
	 initial begin
			for(i=0;i<=1023;i=i+1) begin
				IM[i] = 0;//initial不能阻塞赋值！！！！，否则会落后于readmemh
			end
			$readmemh ("code.txt",IM); //必须初始化
	 end
	 assign instr = IM[address[11:2]];
endmodule
