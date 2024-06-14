`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Violet Team
// Engineer: Ian Barthel
// 
// Create Date:    11:19:43 05/07/2021 
// Design Name: 
// Module Name:    RegisterFileV2Mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RegisterFileV2Mux(
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input [15:0] D,
    input [15:0] E,
    input [15:0] F,
    input [15:0] G,
    input [15:0] H,
    input [15:0] I,
    input [15:0] J,
    input [3:0] S,
    output reg [15:0] O
    );
	 
	 always @ (A,B,C,D,E,F,G,H,I,J,S) begin
	 
			case (S)
				4'b0000 : O = A;
				4'b0001 : O = B;
				4'b0010 : O = C;
				4'b0011 : O = D;
				4'b0100 : O = E;
				4'b0101 : O = F;
				4'b0110 : O = G;
				4'b0111 : O = H;
				4'b1000 : O = I;
				4'b1001 : O = J;
			endcase
		end
				


endmodule
