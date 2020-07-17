`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:24 10/17/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );

	reg [31:0] out;
	assign C=out;
	initial begin
		out<=0;
	end
	
	always @(*) begin   //有@(*) 没有输入时会自动跳出   直接always则会timelimit
		case(ALUOp)
			3'b000:out<=A+B;
			3'b001:out<=A-B;
			3'b010:out<=A&B;
			3'b011:out<=A|B;
			3'b100:out<=A>>B;
			3'b101:out<=$signed(A)>>>B;    //signed(A)是赋值时的定义 $为临时转换						
													//$signed(A)别用在三目运算符中 
		endcase
	end

endmodule
