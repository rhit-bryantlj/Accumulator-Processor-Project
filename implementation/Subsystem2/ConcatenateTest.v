`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:08 05/16/2021
// Design Name:   PCandIR_Concatenate
// Module Name:   C:/Users/bryantlj/Desktop/rhit-csse232-2021c-projects-2021c_violet/implementation/Subsystem2/ConcatenateTest.v
// Project Name:  Subsystem2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCandIR_Concatenate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ConcatenateTest;

	// Inputs
	reg [13:0] LeftShiftedIR;
	reg [1:0] TwoBitsPC;

	// Outputs
	wire [15:0] ConcatenatedOutput;

	// Instantiate the Unit Under Test (UUT)
	PCandIR_Concatenate uut (
		.LeftShiftedIR(LeftShiftedIR), 
		.TwoBitsPC(TwoBitsPC), 
		.ConcatenatedOutput(ConcatenatedOutput)
	);

	initial begin
		// Initialize Inputs
		LeftShiftedIR = 14'b11111111111111;
		TwoBitsPC = 2'b10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(ConcatenatedOutput == 16'b1011111111111111) begin
			$display("Pass initial test");
		end else begin
			$display("Failed");
		end

		#100;
		LeftShiftedIR = 14'b00000000000000;
		//TwoBitsPC = 2'b11;
		#100
		if(ConcatenatedOutput == 16'b1000000000000000) begin
			$display("Pass changing input test");
		end else begin
			$display("Failed");
		end
	end
      
endmodule

