`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:36:51 08/13/2024
// Design Name:   Deco_3X8
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Decoder_Test_3X8.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Deco_3X8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_Test_3X8;

	// Inputs
	reg [2:0] select;

	// Outputs
	wire [7:0] decoded_op;

	// Instantiate the Unit Under Test (UUT)
	Deco_3X8 uut (
		.select(select), 
		.decoded_op(decoded_op)
	);

	initial begin
		// Initialize Inputs
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 #10 select = 3'd0;
		 #10 select = 3'd1;
		 #10 select = 3'd2;
		 #10 select = 3'd3;
		 #10 select = 3'd4;
		 #10 select = 3'd5;
		 #10 select = 3'd6;
		 #10 select = 3'd7;
		 #10 $finish;
	end
      
endmodule

