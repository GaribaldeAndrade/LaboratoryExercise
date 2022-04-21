module part5 (SW, HEX0, LEDR);
	input logic [17:0] SW;
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
	output logic [17:0] LEDR;
	wire [2:0] M;
	

	logic sw1,sw2,sw3,sw4,sw5;
	
	assign LEDR = SW;
	assign sw1 = SW[14:12];
	assign sw2 = SW[11:9];
	assign sw3 = SW[8:6];
	assign sw4 = SW[5:3];
	assign sw5 = SW[2:0];
	
	
	
	
	
	
	
endmodule