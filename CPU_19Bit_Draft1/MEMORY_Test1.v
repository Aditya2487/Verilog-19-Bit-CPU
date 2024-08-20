`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:02:27 08/16/2024
// Design Name:   MEMORY_4K_19Bit
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/MEMORY_Test1.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEMORY_4K_19Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MEMORY_Test1;

	// Inputs
	reg [11:0] addr;
	reg rd;
	reg wr;
	reg [18:0] dataIn;

	// Outputs
	wire [18:0] dataOut;

	// Instantiate the Unit Under Test (UUT)
	MEMORY_4K_19Bit uut (
		.addr(addr), 
		.rd(rd), 
		.wr(wr), 
		.dataIn(dataIn), 
		.dataOut(dataOut)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		rd = 0;
		wr = 0;
		dataIn = 0;

		// Wait 100 ns for global reset to finish
		#10;
		addr = 43;
		dataIn = -53;
		wr = 1'b1;
		
		#10;
		addr = 0;
		dataIn = -53;
		wr = 1'b0;rd = 1'b1;
		
		#10;		wr = 1'b0;rd = 1'b1;
		addr = 1;

		#10;		wr = 1'b0;rd = 1'b1;
		addr = 2;

		#10;		wr = 1'b0;rd = 1'b1;
		addr = 43;
		// Add stimulus here

		#10;		wr = 1'b0;rd = 1'b0;		
		addr = 0;
		dataIn = 19245;
		wr = 1'b1;
		
		#10;		wr = 1'b0; rd = 1'b1;
		addr = 0;
		#10 $finish;
	end
      
endmodule

