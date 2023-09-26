module VERDE (

	input VERMELHO, AMARELO,
	output VER

);

	assign VER = ~VERMELHO & ~AMARELO;
	
endmodule 