module xtime(in,out);

input wire[7:0] in;
output reg[7:0] out;

always @(in) begin
if (in[7]==1) begin	
	out = (in<<1)^8'b00011011;
end
else begin
	out = in<<1;
end
end

endmodule
