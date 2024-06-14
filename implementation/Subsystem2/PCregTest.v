`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:18:18 05/16/2021
// Design Name:   PCRegister
// Module Name:   C:/Users/bryantlj/Desktop/rhit-csse232-2021c-projects-2021c_violet/implementation/Subsystem2/PCregTest.v
// Project Name:  Subsystem2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCregTest;

	// Inputs
	reg CLK;
	reg PCWrite;
	reg [15:0] PCIn;
	reg Reset;

	// Outputs
	wire [15:0] PCout;

	// Instantiate the Unit Under Test (UUT)
	PCRegister uut (
		.CLK(CLK), 
		.PCWrite(PCWrite), 
		.PCIn(PCIn), 
		.Reset(Reset), 
		.PCout(PCout)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		PCWrite = 0;
		PCIn = 0;
		Reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		CLK = 1;
		#100;
		CLK = 0;
		Reset = 0;
		PCIn = 2;
		
		#100
		CLK = 1;
		
		if(PCout == 0) begin
			$display("Pass not writing when PCwrite == 0");
		end else begin
			$display("Failed Not Writing");
		end
		
		#100
		CLK = 0;
		PCWrite = 1; 
		
		#100
		CLK = 1;
		
		if(PCout == 2) begin
			$display("Pass writing when PCwrite == 1");
		end else begin
			$display("Failed Writing");
		end
		
		#100
		CLK = 0;
		Reset = 1;
		#100
		CLK = 1;
		
		if(PCout == 0) begin
			$display("Pass Reset Test");
		end else begin
			$display("Failed Reset");
		end
        
		// Add stimulus here

	end
      
endmodule

