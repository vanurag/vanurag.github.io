`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:12:03 11/10/2011 
// Design Name: 
// Module Name:    INV_sbox 
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
module INV_sbox(in,Out);

input wire[7:0] in;
output reg[7:0] Out;

always @(in) 
begin
case(in)
8'h63	:Out=	8'h00;
8'h7c	:Out=	8'h01;
8'h77	:Out=	8'h02;
8'h7b	:Out=	8'h03;
8'hf2	:Out=	8'h04;
8'h6b	:Out=	8'h05;
8'h6f	:Out=	8'h06;
8'hc5	:Out=	8'h07;
8'h30	:Out=	8'h08;
8'h01	:Out=	8'h09;
8'h67	:Out=	8'h0a;
8'h2b	:Out=	8'h0b;
8'hfe	:Out=	8'h0c;
8'hd7	:Out=	8'h0d;
8'hab	:Out=	8'h0e;
8'h76	:Out=	8'h0f;
		
8'hca	:Out=	8'h10;
8'h82	:Out=	8'h11;
8'hc9	:Out=	8'h12;
8'h7d	:Out=	8'h13;
8'hfa	:Out=	8'h14;
8'h59:Out=	8'h15;
8'h47	:Out=	8'h16;
8'hf0	:Out=	8'h17;
8'had	:Out=	8'h18;
8'hd4	:Out=	8'h19;
8'ha2	:Out=	8'h1a;
8'haf	:Out=	8'h1b;
8'h9c	:Out=	8'h1c;
8'ha4	:Out=	8'h1d;
8'h72	:Out=	8'h1e;
8'hc0	:Out=	8'h1f;
	
8'hb7	:Out=	8'h20;
8'hfd	:Out=	8'h21;
8'h93	:Out=	8'h22;
8'h26	:Out=	8'h23;
8'h36	:Out=	8'h24;
8'h3f	:Out=	8'h25;
8'hf7	:Out=	8'h26;
8'hcc	:Out=	8'h27;
8'h34	:Out=	8'h28;
8'ha5	:Out=	8'h29;
8'he5	:Out=	8'h2a;
8'hf1	:Out=	8'h2b;
8'h71	:Out=	8'h2c;
8'hd8	:Out=	8'h2d;
8'h31	:Out=	8'h2e;
8'h15	:Out=	8'h2f;
	
8'h04	:Out=	8'h30;
8'hc7	:Out=	8'h31;
8'h23	:Out=	8'h32;
8'hc3	:Out=	8'h33;
8'h18	:Out=	8'h34;
8'h96	:Out=	8'h35;
8'h05	:Out=	8'h36;
8'h9a	:Out=	8'h37;
8'h07	:Out=	8'h38;
8'h12	:Out=	8'h39;
8'h80	:Out=	8'h3a;
8'he2	:Out=	8'h3b;
8'heb	:Out=	8'h3c;
8'h27	:Out=	8'h3d;
8'hb2	:Out=	8'h3e;
8'h75	:Out=	8'h3f;
	
8'h09	:Out=	8'h40;
8'h83	:Out=	8'h41;
8'h2c	:Out=	8'h42;
8'h1a	:Out=	8'h43;
8'h1b	:Out=	8'h44;
8'h6e	:Out=	8'h45;
8'h5a	:Out=	8'h46;
8'ha0	:Out=	8'h47;
8'h52	:Out=	8'h48;
8'h3b	:Out=	8'h49;
8'hd6	:Out=	8'h4a;
8'hb3	:Out=	8'h4b;
8'h29	:Out=	8'h4c;
8'he3	:Out=	8'h4d;
8'h2f	:Out=	8'h4e;
8'h84	:Out=	8'h4f;
		
8'h53	:Out=	8'h50;
8'hd1	:Out=	8'h51;
8'h00	:Out=	8'h52;
8'hed	:Out=	8'h53;
8'h20	:Out=	8'h54;
8'hfc	:Out=	8'h55;
8'hb1	:Out=	8'h56;
8'h5b	:Out=	8'h57;
8'h6a	:Out=	8'h58;
8'hcb	:Out=	8'h59;
8'hbe	:Out=	8'h5a;
8'h39	:Out=	8'h5b;
8'h4a	:Out=	8'h5c;
8'h4c	:Out=	8'h5d;
8'h58	:Out=	8'h5e;
8'hcf	:Out=	8'h5f;
		
8'hd0	:Out=	8'h60;
8'hef	:Out=	8'h61;
8'haa	:Out=	8'h62;
8'hfb	:Out=	8'h63;
8'h43	:Out=	8'h64;
8'h4d	:Out=	8'h65;
8'h33	:Out=	8'h66;
8'h85	:Out=	8'h67;
8'h45	:Out=	8'h68;
8'hf9	:Out=	8'h69;
8'h02	:Out=	8'h6a;
8'h7f	:Out=	8'h6b;
8'h50	:Out=	8'h6c;
8'h3c	:Out=	8'h6d;
8'h9f	:Out=	8'h6e;
8'ha8	:Out=	8'h6f;
	
8'h51	:Out=	8'h70;
8'ha3	:Out=	8'h71;
8'h40	:Out=	8'h72;
8'h8f	:Out=	8'h73;
8'h92	:Out=	8'h74;
8'h9d	:Out=	8'h75;
8'h38	:Out=	8'h76;
8'hf5	:Out=	8'h77;
8'hbc	:Out=	8'h78;
8'hb6	:Out=	8'h79;
8'hda	:Out=	8'h7a;
8'h21	:Out=	8'h7b;
8'h10	:Out=	8'h7c;
8'hff	:Out=	8'h7d;
8'hf3	:Out=	8'h7e;
8'hd2	:Out=	8'h7f;
	
8'hcd	:Out=	8'h80;
8'h0c	:Out=	8'h81;
8'h13	:Out=	8'h82;
8'hec	:Out=	8'h83;
8'h5f	:Out=	8'h84;
8'h97	:Out=	8'h85;
8'h44	:Out=	8'h86;
8'h17	:Out=	8'h87;
8'hc4	:Out=	8'h88;
8'ha7	:Out=	8'h89;
8'h7e	:Out=	8'h8a;
8'h3d	:Out=	8'h8b;
8'h64	:Out=	8'h8c;
8'h5d	:Out=	8'h8d;
8'h19	:Out=	8'h8e;
8'h73	:Out=	8'h8f;
	
8'h60	:Out=	8'h90;
8'h81	:Out=	8'h91;
8'h4f	:Out=	8'h92;
8'hdc	:Out=	8'h93;
8'h22	:Out=	8'h94;
8'h2a	:Out=	8'h95;
8'h90	:Out=	8'h96;
8'h88	:Out=	8'h97;
8'h46	:Out=	8'h98;
8'hee	:Out=	8'h99;
8'hb8	:Out=	8'h9a;
8'h14	:Out=	8'h9b;
8'hde	:Out=	8'h9c;
8'h5e	:Out=	8'h9d;
8'h0b	:Out=	8'h9e;
8'hdb	:Out=	8'h9f;
	
8'he0	:Out=	8'ha0;
8'h32	:Out=	8'ha1;
8'h3a	:Out=	8'ha2;
8'h0a	:Out=	8'ha3;
8'h49	:Out=	8'ha4;
8'h06	:Out=	8'ha5;
8'h24	:Out=	8'ha6;
8'h5c	:Out=	8'ha7;
8'hc2	:Out=	8'ha8;
8'hd3	:Out=	8'ha9;
8'hac	:Out=	8'haa;
8'h62	:Out=	8'hab;
8'h91	:Out=	8'hac;
8'h95	:Out=	8'had;
8'he4	:Out=	8'hae;
8'h79	:Out=	8'haf;
	
8'he7	:Out=	8'hb0;
8'hc8	:Out=	8'hb1;
8'h37	:Out=	8'hb2;
8'h6d	:Out=	8'hb3;
8'h8d	:Out=	8'hb4;
8'hd5	:Out=	8'hb5;
8'h4e	:Out=	8'hb6;
8'ha9	:Out=	8'hb7;
8'h6c	:Out=	8'hb8;
8'h56	:Out=	8'hb9;
8'hf4	:Out=	8'hba;
8'hea	:Out=	8'hbb;
8'h65	:Out=	8'hbc;
8'h7a	:Out=	8'hbd;
8'hae	:Out=	8'hbe;
8'h08	:Out=	8'hbf;
	
8'hba	:Out=	8'hc0;
8'h78	:Out=	8'hc1;
8'h25	:Out=	8'hc2;
8'h2e	:Out=	8'hc3;
8'h1c	:Out=	8'hc4;
8'ha6	:Out=	8'hc5;
8'hb4	:Out=	8'hc6;
8'hc6	:Out=	8'hc7;
8'he8	:Out=	8'hc8;
8'hdd	:Out=	8'hc9;
8'h74	:Out=	8'hca;
8'h1f	:Out=	8'hcb;
8'h4b	:Out=	8'hcc;
8'hbd	:Out=	8'hcd;
8'h8b	:Out=	8'hce;
8'h8a	:Out=	8'hcf;
		
8'h70	:Out=	8'hd0;
8'h3e	:Out=	8'hd1;
8'hb5	:Out=	8'hd2;
8'h66	:Out=	8'hd3;
8'h48	:Out=	8'hd4;
8'h03	:Out=	8'hd5;
8'hf6	:Out=	8'hd6;
8'h0e	:Out=	8'hd7;
8'h61	:Out=	8'hd8;
8'h35	:Out=	8'hd9;
8'h57	:Out=	8'hda;
8'hb9	:Out=	8'hdb;
8'h86	:Out=	8'hdc;
8'hc1	:Out=	8'hdd;
8'h1d	:Out=	8'hde;
8'h9e	:Out=	8'hdf;
	
8'he1	:Out=	8'he0;
8'hf8	:Out=	8'he1;
8'h98	:Out=	8'he2;
8'h11	:Out=	8'he3;
8'h69	:Out=	8'he4;
8'hd9	:Out=	8'he5;
8'h8e	:Out=	8'he6;
8'h94	:Out=	8'he7;
8'h9b	:Out=	8'he8;
8'h1e	:Out=	8'he9;
8'h87	:Out=	8'hea;
8'he9	:Out=	8'heb;
8'hce	:Out=	8'hec;
8'h55	:Out=	8'hed;
8'h28	:Out=	8'hee;
8'hdf	:Out=	8'hef;
		
8'h8c	:Out=	8'hf0;
8'ha1	:Out=	8'hf1;
8'h89	:Out=	8'hf2;
8'h0d	:Out=	8'hf3;
8'hbf	:Out=	8'hf4;
8'he6	:Out=	8'hf5;
8'h42	:Out=	8'hf6;
8'h68	:Out=	8'hf7;
8'h41	:Out=	8'hf8;
8'h99	:Out=	8'hf9;
8'h2d	:Out=	8'hfa;
8'h0f	:Out=	8'hfb;
8'hb0	:Out=	8'hfc;
8'h54	:Out=	8'hfd;
8'hbb	:Out=	8'hfe;
8'h16	:Out=	8'hff;

endcase
end
endmodule