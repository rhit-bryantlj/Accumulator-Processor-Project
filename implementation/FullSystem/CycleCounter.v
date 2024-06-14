`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:38 05/20/2021 
// Design Name: 
// Module Name:    CycleCounter 
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
module CycleCounter(
    input CLK,
	 input Reset,
    output reg [15:0] CycleCount
    );

always @(posedge CLK) begin

	if(Reset == 1) begin
		CycleCount = 0;
	end
	else begin
		CycleCount = CycleCount + 1;
	end
	
end

endmodule
