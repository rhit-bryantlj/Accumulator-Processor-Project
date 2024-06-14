`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:56:17 05/17/2021 
// Design Name: 
// Module Name:    PCMux 
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
module PCMux(
    input [15:0] ALUPC,
    input [15:0] ConcatenatedPC,
    input [15:0] PCincrement,
    input [1:0] s,
    output reg[15:0] SelectedPC
    );

always @ (ALUPC, ConcatenatedPC, PCincrement,s) begin

	if(s == 0) begin
		SelectedPC = ALUPC;
	end else if(s == 1) begin
		SelectedPC = ConcatenatedPC;
	end else begin
		SelectedPC = PCincrement;
	end

end

endmodule
