`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:13:51 05/16/2021 
// Design Name: 
// Module Name:    PCRegister 
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
module PCRegister(
	 input CLK,
    input PCWrite,
    input [15:0] PCIn,
	 input Reset,
    output reg [15:0] PCout
    );
	 
always @(posedge CLK) begin

	if(Reset == 1) begin
		PCout = 0;
	end else begin
	
		if(PCWrite == 1) begin
			PCout = PCIn;
		end
	
	end

end

endmodule
