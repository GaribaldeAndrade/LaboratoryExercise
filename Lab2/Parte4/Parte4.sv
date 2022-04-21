module parte4(SW,LEDR,LEDG,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7,V,M,B,H);

input logic [8:0]SW;
output logic [8:0]LEDG;
output logic [8:0]LEDR;
output logic [6:0]HEX7,HEX6,HEX5,HEX4;
output logic [6:0]HEX3,HEX2,HEX1,HEX0;

logic [3:0] A, B3, S;
logic Cin;
logic [4:1] C;
logic [3:0] S0;
logic [3:0] S0_M;
logic S1;

assign A = SW[7:4];
assign B3 = SW[3:0];
assign Cin = SW[8];

assign LEDR = SW;
assign LEDG[4:0] = C[4] & S;

input logic [3:0] V;
logic z;
output logic [3:0] M;

logic [2:0] B2;

assign z = (V[3] & V[2]) | (V[3] & V[1]);

assign B2[2] = V[2] & V[1];
assign B2[1] = V[2] & ~(V[1]);
assign B2[0] = (V[1] & V[0]) | (V[2] & V[0]);

assign M[3] = ~(z) & V[3];
assign M[2] = (~(z) & V[2]) | (z & B2[2]);
assign M[1] = (~(z) & V[1]) | (z & B2[1]);
assign M[0] = (~(z) & V[0]) | (z & B2[0]);


input logic [3:0] B;
output logic [6:0] H;

assign H[0] = (B[2] & (B[0])) | ((B[3]) & ~(B[2]) & ~(B[1]) & B[0]);
assign H[1] = (B[2] & ~(B[1]) & B[0]) | (B[2] & B[1] & ~(B[0]));
assign H[2] = (~(B[2]) & B[1] & ~(B[0]));
assign H[3] = (~(B[2]) & ~(B[1]) & B[0]) | (B[2] & ~(B[1]) & ~(B[0])) | (B[2] & B[1] & B[0]);
assign H[4] = ((B[1]) & B[0]) | ((B[3]) & B[0]) | (~(B[3]) & B[2] & ~(B[1]));
assign H[5] = (B[1] & B[0]) | ((B[2]) & B[1]) | ((B[3]) & ~(B[2]) & B[0]);
assign H[6] = (B[2] & B[1] & B[0]) | (~(B[3]) & ~(B[2]) & ~(B[1]));


endmodule