`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Rose-Hulman
// Engineer: Logan Bryant
// 
// Create Date:    10:45:31 05/03/2021 
// Design Name: 
// Module Name:    SignExtender 
// Project Name: 16 bit accumulator CSSE 232 Team Violet
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
module SignExtender(
    input [10:0] IR_immediate, // 11 bit immediate sign extended for general computations
    input [12:0] IR_branch, // 13 bit immediate sign extended and left shifted for branches
    input IR_msb, // IR[15]: 1 if a jump or branch
    output reg [15:0] SEOUT // Sign Extended output
    );

always @ (IR_immediate, IR_branch, IR_msb) begin

	if(IR_msb == 1) begin
		SEOUT = {{3{IR_branch[12]}},IR_branch}; // fill in most sig bits with same msb from branch immediate
		SEOUT = SEOUT * 2; // left shift one
	end
	else begin
	SEOUT = {{5{IR_immediate[10]}},IR_immediate}; // most sig bits with same msb from immediate
	end
	
end

endmodule
