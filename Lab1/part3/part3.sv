module part3 (SW, LEDG, LEDR);
	input logic [17:0] SW;
	output logic [17:0] LEDR;
	output logic [7:0] LEDG;
	
	logic s0, s1, s2;
	logic  [2:0] m, U_V, W_X, M1_M2;
	logic  [2:0] u, v , w,  x, y;
	
	assign LEDR = SW;
	assign s0 = SW[15];
	assign s1 = SW[16];
	assign s2 = SW[17];
	assign u = SW[14:12];
	assign v = SW[11:9];
	assign w = SW[8:6];		
	assign x = SW[5:3];
	assign y = SW[2:0];
	
	
	assign U_V = (~s0 & u) | (s0 & v);
	assign W_X = (~s0 & w) | (s0 & x);
	assign M1_M2 = (~s1 & U_V) | (s1 & W_X);
	assign m [0] = (~s2 & M1_M2) | (s2 & y);
	assign m [1] = (~s2 & M1_M2) | (s2 & y);
	assign m [2] = (~s2 & M1_M2) | (s2 & y);
	
	

	assign LEDG = m;
endmodule