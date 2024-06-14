`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:25 05/16/2021 
// Design Name: 
// Module Name:    IRLeftShift1ForPC 
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
module IRLeftShift1ForPC(
    input [12:0] IR,
    output reg[13:0] LeftShiftedOutput
    );

always @(IR) begin
	LeftShiftedOutput = IR*2;
end

endmodule
