 module parte3 (Clk, R, S, Q,SW,LEDR);

	input Clk, R, S;
	input SW[1:0];
	output Q;
	output LEDR[0];
	logic R_g1, S_g1, Qa1, Qb1, R_g2, S_g2, Qa2, Qb2;
	
	assign R_g1 = ~(SW[0]) & ~(SW[1]);
	assign S_g1 = SW[0] & SW[1];
	assign Qa1 = ~(R_g1 | Qb1);
	assign Qb1 = ~(S_g1 | Qa1);
	
	assign R_g2 = ~(Qa1) & SW[1];
	assign S_g2 = Qa1 & SW[1];
	assign Qa2 = ~(R_g2 | Qb2);
	assign Qb2 = ~(S_g2 | Qa2);
	assign Q2 = Qa2;
	assign LEDR[0] = Q2;
	
endmodule