`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:51 12/17/2019 
// Design Name: 
// Module Name:    D_Exc 
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
module D_Exc(
    input Default,
    input [6:2] ExcCode_in,
    output [6:2] ExcCode_out
    );
	
	assign ExcCode_out = (Default == 1) ? `Ri : ExcCode_in;

endmodule
