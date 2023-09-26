module SN (

	input [4:0] A,
	input pulso, ckout,
	
	input t, clk, rst,
	output reg ved,
	
	output am, ver

);

	assign am = ((A[0] & ~A[1] & A[2] & ~A[3] & ~A[4]) & ~ckout);
	
	assign ver = ckout;
	
	always @ (posedge clk) begin
		if (!rst)
			ved <= 0;
		else
			if (t)
				ved <= ~ved;
			else 
				ved <= ved;
	end
	
	

endmodule 