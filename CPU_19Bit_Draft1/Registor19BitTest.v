`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:28 08/16/2024
// Design Name:   Register_19Bit
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Registor19BitTest.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_19Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Registor19BitTest;

	// Inputs
	reg [18:0] inpData;
	reg LOAD;
	reg INC;
	reg CLR;
	reg CLK;

	// Outputs
	wire [18:0] opData;

	// Instantiate the Unit Under Test (UUT)
	Register_19Bit uut (
		.inpData(inpData), 
		.LOAD(LOAD), 
		.INC(INC), 
		.CLR(CLR), 
		.CLK(CLK), 
		.opData(opData)
	);

	initial begin
		// Initialize Inputs
		inpData = 0;
		LOAD = 0;
		INC = 0;
		CLR = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
			
		// Add stimulus here

	end

      
endmodule

