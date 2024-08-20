`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:59 08/16/2024 
// Design Name: 
// Module Name:    Stack_19X32 
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
module Stack_19X32(
input [18:0] inpData,
input PUSH,POP,CLR,
output reg [18:0] opData
//,output reg[4:0] stackPointer
    );

reg [18:0] stackData [0:31];
reg[4:0] stackPointer;


initial 
	begin
	 opData = 19'd0;
	 stackPointer <= 5'b00000;
	end

always @(posedge PUSH or posedge POP or posedge CLR)
	begin
		if(PUSH)
		begin
			stackData[stackPointer] = inpData;
			stackPointer <= stackPointer+1;
		end
		
		else if(POP)
		begin
			stackPointer <= stackPointer - 1 ;
			opData = stackData[stackPointer];
		end

		else if(CLR)
		begin
			stackPointer <= 5'b0; ;
		end
		
	end
endmodule
