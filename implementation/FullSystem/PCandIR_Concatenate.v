`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:56 05/16/2021 
// Design Name: 
// Module Name:    PCandIR_Concatenate 
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
module PCandIR_Concatenate(
    input [13:0] LeftShiftedIR,
    input [1:0] TwoBitsPC,
    output reg [15:0] ConcatenatedOutput
    );

always @(LeftShiftedIR, TwoBitsPC)begin

	ConcatenatedOutput = {TwoBitsPC, LeftShiftedIR};

end
endmodule
