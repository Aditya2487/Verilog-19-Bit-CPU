`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:47 08/13/2024 
// Design Name: 
// Module Name:    Deco_3X8 
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
module Deco_3X8(
	input [2:0]select,
	output reg[7:0]decoded_op
	);


always @(*)
begin
	case(select)
		3'b000	: decoded_op = 8'b00000001;
		3'b001	: decoded_op = 8'b00000010;
		3'b010	: decoded_op = 8'b00000100;
		3'b011	: decoded_op = 8'b00001000;
		3'b100	: decoded_op = 8'b00010000;
		3'b101	: decoded_op = 8'b00100000;
		3'b110	: decoded_op = 8'b01000000;
		3'b111	: decoded_op = 8'b10000000;
		default	: decoded_op = 8'b00000000;
	endcase
end
endmodule

