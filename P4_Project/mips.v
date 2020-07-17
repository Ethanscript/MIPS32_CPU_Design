`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:11:29 11/12/2019 
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

/* test_mips

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
		// Initialize Inputs
		clk = 0; //Ϊ0
		reset = 0;
		//reset = 1;

		// Wait 100 ns for global reset to finish        
		// Add stimulus here
		//#100;
	end
	
	always begin
		#20;
		clk=~clk;
   end
endmodule

*/
