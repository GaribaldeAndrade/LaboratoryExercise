module part2 (SW, LEDG, LEDR);
	input logic [17:0] SW;
	output logic [17:0] LEDR;
	output logic [7:0] LEDG;
	
	logic s;
	logic [7:0] m;
	logic [7:0] x;
	logic [7:0] y;
	
	assign LEDR = SW;
	assign s = SW[17];
	assign y = SW[15:8];
	assign x = SW[7:0];
	
	assign m[0] = (~s & x[0]) | (s & y[0]);
	assign m[1] = (~s & x[1]) | (s & y[1]);
	assign m[2] = (~s & x[2]) | (s & y[2]);
	assign m[3] = (~s & x[3]) | (s & y[3]);
	assign m[4] = (~s & x[4]) | (s & y[4]);
	assign m[5] = (~s & x[5]) | (s & y[5]);
	assign m[6] = (~s & x[6]) | (s & y[6]);
	assign m[7] = (~s & x[7]) | (s & y[7]);

	assign LEDG = m;
endmodule