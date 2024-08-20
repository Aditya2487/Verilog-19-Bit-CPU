`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:31 08/13/2024 
// Design Name: 
// Module Name:    Deco_2X4 
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
module Deco_2X4(
    	input [1:0]select,
	output reg[3:0]decoded_op
	);

always @(*)
begin
	case(select)
		3'b00		: decoded_op = 4'b0001;
		3'b01		: decoded_op = 4'b0010;
		3'b10		: decoded_op = 4'b0100;
		3'b11		: decoded_op = 4'b1000;
		default	: decoded_op = 4'b0000;
	endcase
end
endmodule

