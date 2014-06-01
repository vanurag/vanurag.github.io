module keyexp(key,word,clk);

input wire [0:127]key;
output reg [0:1407]word;
input wire clk;
reg [5:0]counter;
wire [0:31]temp;
wire enable;
wire [0:31]out1;
wire [0:31]out2;
initial
begin
counter = 000000;
end
assign enable=(counter==6'b 101100)?0:1;

rotword rtw1(temp,out1);
subword sbw1(out1,out2);

always@(posedge clk)
	begin
	counter<=(enable==1)?counter+1:counter;
	end
	

assign temp=(counter==6'b 000011)? word[96:127]:
					(counter==6'b 000111)? word[224:255]	:
					(counter==6'b 001011)? word[352:383]	:
					(counter==6'b 001111)? word[480:511]:
					(counter==6'b 010011)? word[608:639]:
					(counter==6'b 010111)? word[736:767]:
					(counter==6'b 011011)? word[864:895]:
					(counter==6'b 011111)? word[992:1023]		:
					(counter==6'b 100011)? word[1120:1151]	:
					word[1248:1279];
					

always@(posedge clk)
	case(counter)
		6'b 000000:word[0:31]=key[0:31];
		6'b 000001:word[32:63]=key[32:63];
		6'b 000010:word[64:95]=key[64:95];
		6'b 000011:word[96:127]=key[96:127];
		6'b 000100:word[128:159]=32'h 01000000 ^ out2 ^ word[0:31];
		6'b 000101:word[160:191]=word[128:159] ^ word[32:63];
		6'b 000110:word[192:223]=word[160:191] ^ word[64:95];
		6'b 000111:word[224:255]=word[192:223] ^ word[96:127];
		6'b 001000:word[256:287]=32'h 02000000 ^ out2 ^ word[128:159];
		6'b 001001:word[288:319]=word[256:287] ^ word[160:191];
		6'b 001010:word[320:351]=word[288:319] ^ word[192:223];
		6'b 001011:word[352:383]=word[320:351] ^ word[224:255];
		6'b 001100:word[384:415]=32'h 04000000 ^ out2 ^ word[256:287];
		6'b 001101:word[416:447]=word[384:415] ^ word[288:319];
		6'b 001110:word[448:479]=word[416:447] ^ word[320:351];
		6'b 001111:word[480:511]=word[448:479] ^ word[352:383];
		6'b 010000:word[512:543]=32'h 08000000 ^ out2 ^ word[384:415];
		6'b 010001:word[544:575]=word[512:543] ^ word[416:447];
		6'b 010010:word[576:607]=word[544:575] ^ word[448:479];
		6'b 010011:word[608:639]=word[576:607] ^ word[480:511];
		6'b 010100:word[640:671]=32'h 10000000 ^ out2 ^ word[512:543];
		6'b 010101:word[672:703]=word[640:671] ^ word[544:575];
		6'b 010110:word[704:735]=word[672:703] ^ word[576:607];
		6'b 010111:word[736:767]=word[704:735] ^ word[608:639];
		6'b 011000:word[768:799]=32'h 20000000 ^ out2^ word[640:671];
		6'b 011001:word[800:831]=word[768:799] ^ word[672:703];
		6'b 011010:word[832:863]=word[800:831] ^ word[704:735];
		6'b 011011:word[864:895]=word[832:863] ^ word[736:767];
		6'b 011100:word[896:927]=32'h 40000000 ^ out2 ^ word[768:799];
		6'b 011101:word[928:959]=word[896:927] ^ word[800:831];
		6'b 011110:word[960:991]=word[928:959] ^ word[832:863];
		6'b 011111:word[992:1023]=word[960:991] ^ word[864:895];
		6'b 100000:word[1024:1055]=32'h 80000000 ^ out2 ^ word[896:927];
		6'b 100001:word[1056:1087]=word[1024:1055] ^ word[928:959];
		6'b 100010:word[1088:1119]=word[1056:1087] ^ word[960:991];
		6'b 100011:word[1120:1151]=word[1088:1119] ^ word[992:1023];
		6'b 100100:word[1152:1183]=32'h 1b000000 ^ out2 ^ word[1024:1055];
		6'b 100101:word[1184:1215]=word[1152:1183] ^ word[1056:1087];
		6'b 100110:word[1216:1247]=word[1184:1215] ^ word[1088:1119];
		6'b 100111:word[1248:1279]=word[1216:1247] ^ word[1120:1151];
		6'b 101000:word[1280:1311]=32'h 36000000 ^ out2 ^ word[1152:1183];
		6'b 101001:word[1312:1343]=word[1280:1311] ^ word[1184:1215];
		6'b 101010:word[1344:1375]=word[1312:1343] ^ word[1216:1247];
		6'b 101011:word[1376:1407]=word[1344:1375] ^ word[1248:1279];
	endcase

endmodule
