`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:33:11 08/18/2024
// Design Name:   Equality_Detector
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/EqDetector_Test.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Equality_Detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EqDetector_Test;

	// Inputs
	reg [18:0] DR;
	reg [18:0] AC;

	// Outputs
	wire EQ;

	// Instantiate the Unit Under Test (UUT)
	Equality_Detector uut (
		.DR(DR), 
		.AC(AC), 
		.EQ(EQ)
	);

	initial begin
		// Initialize Inputs
		DR = 0;
		AC = 0;

		// Wait 100 ns for global reset to finish
		#10;
      DR = 20;
		AC = 40;
		#10;
      DR = 20;
		AC = 20;
		#10;
      DR = 0;
		AC = 0;
		#10;
      DR = 0;
		AC = 1;
		#10;
      DR = 2;
		AC = 3;
		#10;
      DR = 29;
		AC = -29;
		#10;
      DR = -20;
		AC = -20;
		#10;
      DR = 0;
		AC = 0;
		#10;$finish;








		// Add stimulus here

	end
      
endmodule

