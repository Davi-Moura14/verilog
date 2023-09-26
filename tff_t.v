module tff_t (

	input t, clk, rst,
	output reg q
	
	
);

	always @ (posedge clk) begin
		if (!rst)
			q <= 0;
		else
			if (t)
				q <= ~q;
			else 
				q <= q;
	end
endmodule  