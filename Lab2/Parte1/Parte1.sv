module Parte1 (SW, HEX0, HEX1);
	input logic [7:0] SW;
	output logic [6:0] HEX0;
	output logic [6:0] HEX1;
	
	
	/*assign HEX0[0] = SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[2] & ~SW[0] & ~SW[1] & ~SW[3] ;
	assign HEX0[1] = SW[0] & ~SW[1] & SW[2] & ~SW[3]| SW[2] & ~SW[0] & SW[1] & ~SW[3];
	assign HEX0[2] = SW[1] & ~SW[0] & ~SW[2] & ~SW[3];
	assign HEX0[3] = SW[0]  & ~SW[1] & ~SW[2] & ~SW[3]|  SW[2] & ~SW[0] & ~SW[1] & ~SW[3]| SW[2] & SW[0] & SW[1]& ~SW[3];
	assign HEX0[4] = SW[0] | (SW[0] & SW[1]) |  SW[2] & ~SW[0] & ~SW[1] & ~SW[3] | SW[0] & ~SW[1] & SW[2] & ~SW[3]|  SW[2] & SW[0] & SW[1] | SW[3] & SW[0] & ~SW[1] & ~SW[2];
	assign HEX0[5] = SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[1] & ~SW[0] & ~SW[2] & ~SW[3]|  SW[1] & SW[0] & ~SW[2]& ~SW[3] | SW[2] & SW[0] & SW[1]& ~SW[3];
	assign HEX0[6] = (~SW[0] & ~SW[1] & ~SW[2] & ~SW[3]) |SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[2] & SW[0] & SW[1]& ~SW[3];
	
	
	assign HEX1[0] = SW[4] & ~SW[5] & ~SW[6] & ~SW[7]| SW[6] & ~SW[4] & ~SW[5] & ~SW[3] ;
	assign HEX1[1] = SW[4] & ~SW[5] & SW[6] & ~SW[7]| SW[6] & ~SW[4] & SW[5] & ~SW[3];
	assign HEX1[2] = SW[5] & ~SW[4] & ~SW[6] & ~SW[7];
	assign HEX1[3] = SW[4]  & ~SW[5] & ~SW[6] & ~SW[7]|  SW[6] & ~SW[4] & ~SW[5] & ~SW[7]| SW[6] & SW[4] & SW[5]& ~SW[7];
	assign HEX1[4] = SW[4] | (SW[4] & SW[5]) |  SW[6] & ~SW[7] & ~SW[5] & ~SW[7] | SW[4] & ~SW[5] & SW[6] & ~SW[7]|  SW[6] & SW[4] & SW[5] | SW[7] & SW[4] & ~SW[5] & ~SW[6];
	assign HEX1[5] = SW[4] & ~SW[5] & ~SW[6] & ~SW[7]| SW[5] & ~SW[4] & ~SW[6] & ~SW[7]|  SW[5] & SW[4] & ~SW[6]& ~SW[7] | SW[6] & SW[4] & SW[5]& ~SW[3];
	assign HEX1[6] = (~SW[4] & ~SW[5] & ~SW[6] & ~SW[7]) |SW[4] & ~SW[5] & ~SW[6] & ~SW[7]| SW[6] & SW[4] & SW[5]& ~SW[7];*/
	
	setseg s0(SW[3:0], HEX0);
	setseg s1(SW[7:4], HEX1);
	
endmodule

module setseg (SW,HEX);
	input logic [4:0] SW;
	output logic [6:0] HEX;
	
	assign HEX[0] = SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[2] & ~SW[0] & ~SW[1] & ~SW[3] ;
	assign HEX[1] = SW[0] & ~SW[1] & SW[2] & ~SW[3]| SW[2] & ~SW[0] & SW[1] & ~SW[3];
	assign HEX[2] = SW[1] & ~SW[0] & ~SW[2] & ~SW[3];
	assign HEX[3] = SW[0]  & ~SW[1] & ~SW[2] & ~SW[3]|  SW[2] & ~SW[0] & ~SW[1] & ~SW[3]| SW[2] & SW[0] & SW[1]& ~SW[3];
	assign HEX[4] = SW[0] | (SW[0] & SW[1]) |  SW[2] & ~SW[0] & ~SW[1] & ~SW[3] | SW[0] & ~SW[1] & SW[2] & ~SW[3]|  SW[2] & SW[0] & SW[1] | SW[3] & SW[0] & ~SW[1] & ~SW[2];
	assign HEX[5] = SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[1] & ~SW[0] & ~SW[2] & ~SW[3]|  SW[1] & SW[0] & ~SW[2]& ~SW[3] | SW[2] & SW[0] & SW[1]& ~SW[3];
	assign HEX[6] = (~SW[0] & ~SW[1] & ~SW[2] & ~SW[3]) |SW[0] & ~SW[1] & ~SW[2] & ~SW[3]| SW[2] & SW[0] & SW[1]& ~SW[3];
endmodule