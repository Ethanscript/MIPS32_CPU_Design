`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:12 12/17/2019 
// Design Name: 
// Module Name:    F_Exc 
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
module F_Exc(
	input  [31:0] pc_test,
	output [6:2] ExcCode
   );

	assign ExcCode = (pc_test<32'h0000_3000 || pc_test>32'h0000_4ffc || pc_test[1:0] != 0) ? `AdEL : 0;

endmodule
