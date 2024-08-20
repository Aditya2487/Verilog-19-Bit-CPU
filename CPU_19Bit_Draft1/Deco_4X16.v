`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:15 08/13/2024 
// Design Name: 
// Module Name:    Deco_4X16 
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
module Deco_4X16(
	input [3:0]select,
	output reg[15:0]decoded_op
	);


always @(*)
begin
	case(select)
		4'b000	: decoded_op = 16'b0000000000000001;
		4'b001	: decoded_op = 16'b0000000000000010;
		4'b010	: decoded_op = 16'b0000000000000100;
		4'b011	: decoded_op = 16'b0000000000001000;
		4'b100	: decoded_op = 16'b0000000000010000;
		4'b101	: decoded_op = 16'b0000000000100000;
		4'b110	: decoded_op = 16'b0000000001000000;
		4'b111	: decoded_op = 16'b0000000010000000;
		4'b1000	: decoded_op = 16'b0000000100000000;
		4'b1001	: decoded_op = 16'b0000001000000000;
		4'b1010	: decoded_op = 16'b0000010000000000;
		4'b1011	: decoded_op = 16'b0000100000000000;
		4'b1100	: decoded_op = 16'b0001000000000000;
		4'b1101	: decoded_op = 16'b0010000000000000;
		4'b1110	: decoded_op = 16'b0100000000000000;
		4'b1111	: decoded_op = 16'b1000000000000000;
		default	: decoded_op = 16'b0000000000000000;
	endcase
end

endmodule