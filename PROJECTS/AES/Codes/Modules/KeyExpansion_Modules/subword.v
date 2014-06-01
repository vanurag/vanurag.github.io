`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:19 11/09/2011 
// Design Name: 
// Module Name:    subword 
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
module subword(inp,out);

input wire [0:31]inp;
output wire [0:31]out;

	
	Sbox sbox1(inp[0:7],out[0:7]);
	Sbox sbox2(inp[8:15],out[8:15]);
	Sbox sbox3(inp[16:23],out[16:23]);
	Sbox sbox4(inp[24:31],out[24:31]);
	
endmodule
