`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:24 08/13/2024
// Design Name:   Deco_4X16
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Decoder_Test_4X16.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Deco_4X16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_Test_4X16;

	// Inputs
	reg [3:0] select;

	// Outputs
	wire [15:0] decoded_op;

	// Instantiate the Unit Under Test (UUT)
	Deco_4X16 uut (
		.select(select), 
		.decoded_op(decoded_op)
	);

	initial begin
		// Initialize Inputs
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 #10 select = 4'h0;
		 #10 select = 4'h1;
		 #10 select = 4'h2;
		 #10 select = 4'h3;
		 #10 select = 4'h4;
		 #10 select = 4'h5;
		 #10 select = 4'h6;
		 #10 select = 4'h7;
		 #10 select = 4'h8;
		 #10 select = 4'h9;
		 #10 select = 4'ha;
		 #10 select = 4'hb;
		 #10 select = 4'hc;
		 #10 select = 4'hd;
		 #10 select = 4'he;
		 #10 select = 4'hf;
		 #10 $finish;
	end
      
endmodule

