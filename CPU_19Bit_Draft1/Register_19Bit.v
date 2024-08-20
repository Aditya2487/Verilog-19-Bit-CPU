`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:37 08/16/2024 
// Design Name: 
// Module Name:    Register_19Bit 
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
module Register_19Bit(
input [18:0] inpData,
input LOAD,INC,CLR,
input CLK,
output reg[18:0] opData 
    );
	 
//reg [18:0] registorMem;
	
	initial
		begin
		opData = 19'd0;
	//	registorMem = 19'd0;
		end
	
	//assign opData = registorMem;
	always @(posedge CLK)
		begin
			if( LOAD == 1'b1 )
				begin
				opData = inpData; 
				end
			else if ( INC == 1'b1 )
				begin
				opData = opData + 1 ;
				end
			else if ( CLR == 1'b1 )
				begin
				opData = 19'd0;
				end
			else 
				begin
				opData = opData;
				end
		end



endmodule
