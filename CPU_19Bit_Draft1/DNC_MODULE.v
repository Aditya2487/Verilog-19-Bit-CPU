`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:25 08/15/2024 
// Design Name: 
// Module Name:    DNC_MODULE 
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
module DNC_MODULE(
input [18:0] input_data,
output [18:0] output_data
    );
	 
	 wire[18:0] temp;
	assign temp = input_data ^ 19'b1110011001011110010;
	
	assign output_data[18] 	= ~temp[18];
	assign output_data[17] 	= temp[1];
	assign output_data[16] 	= ~temp[16];
	assign output_data[15] 	= temp[3];
	assign output_data[14] 	= ~temp[14];
	assign output_data[13] 	= temp[5];
	assign output_data[12] 	= ~temp[12];
	assign output_data[11] 	= temp[7];
	assign output_data[10] 	= ~temp[10];
	assign output_data[9] 	= temp[9];
	assign output_data[8] 	= ~temp[8];
	assign output_data[7] 	= temp[11];
	assign output_data[6] 	= ~temp[6];
	assign output_data[5] 	= temp[13];
	assign output_data[4] 	= ~temp[4];
	assign output_data[3] 	= temp[15];
	assign output_data[2] 	= ~temp[2];
	assign output_data[1] 	= temp[17];
	assign output_data[0] 	= ~temp[0];
	
	

endmodule
