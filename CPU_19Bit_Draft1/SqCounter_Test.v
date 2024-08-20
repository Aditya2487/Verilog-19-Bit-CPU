`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:37 08/16/2024
// Design Name:   SqCounter
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/SqCounter_Test.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SqCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SqCounter_Test;

	// Inputs
	reg CLK;
	reg CLR;

	// Outputs
	wire T0;
	wire T1;
	wire T2;
	wire T3;
	wire T4;
	wire T5;
	wire T6;
	wire T7;
	wire T8;
	wire T9;
	wire T10;
	wire T11;
	wire T12;
	wire T13;
	wire T14;
	wire T15;

	// Instantiate the Unit Under Test (UUT)
	SqCounter uut (
		.CLK(CLK), 
		.CLR(CLR), 
		.T0(T0), 
		.T1(T1), 
		.T2(T2), 
		.T3(T3), 
		.T4(T4), 
		.T5(T5), 
		.T6(T6), 
		.T7(T7), 
		.T8(T8), 
		.T9(T9), 
		.T10(T10), 
		.T11(T11), 
		.T12(T12), 
		.T13(T13), 
		.T14(T14), 
		.T15(T15)
	);
reg CLR_TEST_CONDITION;

	initial begin
		// Initialize Inputs
		CLK = 0;
		CLR = 0;
	
	
	
	
	assign CLR_TEST_CONDITION = T10 ;
	assign CLR = CLR_TEST_CONDITION ;	
		// Wait 100 ns for global reset to finish
		#10;
        forever #10 CLK = ~CLK ;
		// Add stimulus here

	end
			
		initial begin
		#400 CLR = 1; #100 CLR = 0;
		end
		
endmodule

