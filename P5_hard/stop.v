`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:58 12/01/2019 
// Design Name: 
// Module Name:    stop 
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
module stop(
	input [1:0]Tuse_rs,
	input [1:0]Tuse_rt,
	input [1:0]E_Tnew,
	input [1:0]M_Tnew,
	input [1:0]W_Tnew,
	
	output stop_en
   );
	
	assign stop_en = (Tuse_rs < E_Tnew) || (Tuse_rs < M_Tnew) || (Tuse_rs < W_Tnew) ||
					     (Tuse_rt < E_Tnew) || (Tuse_rt < M_Tnew) || (Tuse_rt < W_Tnew) ;


endmodule
