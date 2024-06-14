`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:33:27 05/12/2021
// Design Name:   ALUCodeScm
// Module Name:   C:/Users/masurhj/Desktop/csse232/rhit-csse232-2021c-projects-2021c_violet/implementation/ALU/ALUTest.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUCodeScm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUTest;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [1:0] s;

	// Outputs
	wire [15:0] o;

	// Instantiate the Unit Under Test (UUT)
	ALUCodeScm uut (
		.o(o), 
		.a(a), 
		.b(b), 
		.s(s)
	);
initial begin
		// Initialize Inputs
		a = 2;
		b = 1;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		$display("Testing ADD");
		repeat (5) begin
			if(o != a + b) begin
				$display("FAIL o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			
			if(o == a + b) begin
				$display("PASS o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			a = a + 1;
			#100;
		end
		
		s = 1;
		#100;
		$display("Testing SUB");
		repeat (5) begin
			if(o != a - b) begin
				$display("FAIL o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			
			if(o == a - b) begin
				$display("PASS o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			a = a + 1;
			#100;
		end
		
		s = 2;
		b = 2;
		#100;
		$display("Testing SLL");
		repeat (5) begin
			if(o != a << b) begin
				$display("FAIL o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			
			if(o == a << b) begin
				$display("PASS o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			a = a + 1;
			#100;
		end
		
		s = 3;
		b = 1;
		a = 2;
		#100;
		$display("Testing SLT");
			if(o != 1) begin
				$display("FAIL o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			
			if(o == 1) begin
				$display("PASS o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			b = b + 1;
			#100;
			
			if(o != 0) begin
				$display("FAIL o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			
			if(o == 0) begin
				$display("PASS o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			b = b + 1;
			#100;
			
			if(o != 16'b1111111111111111) begin
				$display("FAIL o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			
			if(o == 16'b1111111111111111) begin
				$display("PASS o: %d, a: %d, b: %d, s: %d", o, a, b, s);
			end
			b = b + 1;
			#100;
		

	end
      
endmodule

