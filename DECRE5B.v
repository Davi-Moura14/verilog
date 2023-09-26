module DECRE5B (

	input [4:0] A,
	output [4:0] S

);

	assign S[0] = ~A[0];
	assign S[1] = A[0] ^ ~A[1];
	assign S[2] = (A[0] | A[1]) ^ ~A[2];
	assign S[3] = ((A[0] | A[1]) | A[2]) ^ ~A[3];
	assign S[4] = (((A[0] | A[1]) | A[2]) | A[3]) ^ ~A[4];
	
endmodule 