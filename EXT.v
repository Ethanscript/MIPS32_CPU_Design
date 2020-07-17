`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:18:48 10/18/2019 
// Design Name: 
// Module Name:    ext 
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
module ext(
	input [15:0] imm,
	input [1:0] EOp,
	output [31:0] ext
    );
	
	reg [31:0] out;
	assign ext=out;
	integer i=0;
	
	always @(*)begin
		case(EOp)
			2'b00:  //imm = 0x0000fabc  expected to get 0x
				begin
					for(i=16;i<=31;i=i+1) begin
						out[i]<=imm[15];
					end
					out[15:0]<=imm;
				end
			2'b01:
				begin
					out[31:16]<=0;
					out[15:0]<=imm;
				end
			2'b10:
				begin
					out[31:16]<=imm;
					out[15:0]<=0;
				end
			2'b11:
				begin
					for(i=16;i<=31;i=i+1) begin
						out[i]<=imm[15];
					end
					out[15:0]<=imm;
					out<=out<<2;
				end
		endcase
	end

endmodule
