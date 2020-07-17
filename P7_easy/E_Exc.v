`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:15:46 12/18/2019 
// Design Name: 
// Module Name:    E_Exc 
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
module E_Exc(
    input E_whether_ov,
	 input overflow,
    input [6:2] ExcCode_in,
    output [6:2] ExcCode_out
    );

	assign ExcCode_out = (E_whether_ov == 1 && overflow == 1) ? `Ov : ExcCode_in ;
	
endmodule
