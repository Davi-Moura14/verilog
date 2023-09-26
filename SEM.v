module SEM (
	input ck, rst,
	output [4:0] S,
	output pulso, VERMELHO, AMARELO, VERDE

);

wire [4:0] WS, WR, WST;
wire WFT;
wire ckout;

assign WFT = ~(WST[0] | WST[1] | WST[2] | WST[3] | WST[4]);
assign pulso = WFT;
assign S = WST;

DECRE5B U0 (WST, WS);
MUX5B U1 (WFT, WS, WR);
REG5B U2 (rst, ck, WR, WST);
tff_t U3 (WFT, ck, rst, ckout);
VERMELHO U4(ckout, VERMELHO);
AMARELO U5(WST, ckout, AMARELO);
VERDE U6(VERMELHO, AMARELO, VERDE);

endmodule 