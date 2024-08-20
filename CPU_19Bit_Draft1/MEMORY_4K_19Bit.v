`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:15 08/16/2024 
// Design Name: 
// Module Name:    MEMORY_4K_19Bit 
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
module MEMORY_4K_19Bit(
input [11:0] addr,
input rd,wr,
input [18:0] dataIn,
output reg [18:0] dataOut
    );


reg [18:0] mem [0:4095];


initial 
begin
	mem[0] = 19'b0110000000000000100;
	mem[1] = 19'b0110100000000000101;
	mem[2] = 19'b1110000000011110001;
	mem[3] = 19'b0010000000000000000;
	mem[4] = 19'b0000000000000000010;
	mem[5] = 19'b0000000000000000110;
end


always@(*)
begin
	if( rd == 1'b1 && wr== 1'b0 ) 
		begin
			dataOut <= mem[addr];
		end
	else if ( rd == 1'b0 && wr== 1'b1 ) 
		begin 
			mem[addr] <= dataIn; 
		end
	else
		begin
			dataOut <= 19'bz;
		end

end

endmodule
