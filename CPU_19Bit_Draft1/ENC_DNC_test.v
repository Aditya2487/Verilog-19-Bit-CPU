`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:57:30 08/15/2024
// Design Name:   ENC_MODULE
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/ENC_DNC_test.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ENC_MODULE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ENC_DNC_test;

	// Inputs
	reg [18:0] input_data;

	// Outputs
	wire [18:0] output_data;

	//Ecrypted output
	wire [18:0] enc_temp_output;
	wire [18:0] enc_temp_output1;
	wire [18:0] enc_temp_output2;
	wire [18:0] enc_temp_output3;
	wire [18:0] enc_temp_output4;
	
	
	// Instantiate the Unit Under Test (UUT)
	ENC_MODULE uutENC (
		.input_data(input_data), 
		.output_data(enc_temp_output)
	);
	
	ENC_MODULE uutENC1 (
		.input_data(enc_temp_output), 
		.output_data(enc_temp_output1)
	);
	
	ENC_MODULE uutENC2 (
		.input_data(enc_temp_output1), 
		.output_data(enc_temp_output2)
	);
	
	ENC_MODULE uutENC3 (
		.input_data(enc_temp_output2), 
		.output_data(enc_temp_output3)
	);
	ENC_MODULE uutENC4 (
		.input_data(enc_temp_output3), 
		.output_data(enc_temp_output4)
	);
	

	DNC_MODULE uutDNC (
		.input_data(enc_temp_output), 
		.output_data(output_data)
	);

	initial begin
		// Initialize Inputs
		input_data = 0;

		// Wait 100 ns for global reset to finish
		#10;
		input_data = 19'd100;
		#10 input_data = 19'd150;
		#10 input_data  = 19'd200;
		#10 input_data  = 19'b0000000000000000000;
		#10 input_data  = 19'd35;
		#10 input_data  = 19'd50;
		#10 input_data  = 19'd30;
		#10 input_data  = 19'd607;
		#10 input_data  = 19'd342;
		#10 input_data  = 19'd440;
		#10 input_data  = 19'd5000;
		#10 input_data  = 19'd780;
		#10 input_data  = 19'd690;
		#10 input_data  = 19'd245;
		#10 input_data  = 19'd780;
		#10 input_data  = 19'b1111111111111111111;
		#10 $finish;
		// Add stimulus here

	end
      
endmodule

