module AMARELO (

	input [4:0] A,
	input ckout,
	output reg AM

);

	always @ (A)
		if (((A == 5'b00101) | (A == 5'b00100) | (A == 5'b00011) | (A == 5'b00010) | (A == 5'b00001) | (A == 5'b00000)) & ~ckout)
			AM = 1'b1;
		else 
			AM = 1'b0;
	
endmodule 