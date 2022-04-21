module parte4 (clk, D,Qa, Qb,Qc);

	input clk, D;
	logic [2:0]Q1,Q2;
	output Qa, Qb,Qc;
	logic [2:0]R_g, S_g;
	
	assign R_g[0] = ~(D) & ~(clk);
	assign S_g[0]= D & clk;
	assign Q1[0] = ~(R_g[0] | Q2[0]);
	assign Q2[0] = ~(S_g[0] | Q1[0]);
	assign Qa = Q1[0];
	
	assign R_g[1] = ~(D) & ~(clk);
	assign S_g[1]= D & clk;
	assign Q1[1] = ~(R_g[1] | Q2[1]);
	assign Q2[1] = ~(S_g[1] | Q1[1]);
	assign Qb = Q1[1];
	
	assign R_g[2] = ~(D) & ~(clk);
	assign S_g[2]= D & clk;
	assign Q1[2] = ~(R_g[2] | Q2[2]);
	assign Q2[2] = ~(S_g[2] | Q1[2]);
	assign Qc = Q2[2];
	
endmodule