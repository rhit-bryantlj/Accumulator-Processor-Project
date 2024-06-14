`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:27 05/12/2021 
// Design Name: 
// Module Name:    TwoBitMuxCode 
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
module TwoBitMuxCode(
    input [1:0] Selector,
    input [15:0] A,
    input [15:0] B,
    output reg [15:0] Output,
    input [15:0] C,
    input [15:0] D
    );
	 // S = 0.. Output = A
	 // S= 1.. Output = B CoolRegisterFile
	 // S = 2 .. Output = C SignExtender
	 // S = 3 .. Output = D 

	always @ (A,B,C,D,Selector) begin
		if (Selector == 0) begin
			Output = A;
		end
		if (Selector == 1) begin
			Output = B;
		end
		if (Selector == 2) begin
			Output = C;
		end
		if (Selector == 3) begin
			Output = D;
		end
	
	
	
	end

endmodule
