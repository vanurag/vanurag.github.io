module product(in1,in2,out);

input wire[7:0] in1,in2;
output reg[7:0] out;
wire[7:0] temp1,temp2,temp3,temp4,temp5,temp6,temp7;

xtime x1(in2,temp1);
xtime x2(temp1,temp2);
xtime x3(temp2,temp3);
xtime x4(temp3,temp4);
xtime x5(temp4,temp5);
xtime x6(temp5,temp6);
xtime x7(temp6,temp7);

always @(in1 or in2 or temp1 or temp2 or temp3 or temp4 or temp5 or temp6 or temp7) begin
out = 8'b00000000;
if (in1[0]==1)
	out = in2;
if (in1[1]==1)
	out = out ^ temp1;
if (in1[2]==1)
	out = out ^ temp2;
if (in1[3]==1)
	out = out ^ temp3;
if (in1[4]==1)
	out = out ^ temp4;
if (in1[5]==1)
	out = out ^ temp5;
if (in1[6]==1)
	out = out ^ temp6;
if (in1[7]==1)
	out = out ^ temp7;
end

endmodule
