`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:58:20 08/14/2024
// Design Name:   Bus_16X1_19bit
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/Bus_16X1_test.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bus_16X1_19bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Bus_16X1_test;

	// Inputs
	reg [18:0] busInput0;
	reg [18:0] busInput1;
	reg [18:0] busInput2;
	reg [18:0] busInput3;
	reg [18:0] busInput4;
	reg [18:0] busInput5;
	reg [18:0] busInput6;
	reg [18:0] busInput7;
	reg [18:0] busInput8;
	reg [18:0] busInput9;
	reg [18:0] busInput10;
	reg [18:0] busInput11;
	reg [18:0] busInput12;
	reg [18:0] busInput13;
	reg [18:0] busInput14;
	reg [18:0] busInput15;
	reg s3;
	reg s2;
	reg s1;
	reg s0;

	// Outputs
	wire [18:0] busOutput;

	// Instantiate the Unit Under Test (UUT)
	Bus_16X1_19bit uut (
		.busInput0(busInput0), 
		.busInput1(busInput1), 
		.busInput2(busInput2), 
		.busInput3(busInput3), 
		.busInput4(busInput4), 
		.busInput5(busInput5), 
		.busInput6(busInput6), 
		.busInput7(busInput7), 
		.busInput8(busInput8), 
		.busInput9(busInput9), 
		.busInput10(busInput10), 
		.busInput11(busInput11), 
		.busInput12(busInput12), 
		.busInput13(busInput13), 
		.busInput14(busInput14), 
		.busInput15(busInput15), 
		.s3(s3), 
		.s2(s2), 
		.s1(s1), 
		.s0(s0), 
		.busOutput(busOutput)
	);

	initial begin
		// Initialize Inputs
		busInput0 = 0;
		busInput1 = 0;
		busInput2 = 0;
		busInput3 = 0;
		busInput4 = 0;
		busInput5 = 0;
		busInput6 = 0;
		busInput7 = 0;
		busInput8 = 0;
		busInput9 = 0;
		busInput10 = 0;
		busInput11 = 0;
		busInput12 = 0;
		busInput13 = 0;
		busInput14 = 0;
		busInput15 = 0;
		s3 = 0;
		s2 = 0;
		s1 = 0;
		s0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  busInput0 = 19'd100;
		busInput1 = 19'd150;
		busInput2 = 19'd200;
		busInput3 = 19'd400;
		busInput4 = 19'd35;
		busInput5 = 19'd50;
		busInput6 = 19'd30;
		busInput7 = 19'd607;
		busInput8 = 19'd342;
		busInput9 = 19'd440;
		busInput10 = 19'd5000;
		busInput11 = 19'd780;
		busInput12 = 19'd690;
		busInput13 = 19'd245;
		busInput14 = 19'd780;
		busInput15 = 19'd123;
		  
		  
		 #10 {s3,s2,s1,s0} = 4'h0;
		 #10 {s3,s2,s1,s0} = 4'h1;
		 #10 {s3,s2,s1,s0} = 4'h2;
		 #10 {s3,s2,s1,s0} = 4'h3;
		 #10 {s3,s2,s1,s0} = 4'h4;
		 #10 {s3,s2,s1,s0} = 4'h5;
		 #10 {s3,s2,s1,s0} = 4'h6;
		 #10 {s3,s2,s1,s0} = 4'h7;
		 #10 {s3,s2,s1,s0} = 4'h8;
		 #10 {s3,s2,s1,s0} = 4'h9;
		 #10 {s3,s2,s1,s0} = 4'ha;
		 #10 {s3,s2,s1,s0} = 4'hb;
		 #10 {s3,s2,s1,s0} = 4'hc;
		 #10 {s3,s2,s1,s0} = 4'hd;
		 #10 {s3,s2,s1,s0} = 4'he;
		 #10 {s3,s2,s1,s0} = 4'hf;
		 #10 $finish;
		
		// Add stimulus here

	end
      
endmodule

