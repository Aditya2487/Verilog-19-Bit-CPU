`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:09:19 08/16/2024
// Design Name:   Register_19Bit
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Registor19BitTesting.v
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

module Registor19BitTesting;

	// Inputs
	reg [18:0] inpData;
	reg LOAD;
	reg INC;
	reg CLR;
	reg CLK;

	// Outputs
	wire [18:0] opData;

	// Instantiate the Unit Under Test (UUT)
	Register_19Bit uut1 (
		.inpData(inpData), 
		.LOAD(LOAD), 
		.INC(INC), 
		.CLR(CLR), 
		.CLK(CLK), 
		.opData(opData)
	);

	initial begin
		forever #10 CLK = ~CLK ;
		end
	initial begin
		// Initialize Inputs
		inpData = 0;
		LOAD = 0;
		INC = 0;
		CLR = 0;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
      
		inpData = 19'd2349;
		LOAD = 1'b1;
		#10
		LOAD = 1'b0;
		inpData = 19'd0;
		
		#10
		INC = 1'b1;
		
		#10
		INC = 1'b0;
		CLR = 1'b1;
	
	
		

		#20 CLR = 1'b0;$finish;
		// Add stimulus here

	end
      
endmodule

