`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:53:38 05/17/2021
// Design Name:   PCMux
// Module Name:   C:/Users/bryantlj/Desktop/rhit-csse232-2021c-projects-2021c_violet/implementation/Subsystem_PC/PCMuxTest.v
// Project Name:  Subsystem_PC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCMux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCMuxTest;

	// Inputs
	reg [15:0] ALUPC;
	reg [15:0] ConcatenatedPC;
	reg [15:0] PCincrement;
	reg [1:0] s;

	// Outputs
	wire [15:0] SelectedPC;

	// Instantiate the Unit Under Test (UUT)
	PCMux uut (
		.ALUPC(ALUPC), 
		.ConcatenatedPC(ConcatenatedPC), 
		.PCincrement(PCincrement), 
		.s(s), 
		.SelectedPC(SelectedPC)
	);

	initial begin
		// Initialize Inputs
		ALUPC = 25;
		ConcatenatedPC = 127;
		PCincrement = 2;
		s = 2;

		// Wait 100 ns for global reset to finish
		#100;
		
		if(SelectedPC == 2) begin
			$display("PCincrement Passes");
		end
		else begin
			$display("Failed PCincrement");
		end
		
		#100;
		s = 1;
		#100;
		
		if(SelectedPC == 127) begin
			$display("ConcatenatedPC Passes");
		end
		else begin
			$display("Failed ConcatenatedPC");
		end
		
		#100;
		s = 0;
		#100;
		
		if(SelectedPC == 25) begin
			$display("ALUPC Passes");
		end
		else begin
			$display("Failed ALUPC");
		end

	end
      
endmodule

