`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:00 11/19/2019 
// Design Name: 
// Module Name:    mips 
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
module mips(
	 input clk,
	 input reset
    );
	
	pathway pathway (
		.clk(clk), 
		.reset(reset)
	);
	
endmodule
