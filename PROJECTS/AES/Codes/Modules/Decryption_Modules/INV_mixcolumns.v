`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:24 11/09/2011 
// Design Name: 
// Module Name:    INV_mixcolumns 
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
module INV_mixcolumns(
   input wire[31:0] w0,
	output reg[31:0] w_0
	);
	
	wire[7:0] a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16;
	reg [7:0] b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;

	product 	p1(b1,8'h0e,a1),
				p2(b2,8'h0b,a2),
				p3(b3,8'h0d,a3),
				p4(b4,8'h09,a4),
				p5(b5,8'h09,a5),
				p6(b6,8'h0e,a6),
				p7(b7,8'h0b,a7),
				p8(b8,8'h0d,a8),	
				p9(b9,8'h0d,a9),	
				p10(b10,8'h09,a10),	
				p11(b11,8'h0e,a11),	
				p12(b12,8'h0b,a12),	
				p13(b13,8'h0b,a13),	
				p14(b14,8'h0d,a14),	
				p15(b15,8'h09,a15),	
				p16(b16,8'h0e,a16);
				
always@(w0)
begin	
		b1 <= w0[31:24];
		b2 <= w0[23:16];
		b3 <= w0[15:8];
		b4 <= w0[7:0];
		

		b5 <= w0[31:24];
		b6 <= w0[23:16];
		b7 <= w0[15:8];
		b8 <= w0[7:0];
		
		
		b9 <= w0[31:24];
		b10 <= w0[23:16];
		b11 <= w0[15:8];
		b12 <= w0[7:0];
		

		b13 <= w0[31:24];
		b14 <= w0[23:16];
		b15 <= w0[15:8];
		b16 <= w0[7:0];
		
end
always@(a1 or a2 or a3 or a4 or a5 or a6 or a7 or a8 or a9 or a10 or a11 or a12 or a13 or a14 or a15 or a16) begin
w_0[31:24] <= (a1 ^ a2 ^ a3 ^ a4);
w_0[23:16] <= a5 ^ a6 ^ a7 ^ a8;
w_0[15:8] <= a9 ^ a10 ^ a11 ^ a12;
w_0[7:0] <= a13 ^ a14 ^ a15 ^ a16;		
end

endmodule
