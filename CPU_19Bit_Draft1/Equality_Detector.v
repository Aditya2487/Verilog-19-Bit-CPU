`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:22 08/17/2024 
// Design Name: 
// Module Name:    Equality_Detector 
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
module Equality_Detector( 
input [18:0] DR,
input [18:0] AC,
output EQ
    );


assign EQ = &(AC ~^ DR );


endmodule
