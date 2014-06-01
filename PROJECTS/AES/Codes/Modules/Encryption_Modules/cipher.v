module cipher(in,clk,word,out);

input wire[127:0] in;
input wire clk;
output reg[127:0] out;
input wire [1407:0] word;
reg [127:0] w;
wire[31:0] state0_0,state0_1,state0_2,state0_3,state1_0,state1_1,state1_2,state1_3,state2_0,state2_1,state2_2,state2_3,state3_0,state3_1,state3_2,state3_3,state4_0,state4_1,state4_2,state4_3;
reg[31:0] State0,State1,State2,State3,State1_0,State1_1,State1_2,State1_3;
integer round;

initial begin
	round = -1;
	w = word[1279:1152];	
end

assign state0_0 = State1_0;
assign state0_1 = State1_1;
assign state0_2 = State1_2;
assign state0_3 = State1_3;

SubBytes S(state0_0,state0_1,state0_2,state0_3,state1_0,state1_1,state1_2,state1_3);
ShiftRows SR(state1_0,state1_1,state1_2,state1_3,state2_0,state2_1,state2_2,state2_3);
MixColumns M(state2_0,state3_0);
MixColumns M2(state2_1,state3_1);
MixColumns M3(state2_2,state3_2);
MixColumns M4(state2_3,state3_3);
AddRoundKey A(state3_0,state3_1,state3_2,state3_3,state4_0,state4_1,state4_2,state4_3,w);
always @(posedge clk) begin

State0 <= in[127:96];
State1 <= in[95:64];
State2 <= in[63:32];
State3 <= in[31:0];

case(round)
0: begin
	w = word[1279:1152];
	State1_0 <= State0 ^ word[1407:1376];
	State1_1 <= State1 ^ word[1375:1344];
	State1_2 <= State2 ^ word[1343:1312];
	State1_3 <= State3 ^ word[1311:1280];
end

1: begin
	w = word[1151:1024];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end

2: begin
	w = word[1023:896];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;	
end
3: begin
	w = word[895:768];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
4: begin
	w = word[767:640];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
5: begin
	w = word[639:512];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
6: begin
	w = word[511:384];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
7: begin
	w = word[383:256];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
8: begin
	w = word[255:128];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
9: begin
	w = word[127:0];
	State1_0 <= state4_0;
	State1_1 <= state4_1;
	State1_2 <= state4_2;
	State1_3 <= state4_3;
end
10: begin
	out[127:96] <= state2_0 ^ word[127:96];
	out[95:64] <= state2_1 ^ word[95:64];
	out[63:32] <= state2_2 ^ word[63:32];
	out[31:0] <= state2_3 ^ word[31:0];
end
endcase
end

always @(negedge clk) begin
if (round<11) begin
round = round + 1;
end
end

endmodule
