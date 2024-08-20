`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:36 08/18/2024 
// Design Name: 
// Module Name:    UserRegister_19Bit 
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
module UserRegister_19Bit(
input [18:0] inpData,
input LOAD,INC,DEC,CLR,
input CLK,
output reg[18:0] opData 
    );
	 
	
	initial
		begin
		opData = 19'd0;
	
		end
	
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
			else if ( DEC == 1'b1 )
				begin
				opData = opData - 1 ;
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



