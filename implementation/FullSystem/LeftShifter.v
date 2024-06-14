`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:42 05/12/2021 
// Design Name: 
// Module Name:    LeftShifter 
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
module LeftShifter(
    input [15:0] inputVal,
    output reg [15:0] ShiftedVal
    );
	 always @ (inputVal) begin
		ShiftedVal = inputVal << 1;
	end
endmodule
