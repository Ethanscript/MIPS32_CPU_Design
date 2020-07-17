`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:16:36 12/17/2019 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
		input [31:0] path_addr,//
		input [31:0] path_data,//
		input path_we,//
		input [31:0] timer0_dout,
		input [31:0] timer1_dout,
		input IRQ0,//
		input IRQ1,//
		input interrupt,//
		output [5:0] HW,//
		output [31:0] Pr_RD,
		output [31:0] timer_addr,//
		output [31:0] timer_din,//
		output timer0_we,//
		output timer1_we//
		
    );
	 
		assign timer_addr = path_addr;
		assign timer_din = path_data;
		assign timer0_we = ((path_addr>=32'h0000_7F00 && path_addr<=32'h0000_7F0B && path_we) == 1) ? 1 : 0;
		assign timer1_we = ((path_addr>=32'h0000_7F10 && path_addr<=32'h0000_7F1B && path_we) == 1) ? 1 : 0;
		assign HW = {3'b0,interrupt,IRQ1,IRQ0};
		assign Pr_RD = ((path_addr>=32'h0000_7F00 && path_addr<=32'h0000_7F0B) == 1) ? timer0_dout :
							((path_addr>=32'h0000_7F10 && path_addr<=32'h0000_7F1B) == 1) ? timer1_dout :
																																			-1	;

endmodule
