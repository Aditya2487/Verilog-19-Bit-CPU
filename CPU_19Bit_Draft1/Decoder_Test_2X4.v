`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:06 08/13/2024
// Design Name:   Deco_2X4
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Decoder_Test_2X4.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Deco_2X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_Test_2X4;

	// Inputs
	reg [1:0] select;

	// Outputs
	wire [3:0] decoded_op;

	// Instantiate the Unit Under Test (UUT)
	Deco_2X4 uut (
		.select(select), 
		.decoded_op(decoded_op)
	);

	initial begin
		// Initialize Inputs
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 #10 select = 2'd0;
		 #10 select = 2'd1;
		 #10 select = 2'd2;
		 #10 select = 2'd3;
		 #10 $finish;
	end
      
endmodule

