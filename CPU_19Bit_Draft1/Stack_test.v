`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:30 08/16/2024
// Design Name:   Stack_19X32
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Stack_test.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stack_19X32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stack_test;

	// Inputs
	reg [18:0] inpData;
	reg PUSH;
	reg POP;
	reg CLR;

	// Outputs
	wire [18:0] opData;
//	wire [4:0] stackPointer;
	// Instantiate the Unit Under Test (UUT)
	Stack_19X32 uut (
		.inpData(inpData), 
		.PUSH(PUSH), 
		.POP(POP), 
		.CLR(CLR), 
		.opData(opData)

	);

	initial begin
		// Initialize Inputs
		inpData = 0;
		PUSH = 0;
		POP = 0;
		CLR = 0;

		// Wait 100 ns for global reset to finish
		#10;
		inpData = 1123;
		#10 PUSH = 1 ;#10 PUSH = 0 ;
		inpData = 235;
		#10 PUSH = 1 ;#10 PUSH = 0 ;
		inpData = -9867;
		#10 PUSH = 1 ;#10 PUSH = 0 ;
		
		#10 POP = 1 ;#10 POP = 0 ;
		#10 POP = 1 ;#10 POP = 0 ;
		
		#10 CLR= 1 ;#10 CLR = 0 ;
		inpData = 167;
		#10 PUSH = 1 ;#10 PUSH = 0 ;
		
		#10 POP = 1 ;#10 POP = 0 ;
		#10 $finish;

		// Add stimulus here

	end
      
endmodule

