`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:11 08/16/2024 
// Design Name: 
// Module Name:    SqCounter 
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
module SqCounter(
input CLK,CLR,
output T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15
    );

reg [3:0] counter;
wire [15:0] decoded_op;
Deco_4X16 SqDecoder (
    .select(counter), 
    .decoded_op(decoded_op)
    );
	 
assign {T15,T14,T13,T12,T11,T10,T9,T8,T7,T6,T5,T4,T3,T2,T1,T0} = decoded_op ;
	 
initial
	begin
		counter = 4'b0000;
	end

always @(posedge CLK)
	begin
		if(CLR)
			counter = 4'b0000;
		else
			counter = counter + 1; 
	end



endmodule
