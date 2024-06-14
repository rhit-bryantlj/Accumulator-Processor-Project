`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:36:35 05/04/2021
// Design Name:   IRCodeForSchm
// Module Name:   C:/Users/hunte/Desktop/CSSE232/rhit-csse232-2021c-projects-2021c_violet/implementation/IR/IRVerilog/IRTest.v
// Project Name:  IRVerilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IRCodeForSchm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IRTest;

	// Inputs
	reg [15:0] Instruction;
	reg enable;
	reg CLK;

	// Outputs
	wire [15:0] OutputInst;
	wire [4:0] opCode;

	// Instantiate the Unit Under Test (UUT)
	IRCodeForSchm uut (
		.Instruction(Instruction), 
		.OutputInst(OutputInst), 
		.opCode(opCode), 
		.enable(enable),
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		Instruction = 16'b1011000000001111;
		enable = 1;
		CLK = 0;
	

		// Wait 100 ns for global reset to finish
		//test that it separates right
		#100;
		

		$display("Testing with enable on");
		CLK = 1;
		#100;
		
		if(opCode == 5'b10110) begin
			if(OutputInst == 16'b1011000000001111) begin
				$display("PASS OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
			else begin
				$display("FAIL OutputInst OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
		end
		else begin
			$display("FAIL Opcode OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
		end
		CLK = 0;
		#100;
		
		Instruction = 16'b0011100000111010;
		#100;
		
		CLK = 1;
		#100;
		if(opCode == 5'b00111) begin
			if(OutputInst == 16'b0011100000111010) begin
				$display("PASS OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
			else begin
				$display("FAIL OutputInst OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
		end
		else begin
			$display("FAIL Opcode OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
		end
		
		CLK = 0;
		#100;
		
		//enable off
		enable = 0;
		Instruction = 16'b1111111111111111;
		#100;
		
		CLK = 1;
		#100;
		$display("Testing with enable off");
		if(opCode == 5'b00111) begin //opcode should stay the same, as well as outputInst since the enable is off
			if(OutputInst == 16'b0011100000111010) begin
				$display("PASS OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
			else begin
				$display("FAIL OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
		end
		else begin
			$display("FAIL OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
		end
		CLK = 0;
		#100;

		Instruction = 16'b0000000000000000;
		#100;
		
		CLK = 1;
		#100;
		if(opCode == 5'b00111) begin
			if(OutputInst == 16'b0011100000111010) begin
				$display("PASS OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
			else begin
				$display("FAIL OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
			end
		end
		else begin
			$display("FAIL OutputInst: %b, opCode: %b, Instruction: %b, enable: %d", OutputInst, opCode, Instruction, enable);
		end
		CLK = 0;
		#100;
	

	end
      
endmodule

