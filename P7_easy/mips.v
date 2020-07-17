`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:02:57 12/01/2019 
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
    input reset,
	 input interrupt,
	 output [31:0] addr
    );
	 
	 wire [31:0] Pr_RD, path_addr, path_data, timer_addr, timer_din, timer0_dout, timer1_dout, path_pc;
	 wire [5:0] HW ;
	 assign addr = path_pc ;
	 
	 pathway pathway (
		.clk(clk),
		.reset(reset),
		.Pr_RD(Pr_RD), //
		.HW(HW),	
		.path_addr(path_addr),
		.path_data(path_data),
		.path_we(path_we),
		.path_pc(path_pc)
	 );
	 
	 timer timer0 (
		.clk(clk), 
		.reset(reset), 
		.Addr(timer_addr[31:2]), 
		.WE(timer0_we), 
		.Din(timer_din), 
		.Dout(timer0_dout), 
		.IRQ(IRQ0)
	);

	 timer timer1 (
		.clk(clk), 
		.reset(reset), 
		.Addr(timer_addr[31:2]), 
		.WE(timer1_we), 
		.Din(timer_din), 
		.Dout(timer1_dout), 
		.IRQ(IRQ1)
	);

	bridge bridge (
		.path_addr(path_addr), 
		.path_data(path_data), 
		.path_we(path_we), 
		.timer0_dout(timer0_dout), 
		.timer1_dout(timer1_dout), 
		.IRQ0(IRQ0), 
		.IRQ1(IRQ1), 
		.interrupt(interrupt), 
		.HW(HW), 
		.Pr_RD(Pr_RD), 
		.timer_addr(timer_addr), 
		.timer_din(timer_din), 
		.timer0_we(timer0_we), 
		.timer1_we(timer1_we)
	);

 
endmodule


/*
module test_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
	
		clk = 0; 
		reset = 1;
		#40 reset = 0;
		
	end
	
	always begin
		#2;
		clk=~clk;
   end
      
endmodule
*/