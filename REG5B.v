module REG5B (rst, ck, d, q);
	
	input rst, ck;
	input[4:0] d; 
	output  reg[4:0] q;
	
	always @(posedge ck or negedge rst)
	
		begin 
			if (rst == 1'b0)
				q <= 5'b0000;
			else 
				q <= d; 
		end 
		
endmodule 