`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:18 05/04/2021 
// Design Name: 
// Module Name:    ALUCodeScm 
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
module ALUCodeScm(
    output reg [15:0] o,
    input [15:0] a,
    input [15:0] b,
    input [1:0] s
    );
	
	// Selector Status:
	// 		if s = 0 add
	// 		if s = 1 sub
	// 		if s = 2 sll only shifts a
	
	always @ (a,b,s)
		if(s == 0) begin
			o = a + b;
		end
		else if(s == 1) begin
			o = a - b;
		end
		else if (s == 2) begin
			o = a << b;
		end
		else if (s == 3) begin
			if(a < b) begin
			o = 16'b1111111111111111;
			end
			if(a == b) begin
			o = 0;
			end
			if(a > b) begin
			o = 1;
			end
		end

endmodule
