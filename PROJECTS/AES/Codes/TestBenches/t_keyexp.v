module t_keyexp();
reg [127:0] inp;
wire [1407:0] word;
reg clk;
integer a;

keyexp keyexp1(inp,word,clk);

initial
begin
clk = 1'b0;
inp = 128'h000102030405060708090a0b0c0d0e0f;
$monitor("Word Sequence:\n%h",word);
end

always @(word) begin
a = $fopen("word.txt","w");
$fwrite(a,"%h",word);
$fclose(a);
end

always
	#1 clk =~clk;

endmodule
