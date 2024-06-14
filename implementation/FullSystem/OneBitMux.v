`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:01 05/17/2021 
// Design Name: 
// Module Name:    OneBitMux 
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
module OneBitMux(

    input Selector,
    input [15:0] A,
    input [15:0] B,
    output reg [15:0] Output
    );
	 // S = 0.. Output = A
	 // S= 1.. Output = B CoolRegisterFile
	 // S = 2 .. Output = C SignExtender
	 // S = 3 .. Output = D 

	always @ (A,B,Selector) begin
		if (Selector == 0) begin
			Output = A;
		end
		if (Selector == 1) begin
			Output = B;
		end
	
	
	
	end


endmodule
