`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:00 08/15/2024 
// Design Name: 
// Module Name:    ALU_19Bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_19Bit(
	input [18:0]AC,DR,
	input ADD,
			SUB,
			MUL,
			DIV,
			AND,
			OR,
			XOR,
			NOT,
			INC,
			DEC,
			FFT,
			ENC,
			DNC,
			TNF,
			output reg[18:0] ALU_OP,
			output reg OVF_FLAG
    );

wire [18:0]enc_op;
wire [18:0]dnc_op;
reg [37:0] tempAC;
reg [37:0] tempDR;
reg [37:0] tempProduct;

ENC_MODULE enc_mod (
		.input_data(AC), 
		.output_data(enc_op)
	);
	

DNC_MODULE dnc_mod (
		.input_data(AC), 
		.output_data(dnc_op)
	);
	
initial 
	begin
		ALU_OP = 19'b0;
		OVF_FLAG = 1'b0;
		tempProduct = 38'b0;

	end
always @(*)
begin
	if(ADD)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC + DR ;
			// Overflow condition - ( A'B'C + ABC' )
			OVF_FLAG = (	(~AC[18])&(~DR[18])&(ALU_OP[18])	) 
						| (	(AC[18])&(DR[18])&(~ALU_OP[18])	); 
		end
	else if (SUB)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC - DR;
			// Overflow condition - ( AB'C' + A'BC )
			OVF_FLAG = (	(AC[18])&(~DR[18])&(~ALU_OP[18])	) 
						| (	(~AC[18])&(DR[18])&(ALU_OP[18])	); 
		end
	else if (MUL)
		begin
			//Storing 19 bit AC to a 38 bit tempAC in signed format
			tempAC[18:0] = AC; 
			tempAC[37:19] = {AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18],AC[18]}; 
			//Storing 19 bit DR to a 38 bit tempDR in signed format
			tempDR[18:0] = DR; 
			tempDR[37:19] = {DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18],DR[18]};
			tempProduct = (tempAC *tempDR) ;
			ALU_OP = tempProduct;
			// Overflow condition - bits 37 to 18 must either all be 0 or all be 1
			OVF_FLAG = &tempProduct[37:18] ^ |tempProduct[37:18] ;
		end
	else if (DIV)
		begin
			tempProduct = 37'b0;
			if(DR != 0 )
				begin
					ALU_OP = AC / DR;
					OVF_FLAG = 1'b0;
				end
			else
				begin
					ALU_OP = 19'b0;
					OVF_FLAG = 1'b0;
				end
		end
	else if (AND)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC & DR;
			OVF_FLAG = 1'b0;
		end
	else if (OR)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC | DR;
			OVF_FLAG = 1'b0;
		end
	else if (XOR)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC ^ DR;
			OVF_FLAG = 1'b0;
		end
	else if (NOT)
		begin
			tempProduct = 37'b0;
			ALU_OP = ~DR;
			OVF_FLAG = 1'b0;
		end
	else if (INC)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC + 1 ;
			OVF_FLAG = 1'b0;
		end
	else if (DEC)
		begin
			tempProduct = 37'b0;
			ALU_OP = AC - 1;
			OVF_FLAG = 1'b0;
		end
	else if (FFT)
		begin
			tempProduct = 37'b0;
			ALU_OP = 19'b0 ;
			OVF_FLAG = 1'b0;
		end
	else if (ENC)
		begin
			tempProduct = 37'b0;
			ALU_OP = enc_op ;
			OVF_FLAG = 1'b0;
		end
	else if (DNC)
		begin
			tempProduct = 37'b0;
			ALU_OP = dnc_op;
			OVF_FLAG = 1'b0;
		end
	else if (TNF)
		begin
			tempProduct = 37'b0;
			ALU_OP = DR;
			OVF_FLAG = 1'b0;
		end
	else 
		begin
			tempProduct = 37'b0;
			ALU_OP = 19'b0;
			OVF_FLAG = 1'b0;
		end
end	
	
	
endmodule
