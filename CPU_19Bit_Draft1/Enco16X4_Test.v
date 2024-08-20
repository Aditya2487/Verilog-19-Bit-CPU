`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:34:17 08/14/2024
// Design Name:   Enco_16X4
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Enco16X4_Test.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Enco_16X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Enco16X4_Test;

	// Inputs
	reg x0;
	reg x1;
	reg x2;
	reg x3;
	reg x4;
	reg x5;
	reg x6;
	reg x7;
	reg x8;
	reg x9;
	reg x10;
	reg x11;
	reg x12;
	reg x13;
	reg x14;
	reg x15;

	// Outputs
	wire s3;
	wire s2;
	wire s1;
	wire s0;

	// Instantiate the Unit Under Test (UUT)
	Enco_16X4 uut (
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.x8(x8), 
		.x9(x9), 
		.x10(x10), 
		.x11(x11), 
		.x12(x12), 
		.x13(x13), 
		.x14(x14), 
		.x15(x15), 
		.s3(s3), 
		.s2(s2), 
		.s1(s1), 
		.s0(s0)
	);

	initial begin
		// Initialize Inputs
		x0 = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;
		x8 = 0;
		x9 = 0;
		x10 = 0;
		x11 = 0;
		x12 = 0;
		x13 = 0;
		x14 = 0;
		x15 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		x0=1;
		#10 x0=0 ;x1=1;
		#10 x1=0 ;x2=1;
		#10 x2=0 ;x3=1;
		#10 x3=0 ;x4=1;
		#10 x4=0 ;x5=1;
		#10 x5=0 ;x6=1;
		#10 x6=0 ;x7=1;
		#10 x7=0 ;x8=1;
		#10 x8=0 ;x9=1;
		#10 x9=0 ;x10=1;
		#10 x10=0 ;x11=1;
		#10 x11=0 ;x12=1;
		#10 x12=0 ;x13=1;
		#10 x13=0 ;x14=1;
		#10 x14=0 ;x15=1;		
		#10 x15=0;		$finish;
		
	end
      
endmodule

