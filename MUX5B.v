module MUX5B (

	input c,
	input [4:0] A,
	output [4:0] S

);

	assign S[0] = (A[0] & ~c) | (1'b0 & c);
	assign S[1] = (A[1] & ~c) | (1'b1 & c);
	assign S[2] = (A[2] & ~c) | (1'b1 & c);
	assign S[3] = (A[3] & ~c) | (1'b1 & c);
	assign S[4] = (A[4] & ~c) | (1'b1 & c);
	
endmodule 