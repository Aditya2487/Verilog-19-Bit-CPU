`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:31 08/16/2024 
// Design Name: 
// Module Name:    Registor_12Bit 
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
module Registor_12Bit(input [11:0] inpData,
input LOAD,INC,CLR,
input CLK,
output reg[11:0] opData 
    );
	 
	initial
		begin
		opData = 12'd0;
		end

	always @(posedge CLK)
		begin
			if( LOAD == 1'b1 )
				begin
				opData <= inpData; 
				end
			else if ( INC == 1'b1 )
				begin
				opData <= opData + 1 ;
				end
			else if ( CLR == 1'b1 )
				begin
				opData <= 12'd0;
				end
			else 
				begin
				opData <= opData;
				end
		end



endmodule
