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
    output reg signed [15:0] o,
    input [15:0] a,
	 output reg z,
	 output reg [15:0] g,
    input [15:0] b,
    input [1:0] s
	 );
	
	// Selector Status:
	// 		if s = 0 add
	// 		if s = 1 sub
	// 		if s = 2 sll only shifts a
	
	always @ (a,b,s) begin
		if(s == 0) begin
			o = a + b;
		end
		else if(s == 1) begin
			o = a - b;
		end
		else if (s == 2) begin
		o = a << b;
		end
		
		if (o == 0) begin
			z = 1;
		end
		else begin
			z = 0;
		end
		
		if (o > 0) begin
			g = 1;
		end
		else begin
			g = 0;
		end
		
	end
		
endmodule
