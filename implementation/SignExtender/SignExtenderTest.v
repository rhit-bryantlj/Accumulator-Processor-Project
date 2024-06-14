`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:48:16 05/04/2021
// Design Name:   SignExtender
// Module Name:   C:/Users/hunte/Desktop/CSSE232/rhit-csse232-2021c-projects-2021c_violet/implementation/SignExtender/SignExtenderTest.v
// Project Name:  SignExtender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SignExtenderTest;

	// Inputs
	reg [10:0] IR_immediate;
	reg [12:0] IR_branch;
	reg IR_msb;

	// Outputs
	wire [15:0] SEOUT;

	// Instantiate the Unit Under Test (UUT)
	SignExtender uut (
		.IR_immediate(IR_immediate), 
		.IR_branch(IR_branch), 
		.IR_msb(IR_msb), 
		.SEOUT(SEOUT)
	);

	initial begin
		// Initialize Inputs
		IR_immediate = 11'b11111111100;
		IR_branch = 13'b0000000000001;
		IR_msb = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		//4 tests 2 full with leading 1/0 2 not full with leading 1/0
		$display("Testing without branch");
		if(SEOUT != 16'b1111111111111100) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b1111111111111100) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		IR_immediate = 11'b0000111111100;
		#100;
		if(SEOUT != 16'b0000000111111100) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b0000000111111100) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end

		IR_immediate = 11'b00000000000;
		#100;
		if(SEOUT!= 16'b0000000000000000) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b0000000000000000) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		IR_immediate = 11'b11111111111;
		#100;
		if(SEOUT!= 16'b1111111111111111) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b1111111111111111) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		//testing with branch
		$display("Testing with branch");
		IR_immediate = 11'b00000001100;
		IR_msb = 1;
		IR_branch = 13'b1111111111100;

		#100;
		if(SEOUT != 16'b1111111111111100) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b1111111111111100) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		IR_branch = 13'b0000111111100;
		#100;
		if(SEOUT != 16'b0000000111111100) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b0000000111111100) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end

		IR_branch = 13'b0000000000000;
		#100;
		if(SEOUT != 16'b0000000000000000) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b0000000000000000) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		IR_branch = 13'b1111111111111;
		#100;
		if(SEOUT != 16'b1111111111111111) begin
			$display("FAIL SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end
		
		if(SEOUT == 16'b1111111111111111) begin
			$display("PASS SEOUT: %b, IR_immediate: %b, IR_branch = %b, IR_msb = %d", SEOUT, IR_immediate, IR_branch, IR_msb);
		end

		
		
	end
      
endmodule

