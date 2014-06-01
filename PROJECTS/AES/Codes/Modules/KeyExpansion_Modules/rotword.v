`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:43 11/09/2011 
// Design Name: 
// Module Name:    rotword 
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
module rotword(I,O);
    input wire [0:31]I;
	 output wire [0:31]O;
	 
	 
	 
		
		
	 assign O[0:7]=I[8:15];
	 assign O[8:15]=I[16:23];
	 assign O[16:23]=I[24:31];
	 assign O[24:31]=I[0:7];
	  
				
		
	 
endmodule
	 

	

	 
	 
	 
	 
	


