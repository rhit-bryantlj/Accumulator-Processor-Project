`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:13 05/03/2021 
// Design Name: 
// Module Name:    IRVerilogCode 
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
module IRSchematic(
    input [15:0] Instruction,
	 input enable,
    output reg [15:0] OutputInst
    );
always @ (enable) begin
	if (enable == 1 && Instruction[15] == 1) begin
		OutputInst[15:13] = 0;
		OutputInst[12:0] = Instruction[12:0];
	end
	else if (enable == 1 && Instruction[15] == 1) begin
		OutputInst[15:11] = 0;
		OutputInst[10:0] = Instruction[10:0];
	end
	end
endmodule
