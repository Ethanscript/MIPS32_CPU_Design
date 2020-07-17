`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:30 10/18/2019 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 
	parameter	state1=5'b00001,				 
					state2=5'b00010,
					state3=5'b00100,
					state4=5'b01000,
					state5=5'b10000;
					
	reg ans;
	assign out=ans;
	integer way;
	reg [4:0] state;
	
	initial begin
		state<=state1;
		ans<=0;
	end
	
	/*											这样写会有两个always-posedge块 就有可能有两个输出到 ans中 ， 即无法综合 所以必须写在一起。
	always @(posedge clr) begin
		state<=state1;
		ans<=0;
	end
	*/
	
	always @(posedge clk, posedge clr) begin 
		if(clr) begin
			state<=state1;
			ans<=0;
		end
		else begin
	
		case(state) //实质为mealy型状态机                              
						//mealy型 -> ： state(i): if(in) -> state_change out_change
						 //moore型 -> :  state(i): out<=out(state(i)) -> if(in) -> state_change
						
			state1:
				begin
					way=point(in);
					case(way)
						0:begin
							state<=state5; ans<=0;
						  end
						1:begin
							state<=state2; ans<=1;
						  end
					endcase
				end
				
			state2:
				begin
					way=point(in);
					case(way)
						0:begin
							state<=state4; ans<=0;
						  end
						1:begin
							state<=state3;	ans<=0;
						  end
					endcase
				end
				
			state3: state<=state;
			state4:
				begin
					way=point(in);
					case(way)
						0:begin
							state<=state5; ans<=0;
						  end
						1:begin
							state<=state2;	ans<=1;
						  end
					endcase
				end
				
			state5: ;
		endcase
		end
	end
	
function integer point;
	input [7:0] ascii;
	begin
		if(ascii==43||ascii==42) point=0;
		else point=1;
	end
endfunction

endmodule
