`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:08 11/09/2011 
// Design Name: 
// Module Name:    INV_shiftrows 
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
module INV_shiftrows(
	input wire [31:0] w0,w1,w2,w3,
	output reg [31:0] w_0,w_1,w_2,w_3
 );

always@(w0 or w1 or w2 or w3)
begin

	w_0[31:24] = w0[31:24];
	w_1[31:24] = w1[31:24];
	w_2[31:24] = w2[31:24];
	w_3[31:24] = w3[31:24];
	
	w_0[23:16] = w3[23:16];
	w_1[23:16] = w0[23:16];
	w_2[23:16] = w1[23:16];
	w_3[23:16] = w2[23:16];
	
	w_0[15:8] = w2[15:8];
	w_1[15:8] = w3[15:8];
	w_2[15:8] = w0[15:8];
	w_3[15:8] = w1[15:8];	
		
	w_0[7:0] = w1[7:0];
	w_1[7:0] = w2[7:0];
	w_2[7:0] = w3[7:0];
	w_3[7:0] = w0[7:0];
end

endmodule
