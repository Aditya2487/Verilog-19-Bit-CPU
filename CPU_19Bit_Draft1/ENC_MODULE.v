`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:55 08/15/2024 
// Design Name: 
// Module Name:    ENC_MODULE 
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
module ENC_MODULE(
input [18:0] input_data,
output [18:0] output_data
    );
	 
	 wire[18:0] temp;
	 
	assign temp[18] 	= ~input_data[18];
	assign temp[17] 	= input_data[1];
	assign temp[16] 	= ~input_data[16];
	assign temp[15] 	= input_data[3];
	assign temp[14] 	= ~input_data[14];
	assign temp[13] 	= input_data[5];
	assign temp[12] 	= ~input_data[12];
	assign temp[11] 	= input_data[7];
	assign temp[10] 	= ~input_data[10];
	assign temp[9] 	= input_data[9];
	assign temp[8] 	= ~input_data[8];
	assign temp[7] 	= input_data[11];
	assign temp[6] 	= ~input_data[6];
	assign temp[5] 	= input_data[13];
	assign temp[4] 	= ~input_data[4];
	assign temp[3] 	= input_data[15];
	assign temp[2] 	= ~input_data[2];
	assign temp[1] 	= input_data[17];
	assign temp[0] 	= ~input_data[0];
	
	assign output_data = temp ^ 19'b1110011001011110010;

endmodule
