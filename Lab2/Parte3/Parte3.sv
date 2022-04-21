module Parte3 (SW, LEDR);
	input logic [8:0] SW;
	output logic [17:0] LEDR;
	
	logic S;
	logic [3:0]A,B,C,P1,M,P2;
	assign C[0] = SW[8];
	assign A[3:0] = SW[7:4];
	assign B[3:0] = SW[3:0];

	
	assign P1[0] = ~(A[0] + B[0]);
	assign P2[0] = ~(C[0]+ P1[0]);
	assign M[0] = (~(P1[0]) & B[0] | P1[0] & C[0] );
	
	assign P1[1] = ~(A[1] + B[1]);
	assign P2[1] = ~(M[0]+ P1[1]);
	assign M[1] = (~(P1[1]) & B[1] | P1[1] & M[0] );
	
	assign P1[2] = ~(A[2] + B[2]);
	assign P2[2] = ~(M[1]+ P1[2]);
	assign M[2] = (~(P1[2]) & B[2] | P1[2] & M[1] );
	
	assign P1[3] = ~(A[3] + B[3]);
	assign P2[3] = ~(M[2]+ P1[3]);
	assign M[3] = (~(P1[3]) & B[3] | P1[3] & M[2] );
	
	assign  S = M[3];
	assign LEDR = S;
	
endmodule

