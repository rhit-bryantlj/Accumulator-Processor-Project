`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:18 05/04/2021 
// Design Name: 
// Module Name:    IRCodeForSchm 
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
module IRCodeForSchm(
    input [15:0] Instruction,
    output reg [15:0] OutputInst,
	 output reg [4:0] opCode,
    input enable,
	 input CLK
    );
always @ (CLK) begin
	if (enable == 1) begin
		opCode[4:0] = Instruction[15:11];
		OutputInst[15:0] = Instruction[15:0];
	end
	end

endmodule
