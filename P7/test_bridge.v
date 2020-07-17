`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:39:03 12/17/2019
// Design Name:   bridge
// Module Name:   C:/Users/Ethan/Desktop/test_code/P7/p7/test_bridge.v
// Project Name:  p7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bridge
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bridge;

	// Inputs
	reg [31:0] path_addr;
	reg [31:0] path_data;
	reg path_we;
	reg [31:0] timer0_dout;
	reg [31:0] timer1_dout;
	reg IRQ0;
	reg IRQ1;
	reg interrupt;

	// Outputs
	wire [7:2] HW;
	wire [31:0] PR_RD;
	wire [31:0] timer_addr;
	wire [31:0] timer_din;
	wire timer0_we;
	wire timer1_we;

	// Instantiate the Unit Under Test (UUT)
	bridge uut (
		.path_addr(path_addr), 
		.path_data(path_data), 
		.path_we(path_we), 
		.timer0_dout(timer0_dout), 
		.timer1_dout(timer1_dout), 
		.IRQ0(IRQ0), 
		.IRQ1(IRQ1), 
		.interrupt(interrupt), 
		.HW(HW), 
		.PR_RD(PR_RD), 
		.timer_addr(timer_addr), 
		.timer_din(timer_din), 
		.timer0_we(timer0_we), 
		.timer1_we(timer1_we)
	);

	initial begin
		// Initialize Inputs
		path_addr = 0;
		path_data = 0;
		path_we = 0;
		timer0_dout = 0;
		timer1_dout = 0;
		IRQ0 = 0;
		IRQ1 = 0;
		interrupt = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

