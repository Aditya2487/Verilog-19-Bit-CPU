`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:05 08/13/2024 
// Design Name: 
// Module Name:    CPU_Main 
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
module CPU_Main(
input CLK,
output [18:0]OutputReg
    );

wire [18:0] inputRegC;
wire [18:0] outputRegC;
wire LD_RegC, INC_RegC, DEC_RegC, CLR_RegC;

wire [18:0] inputRegD;
wire [18:0] outputRegD;
wire LD_RegD, INC_RegD, DEC_RegD, CLR_RegD;

wire [18:0] inputRegE;
wire [18:0] outputRegE;
wire LD_RegE, INC_RegE, DEC_RegE, CLR_RegE;

wire [18:0] inputRegF;
wire [18:0] outputRegF;
wire LD_RegF, INC_RegF, DEC_RegF, CLR_RegF;

assign OutputReg =  outputRegF ; 

wire [18:0] inputDR;
wire [18:0] outputDR;
wire LD_DR, INC_DR, CLR_DR;

wire [18:0] inputAC;
wire [18:0] outputAC;
wire LD_AC, INC_AC, CLR_AC;

wire [18:0] inputIR;
wire [18:0] outputIR;
wire LD_IR, INC_IR, CLR_IR;

wire [11:0] inputPC;
wire [11:0] outputPC;
wire LD_PC, INC_PC, CLR_PC;

wire [11:0] inputAR;
wire [11:0] outputAR;
wire LD_AR, INC_AR, CLR_AR;

wire [11:0] memAddr;
wire [18:0] memInput;
wire [18:0] memOutput;
wire memRD;
wire memWR;

wire [18:0] stkInput;
wire [18:0] stkOutput;
wire PUSH_STK;
wire POP_STK;
wire CLR_STK;


wire [18:0] busInput0; wire [18:0] busInput1; wire [18:0] busInput2; wire [18:0] busInput3;
wire [18:0] busInput4; wire [18:0] busInput5; wire [18:0] busInput6; wire [18:0] busInput7;
wire [18:0] busInput8; wire [18:0] busInput9; wire [18:0] busInput10; wire [18:0] busInput11;
wire [18:0] busInput12; wire [18:0] busInput13; wire [18:0] busInput14; wire [18:0] busInput15;

wire [18:0] busOutput;

wire bS3, bS2, bS1, bS0;

wire busCntr0,
	  busCntr1_AR,
	  busCntr2_PC,
	  busCntr3_DR,
	  busCntr4_AC,
	  busCntr5,
	  busCntr6_IR,
	  busCntr7_MEM,
	  busCntr8_STK,
	  busCntr9,
	  busCntr10,
	  busCntr11,
	  busCntr12_RegC,
	  busCntr13_RegD,
	  busCntr14_RegE,
	  busCntr15_RegF; 

wire ALU_ADD, ALU_SUB, ALU_MUL ,ALU_DIV ,ALU_AND ,ALU_OR ,ALU_XOR ,ALU_NOT 
	 ,ALU_INC ,ALU_DEC ,ALU_FFT ,ALU_ENC ,ALU_DNC ,ALU_TNF ;
	
wire [7:0]D1_op; 
wire [3:0]Dv_op; 
wire [3:0]Dw_op; 
wire [15:0]D2_op; 
wire [3:0]Dx_op; 
wire [3:0]Dy_op; 
wire [3:0]Dz_op; 

wire OVF_FLAG;	 

wire SC_CLR;
wire T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15 ;

assign ALU_INC = 1'b0; assign ALU_DEC = 1'b0;

assign busInput0 = 19'd0; assign busCntr0 = 1'b0;
assign busInput5 = 19'd0; assign busCntr5 = 1'b0;
assign busInput9 = 19'd0; assign busCntr9 = 1'b0;
assign busInput10 = 19'd0; assign busCntr10 = 1'b0;
assign busInput11 = 19'd0; assign busCntr11 = 1'b0;
									assign busCntr3_DR = 1'b0;

assign busInput1[18:12] = 7'b0000000;
assign busInput1[11:0] = outputAR;

assign busInput2[18:12] = 7'b0000000;
assign busInput2[11:0] = outputPC;

assign busInput3 = outputDR;
assign busInput4 = outputAC;
assign busInput6 = outputIR;
assign busInput7 = memOutput;
assign busInput8 = stkOutput;

assign busInput12 = outputRegC;
assign busInput13 = outputRegD;
assign busInput14 = outputRegE;
assign busInput15 = outputRegF;


assign memInput = busOutput;
assign stkInput = busOutput;
assign inputIR = busOutput;
assign inputDR = busOutput;
assign inputRegC = busOutput;
assign inputRegD = busOutput;
assign inputRegE = busOutput;
assign inputRegF = busOutput;

//assign inputAC = // ALU 

assign inputPC = busOutput[11:0];
assign inputAR = busOutput[11:0];


assign CLR_DR = 1'b0;

assign CLR_AC = 1'b0;

assign CLR_IR = 1'b0;

assign CLR_PC = 1'b0;

assign CLR_AR = 1'b0;

assign CLR_STK = 1'b0;

assign CLR_RegC = 1'b0;

assign CLR_RegD = 1'b0;

assign CLR_RegE = 1'b0;

assign CLR_RegF = 1'b0;

// Instantiate User Register C
UserRegister_19Bit RegC (.inpData(inputRegC), 
    .LOAD(LD_RegC), .INC(INC_RegC), .DEC(DEC_RegC), .CLR(CLR_RegC), .CLK(CLK), 
    .opData(outputRegC) );

// Instantiate User Register D
UserRegister_19Bit RegD (.inpData(inputRegD), 
    .LOAD(LD_RegD), .INC(INC_RegD), .DEC(DEC_RegD), .CLR(CLR_RegD), .CLK(CLK), 
    .opData(outputRegD) );

// Instantiate User Register E
UserRegister_19Bit RegE (.inpData(inputRegE), 
    .LOAD(LD_RegE), .INC(INC_RegE), .DEC(DEC_RegE), .CLR(CLR_RegE), .CLK(CLK), 
    .opData(outputRegE) );

// Instantiate User Register F
UserRegister_19Bit RegF (.inpData(inputRegF), 
    .LOAD(LD_RegF), .INC(INC_RegF), .DEC(DEC_RegF), .CLR(CLR_RegF), .CLK(CLK), 
    .opData(outputRegF) );

//Instantiate DR
Register_19Bit DR (.inpData(inputDR), 
    .LOAD(LD_DR),.INC(INC_DR), .CLR(CLR_DR), .CLK(CLK), 
    .opData(outputDR) );

//Instantiate AC
Register_19Bit AC (.inpData(inputAC), 
    .LOAD(LD_AC),.INC(INC_AC), .CLR(CLR_AC), .CLK(CLK), 
    .opData(outputAC) );


//Instantiate IR
Register_19Bit IR (.inpData(inputIR), 
    .LOAD(LD_IR),.INC(INC_IR), .CLR(CLR_IR), .CLK(CLK), 
    .opData(outputIR) );

// Instantiate PC
Registor_12Bit PC (.inpData(inputPC), 
    .LOAD(LD_PC), .INC(INC_PC), .CLR(CLR_PC), .CLK(CLK), 
    .opData(outputPC) );

// Instantiate AR
Registor_12Bit AR (.inpData(inputAR), 
    .LOAD(LD_AR), .INC(INC_AR), .CLR(CLR_AR), .CLK(CLK), 
    .opData(outputAR) );

// Instantiate Memory 19bit X 4096 
MEMORY_4K_19Bit memory19X4K (.addr(outputAR), 
    .rd(memRD), .wr(memWR), 
    .dataIn(memInput), .dataOut(memOutput) );

// Instantiate Stack 19 X 32
Stack_19X32 stack19X32 (.inpData(stkInput), 
    .PUSH(PUSH_STK), .POP(POP_STK), .CLR(CLR_STK), 
    .opData(stkOutput) );

// Instantiate Encoder For Bus I/p Selection

Enco_16X4 instance_name ( .x0(busCntr0), .x1(busCntr1_AR), .x2(busCntr2_PC), .x3(busCntr3_DR), .x4(busCntr4_AC), .x5(busCntr5), .x6(busCntr6_IR), .x7(busCntr7_MEM),
	 .x8(busCntr8_STK), .x9(busCntr9), .x10(busCntr10), .x11(busCntr11), .x12(busCntr12_RegC), .x13(busCntr13_RegD), .x14(busCntr14_RegE), .x15(busCntr15_RegF), 
    .s3(bS3), .s2(bS2), .s1(bS1), .s0(bS0) );

// Instantiate the Bus module
Bus_16X1_19bit commonBus16X1 (
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
    .s3(bS3), 
    .s2(bS2), 
    .s1(bS1), 
    .s0(bS0), 
    .busOutput(busOutput) );

// Instantiate the ALU module
ALU_19Bit ALU (    .AC(outputAC), .DR(outputDR),
		.ADD(ALU_ADD), .SUB(ALU_SUB), .MUL(ALU_MUL),     .DIV(ALU_DIV), .AND(ALU_AND), .OR(ALU_OR), .XOR(ALU_XOR), .NOT(ALU_NOT), 
    .INC(ALU_INC), .DEC(ALU_DEC), .FFT(ALU_FFT), .ENC(ALU_ENC), .DNC(ALU_DNC), .TNF(ALU_TNF), 
    .ALU_OP(inputAC), .OVF_FLAG(OVF_FLAG) );


// Initalizing Decoders connected between IR and Control Unit
Deco_3X8 Deco_1 (.select(outputIR[18:16]), 
    .decoded_op(D1_op) );
	 
Deco_2X4 Deco_V (.select(outputIR[15:14]), 
    .decoded_op(Dv_op) );


Deco_2X4 Deco_W (.select(outputIR[13:12]), 
    .decoded_op(Dw_op) );
	 
Deco_4X16 Deco_2 (.select(outputIR[9:6]), 
    .decoded_op(D2_op) );

Deco_2X4 Deco_X (.select(outputIR[5:4]), 
    .decoded_op(Dx_op) );
	 
	 
Deco_2X4 Deco_Y (.select(outputIR[3:2]), 
    .decoded_op(Dy_op) );
	 
	 
Deco_2X4 Deco_Z (.select(outputIR[1:0]), 
    .decoded_op(Dz_op) );
	 
	 
// Intializing Sequence Counter 
SqCounter SeqCounter (.CLK(CLK), .CLR(SC_CLR), 
    .T0(T0), .T1(T1), .T2(T2), .T3(T3), .T4(T4), .T5(T5), .T6(T6), .T7(T7), 
    .T8(T8), .T9(T9), .T10(T10), .T11(T11), .T12(T12), .T13(T13), .T14(T14), .T15(T15) );
	 
//  ************ Control Unit Declaration

ControlUnit control_unit (
    .LD_AR(LD_AR), 
    .LD_PC(LD_PC), 
    .INC_PC(INC_PC), 
    .LD_DR(LD_DR), 
    .LD_AC(LD_AC), 
    .LD_IR(LD_IR), 
    .LD_RegC(LD_RegC), 
    .INC_RegC(INC_RegC), 
    .DEC_RegC(DEC_RegC), 
    .LD_RegD(LD_RegD), 
    .INC_RegD(INC_RegD), 
    .DEC_RegD(DEC_RegD), 
    .LD_RegE(LD_RegE), 
    .INC_RegE(INC_RegE), 
    .DEC_RegE(DEC_RegE), 
    .LD_RegF(LD_RegF), 
    .INC_RegF(INC_RegF), 
    .DEC_RegF(DEC_RegF), 
    .STK_PUSH(PUSH_STK), 
    .STK_POP(POP_STK), 
    .MEM_RD(memRD), 
    .MEM_WR(memWR), 
    .SC_CLR(SC_CLR), 
    .ALU_ADD(ALU_ADD), 
    .ALU_SUB(ALU_SUB), 
    .ALU_MUL(ALU_MUL), 
    .ALU_DIV(ALU_DIV), 
    .ALU_AND(ALU_AND), 
    .ALU_OR(ALU_OR), 
    .ALU_XOR(ALU_XOR), 
    .ALU_NOT(ALU_NOT), 
    .ALU_FFT(ALU_FFT), 
    .ALU_ENC(ALU_ENC), 
    .ALU_DNC(ALU_DNC), 
    .ALU_TNF(ALU_TNF), 
    .BUS1_AR(busCntr1_AR), .BUS2_PC(busCntr2_PC), .BUS4_AC(busCntr4_AC), .BUS6_IR(busCntr6_IR), .BUS7_MEM(busCntr7_MEM), .BUS8_STK(busCntr8_STK), 
    .BUS12_RegC(busCntr12_RegC), .BUS13_RegD(busCntr13_RegD), .BUS14_RegE(busCntr14_RegE), .BUS12_RegF(busCntr15_RegF), 
    .T0(T0), .T1(T1), .T2(T2), .T3(T3), .T4(T4), .T5(T5), .T6(T6), 
	 .D1(D1_op), .Dv(Dv_op), .Dw(Dw_op), .D2(D2_op), .Dx(Dx_op),.Dy(Dy_op), .Dz(Dz_op), .DR(outputDR), .AC(outputAC)
    );


endmodule
