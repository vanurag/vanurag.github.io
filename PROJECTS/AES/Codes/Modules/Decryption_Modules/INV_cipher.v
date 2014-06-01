module INV_cipher(CLK,in,out,wordin);
	input wire CLK;
	input wire[127:0] in;
	output reg[127:0] out;
	input wire [1407:0] wordin;
	
reg [31:0] state0,state1,state2,state3;
reg [127:0] word;
integer round;
reg[31:0] w0,w1,w2,w3;
wire [31:0] w0_1,w1_1,w2_1,w3_1;
wire [31:0] w_0_1,w_1_1,w_2_1,w_3_1;
wire [31:0] w_0_2,w_1_2,w_2_2,w_3_2;
wire [31:0] w_0_3,w_1_3,w_2_3,w_3_3;
wire [31:0] w_0_4,w_1_4,w_2_4,w_3_4;		
		
		INV_shiftrows INVR( 
		.w0(w0_1),.w1(w1_1),.w2(w2_1),.w3(w3_1),
		.w_0(w_0_1),.w_1(w_1_1),.w_2(w_2_1),.w_3(w_3_1));
		
		INV_subbytes IS(
		.w0(w_0_1),.w1(w_1_1),.w2(w_2_1),.w3(w_3_1),
		.w_0(w_0_2),.w_1(w_1_2),.w_2(w_2_2),.w_3(w_3_2));
		
		AddRoundKey AK2(
		.w0(w_0_2),.w1(w_1_2),.w2(w_2_2),.w3(w_3_2),
		.w_0(w_0_3),.w_1(w_1_3),.w_2(w_2_3),.w_3(w_3_3),.word(word));
		
		INV_mixcolumns INVC1( 
		.w0(w_0_3),.w_0(w_0_4));
		
		INV_mixcolumns INVC2( 
		.w0(w_1_3),.w_0(w_1_4));
		
		INV_mixcolumns INVC3( 
		.w0(w_2_3),.w_0(w_2_4));
		
		INV_mixcolumns INVC4( 
		.w0(w_3_3),.w_0(w_3_4));
		
		
initial 
begin 
	word=wordin[255:128];
	round=-1;
end
		
assign w0_1=state0;assign w1_1=state1;
assign w2_1=state2;assign w3_1=state3;


always@(posedge CLK)
begin
	w0<=in[127:96];
	w1<=in[95:64];
	w2<=in[63:32];
	w3<=in[31:0];
	
	case (round)
	0:	begin	
			word=wordin[255:128];
			state0<= w0 ^ wordin[127:96];
			state1<= w1 ^ wordin[95:64];
			state2<= w2 ^ wordin[63:32];
			state3<= w3 ^ wordin[31:0];
		end
	1:	begin
		word=wordin[383:256];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
	
	2:begin
		word=wordin[511:384];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
		
	3:begin
		word=wordin[639:512];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
		
	4:begin
		word=wordin[767:640];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
		
	5:begin
		word=wordin[895:768];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
			
	6:begin
		word=wordin[1023:896];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end		
	
	7:begin
		word=wordin[1151:1024];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
		
	8:begin
		word=wordin[1279:1152];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end
			
	9:begin
		word=wordin[1407:1280];
		state0<=w_0_4;state1<=w_1_4;
		state2<=w_2_4;state3<=w_3_4;
		end

	10:begin
		out= {{w_0_3},{w_1_3},{w_2_3},{w_3_3}};
		end
		endcase
	end
	
	always @(negedge CLK) begin
	if (round<11) begin
	round = round + 1;
	end
	end
	
endmodule
