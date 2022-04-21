module Parte2 (SW, HEX0, HEX1);
	input logic [7:0] SW;
	output logic [6:0] HEX0;
	output logic [6:0] HEX1;
	
	logic [3:0]V;
	logic Z;
	logic[6:0]AUX;
	assign V[3:0] = SW[3:0];
	assign LEDR = SW;
	assign Z = (V[3] &  (V[1] | V[2]));
	

	
	assign HEX1[6] = 1;
	assign HEX1[0] = Z;
	assign HEX1[5] = Z;
	assign HEX1[4] = Z;
	assign HEX1[3] = Z;
	

	assign AUX[0] = ((V[0] & V[1] & V[3] & ~V[2]) | (V[3] & V[2] & V[1] & ~V[0]));
	assign AUX[1] = ((V[0] & V[1] & V[2] & V[3]));
	assign AUX[2] = (V[3] & V[2] & ~(V[0]) & ~V[1]);
	assign AUX[3] =  ((V[0] & V[1] & V[3] & ~V[2]) | (V[3] & V[2] & V[1]) & ~V[0]);
	assign AUX[4] = ((V[0] & V[1] & V[3]) | (V[3] & V[2] & V[0]) | (V[3] & V[2] & V[1]) | (V[0] & V[1] & V[2] & V[3]));
	assign AUX[5] = ((V[0] & V[1] & V[3] &~V[2] ) | (V[3] & V[2] & ~V[1]) | (V[3] & V[2] & V[0] & ~V[1] ));
	assign AUX[6] = ((V[1] & V[3] & ~V[2]) | (V[0] & V[1] & V[3] & ~V[2]));
	
	assign HEX0[0] = ~Z &(SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[2] & ~SW[0] & ~SW[1] & ~SW[3]) | Z & AUX[0] ;
	assign HEX0[1] = ~Z &(SW[0] & ~SW[1] & SW[2] & ~SW[3]| SW[2] & ~SW[0] & SW[1] & ~SW[3]) | Z & AUX[1] ;
	assign HEX0[2] = ~Z &(SW[1] & ~SW[0] & ~SW[2] & ~SW[3]) | Z & AUX[2] ;
	assign HEX0[3] = ~Z &(SW[0]  & ~SW[1] & ~SW[2] & ~SW[3]|  SW[2] & ~SW[0] & ~SW[1] & ~SW[3]| SW[2] & SW[0] & SW[1]& ~SW[3]) | Z & AUX[3] ;
	assign HEX0[4] = ~Z &(SW[0] | (SW[0] & SW[1]) |  SW[2] & ~SW[0] & ~SW[1] & ~SW[3] | SW[0] & ~SW[1] & SW[2] & ~SW[3]|  SW[2] & SW[0] & SW[1] | SW[3] & SW[0] & ~SW[1] & ~SW[2]) | Z & AUX[4] ;
	assign HEX0[5] = ~Z &(SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[1] & ~SW[0] & ~SW[2] & ~SW[3]|  SW[1] & SW[0] & ~SW[2]& ~SW[3] | SW[2] & SW[0] & SW[1]& ~SW[3]) | Z & AUX[5] ;
	assign HEX0[6] = ~Z &((~SW[0] & ~SW[1] & ~SW[2] & ~SW[3]) |SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[2] & SW[0] & SW[1]& ~SW[3]) | Z & AUX[6] ;


	

endmodule