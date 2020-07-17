`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:56 12/10/2019 
// Design Name: 
// Module Name:    dmext 
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
`define lw  3'b000
`define lb  3'b001
`define lbu 3'b010
`define lh  3'b011
`define lhu 3'b100

module dmext(
    input [31:0] dm_out,
	 input [2:0] readdm_op,
	 input [31:0] addr,
    output reg [31:0] M_dm_out
    );
	 
	 reg [1:0]byte1;
	 reg byte2;

	always @(*) begin
		case (readdm_op)
			`lw: M_dm_out = dm_out;
			`lb: begin
				      byte1 = addr[1:0];
						case (byte1)
							2'b00: M_dm_out = {{24{dm_out[7]}},dm_out[7:0]};
							2'b01: M_dm_out = {{24{dm_out[15]}},dm_out[15:8]};
							2'b10: M_dm_out = {{24{dm_out[23]}},dm_out[23:16]};
							2'b11: M_dm_out = {{24{dm_out[31]}},dm_out[31:24]};
						endcase
				  end
				  
			`lbu:begin
				      byte1 = addr[1:0];
						case (byte1)
							2'b00: M_dm_out = {{24{1'b0}},dm_out[7:0]};
							2'b01: M_dm_out = {{24{1'b0}},dm_out[15:8]};
							2'b10: M_dm_out = {{24{1'b0}},dm_out[23:16]};
							2'b11: M_dm_out = {{24{1'b0}},dm_out[31:24]};
						endcase
				  end
				  
			`lh: begin
						byte2 = addr[1];
						case (byte2)
							1'b0:  M_dm_out = {{16{dm_out[15]}},dm_out[15:0]};
							1'b1:	 M_dm_out = {{16{dm_out[31]}},dm_out[31:16]};
						endcase
				  end
				  
			`lhu: begin
						byte2 = addr[1];
						case (byte2)
							1'b0:  M_dm_out = {{16{1'b0}},dm_out[15:0]};
							1'b1:	 M_dm_out = {{16{1'b0}},dm_out[31:16]};
						endcase
				  end
		endcase
	end
endmodule
