`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:01:48 05/04/2021
// Design Name:   PCALU
// Module Name:   C:/Users/hunte/Desktop/CSSE232/rhit-csse232-2021c-projects-2021c_violet/implementation/PCALU/PCALUTest.v
// Project Name:  PCALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCALUTest;

	// Inputs
	reg [15:0] PCIN;

	// Outputs
	wire [15:0] PCOUT;

	// Instantiate the Unit Under Test (UUT)
	PCALU uut (
		.PCIN(PCIN), 
		.PCOUT(PCOUT)
	);

	initial begin
		// Initialize Inputs
		PCIN = 0;
		// Wait 100 ns for global reset to finish
		#100;
	
		$display("Testing adding");
		repeat (5) begin
			
			if(PCOUT != PCIN + 2) begin
				$display("FAIL PCOUT: %d", PCOUT);
			end
			
			if(PCOUT == PCIN + 2) begin
				$display("PASS PCOUT: %d", PCOUT);
			end
			PCIN = PCIN + 5;
			#100; //wait
		end
	end
      
endmodule

