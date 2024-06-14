`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:46:01 05/16/2021
// Design Name:   IRLeftShift1ForPC
// Module Name:   C:/Users/bryantlj/Desktop/rhit-csse232-2021c-projects-2021c_violet/implementation/Subsystem2/ShiftLeftPCTest.v
// Project Name:  Subsystem2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IRLeftShift1ForPC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShiftLeftPCTest;

	// Inputs
	reg [12:0] IR;

	// Outputs
	wire [13:0] LeftShiftedOutput;

	// Instantiate the Unit Under Test (UUT)
	IRLeftShift1ForPC uut (
		.IR(IR), 
		.LeftShiftedOutput(LeftShiftedOutput)
	);

	initial begin
		// Initialize Inputs
		IR = 13'b1111111111111;

		// Wait 100 ns for global reset to finish
		#100;
      
		if(LeftShiftedOutput == 14'b11111111111110) begin
			$display("Left Shifter pass initial");
		end else begin
			$display("Fail");
		end
		
		#100
		IR = 13'b1010101010101;
		
		#100
		
		if(LeftShiftedOutput == 14'b10101010101010) begin
			$display("Left Shifter pass changing input");
		end else begin
			$display("Fail");
		end
		

	end
      
endmodule

