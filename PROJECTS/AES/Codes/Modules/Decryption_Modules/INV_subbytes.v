`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:55 11/09/2011 
// Design Name: 
// Module Name:    INV_subbytes 
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
module INV_subbytes(w0,w1,w2,w3,w_0,w_1,w_2,w_3);

input wire[31:0] w0,w1,w2,w3;
output wire[31:0] w_0,w_1,w_2,w_3;

INV_sbox 
	S1(w0[7:0],w_0[7:0]),
	S2(w1[7:0],w_1[7:0]),
	S3(w2[7:0],w_2[7:0]),
	S4(w3[7:0],w_3[7:0]),
	S5(w0[15:8],w_0[15:8]),
	S6(w1[15:8],w_1[15:8]),
	S7(w2[15:8],w_2[15:8]),
	S8(w3[15:8],w_3[15:8]),
	S9(w0[23:16],w_0[23:16]),
	S10(w1[23:16],w_1[23:16]),
	S11(w2[23:16],w_2[23:16]),
	S12(w3[23:16],w_3[23:16]),
	S13(w0[31:24],w_0[31:24]),
	S14(w1[31:24],w_1[31:24]),
	S15(w2[31:24],w_2[31:24]),
	S16(w3[31:24],w_3[31:24]);

endmodule
