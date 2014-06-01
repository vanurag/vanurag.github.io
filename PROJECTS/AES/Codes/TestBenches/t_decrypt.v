module t_decrypt;

reg[127:0] in;
reg[1407:0] word;
wire[127:0] out;
reg clk;
integer a,status,b,Status,d;
 
INV_cipher I(clk,in,out,word);

initial begin
clk <= 1;
a = $fopen("encrypted_text.txt","r");
while (!$feof(a)) begin
status = $fscanf(a,"%128h",in);
end
$fclose(a);

b = $fopen("word.txt","r");
while (!$feof(b)) begin
Status = $fscanf(b,"%128h",word);
end
$fclose(b);

$monitor("Encrypted Input:\n%h %h %h %h\n%h %h %h %h\n%h %h %h %h\n%h %h %h %h\n\nDecrypted output:\n%h %h %h %h\n%h %h %h %h\n%h %h %h %h\n%h %h %h %h",in[127:120],in[95:88],in[63:56],in[31:24],in[119:112],in[87:80],in[55:48],in[23:16],in[111:104],in[79:72],in[47:40],in[15:8],in[103:96],in[71:64],in[39:32],in[7:0],out[127:120],out[95:88],out[63:56],out[31:24],out[119:112],out[87:80],out[55:48],out[23:16],out[111:104],out[79:72],out[47:40],out[15:8],out[103:96],out[71:64],out[39:32],out[7:0]);

#100;
end

always @(out) begin
d = $fopen("decrypted_text.txt","w");
$fwrite(d,"%h",out);
$fclose(d);
end

always begin
	#1000 clk = ~clk;
end	
endmodule
