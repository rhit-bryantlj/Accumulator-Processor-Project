`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:56 05/02/2021 
// Design Name: 
// Module Name:    PCALU 
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
module PCALU(
    input [15:0] PCIN, // PC value
    output [15:0] PCOUT // PC+2
    );

assign PCOUT = PCIN + 2;


endmodule
