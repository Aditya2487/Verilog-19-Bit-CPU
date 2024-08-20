`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:41 08/15/2024
// Design Name:   ALU_19Bit
// Module Name:   C:/Verilog/CPU_19Bit_Draft1/ALU_TEST.v
// Project Name:  CPU_19Bit_Draft1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_19Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST;

	// Inputs
	reg [18:0] AC;
	reg [18:0] DR;
	reg ADD;
	reg SUB;
	reg MUL;
	reg DIV;
	reg AND;
	reg OR;
	reg XOR;
	reg NOT;
	reg INC;
	reg DEC;
	reg FFT;
	reg ENC;
	reg DNC;
	reg TNF;

	// Outputs
	wire [18:0] ALU_OP;
	wire OVF_FLAG;
	// Instantiate the Unit Under Test (UUT)
	ALU_19Bit uut (
		.AC(AC), 
		.DR(DR), 
		.ADD(ADD), 
		.SUB(SUB), 
		.MUL(MUL), 
		.DIV(DIV), 
		.AND(AND), 
		.OR(OR), 
		.XOR(XOR), 
		.NOT(NOT), 
		.INC(INC), 
		.DEC(DEC), 
		.FFT(FFT), 
		.ENC(ENC), 
		.DNC(DNC), 
		.TNF(TNF), 
		.ALU_OP(ALU_OP), 
		.OVF_FLAG(OVF_FLAG)
	
	);

	initial begin
		// Initialize Inputs
		AC = 0;
		DR = 0;
		ADD = 0;
		SUB = 0;
		MUL = 0;
		DIV = 0;
		AND = 0;
		OR = 0;
		XOR = 0;
		NOT = 0;
		INC = 0;
		DEC = 0;
		FFT = 0;
		ENC = 0;
		DNC = 0;
		TNF = 0;

		// Wait 100 ns for global reset to finish
		#10;
        AC = 19'd262142;
		  DR = 19'd7;
		  ADD = 1'b1;	  
		#10 SUB = 1'b1 ; ADD = 1'b0;
		#10 MUL = 1'b1 ; SUB = 1'b0;
		#10 DIV = 1'b1 ; MUL = 1'b0;
		#10 AC = -19'd262142;
			DR = 19'd262142;DIV = 1'b0;ADD = 1'b1;
	#10 SUB = 1'b1 ; ADD = 1'b0;
		#10 MUL = 1'b1 ; SUB = 1'b0;
		#10 DIV = 1'b1 ; MUL = 1'b0;
		#10 AC = -19'd2;
			DR = 19'b0100000000000000000;DIV = 1'b0;ADD = 1'b1;
	#10 SUB = 1'b1 ; ADD = 1'b0;
		#10 MUL = 1'b1 ; SUB = 1'b0;
		#10 DIV = 1'b1 ; MUL = 1'b0;
	
		
		#10 AND = 1'b1 ; DIV = 1'b0;
		#10 OR = 1'b1 ; AND = 1'b0;
		#10 XOR = 1'b1 ; OR = 1'b0;
		#10 NOT = 1'b1 ; XOR = 1'b0;
		#10 INC = 1'b1 ; NOT = 1'b0;
		#10 DEC = 1'b1 ; INC = 1'b0;
		#10 FFT = 1'b1 ; DEC = 1'b0;
		#10   AC = 19'd43;
				ENC = 1'b1 ; FFT = 1'b0;
		#10 DNC = 1'b1 ;AC = 19'd51110; ENC = 1'b0;
		#10 TNF = 1'b1 ;AC = 19'd43; DNC = 1'b0;
		#10 TNF = 1'b0;
		#10 $finish;

	end
      
endmodule

