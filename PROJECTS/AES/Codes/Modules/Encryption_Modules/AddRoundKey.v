module AddRoundKey(w0,w1,w2,w3,w_0,w_1,w_2,w_3,word);

input wire[31:0] w0,w1,w2,w3;
input wire[127:0] word;
output reg[31:0] w_0,w_1,w_2,w_3;

always @(w0 or w1 or w2 or w3) begin
w_0 <= w0 ^ word[127:96];
w_1 <= w1 ^ word[95:64];
w_2 <= w2 ^ word[63:32];
w_3 <= w3 ^ word[31:0];
end

endmodule
