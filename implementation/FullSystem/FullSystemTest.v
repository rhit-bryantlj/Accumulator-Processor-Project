// Verilog test fixture created from schematic C:\Users\hunte\Desktop\CSSE232\rhit-csse232-2021c-projects-2021c_violet\implementation\FullSystem\FullSystemSchm.sch - Tue May 18 21:41:17 2021

`timescale 1ns / 1ps

module FullSystemSchm_FullSystemSchm_sch_tb();

// Inputs
   reg CLK;
   reg Reset;
   reg [15:0] Instruction;
   reg [15:0] MemDataOut;
	reg [15:0] Input;

// Output
   wire [15:0] IorDOutput;

// Bidirs

// Instantiate the UUT
   FullSystemSchm UUT (
		.CLK(CLK), 
		.Reset(Reset), 
		.Instruction(Instruction), 
		.MemDataOut(MemDataOut), 
		.IorDOutput(IorDOutput),
		.Input(Input)
   );
		initial begin
		// Initialize Inputs
		CLK = 0;
		Reset = 1;
		Instruction = 16'b0101100000001111; //addi 15
		MemDataOut = 16'b0101100000001111;
		Input = 9;
		#100;
		
		//START ADDI 15
		CLK = 1; //reset
		#100;
		CLK = 0;
		Reset = 0;
		#100;
		
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //CROp
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Write2CR
		#100;
		CLK = 0; //set instruction for next cycle
		Instruction = 16'b0001000000000111; //setc $t1
		MemDataOut = 16'b0001000000000111;
		#100;
		
		//START SETC $T1
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //SetC
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //WritetoRegFile
		#100;
		CLK = 0;
		Instruction = 16'b0101100000000101; //addi 5
		MemDataOut = 16'b0101100000000101;
		#100;
		
		//START ADDI 5
		CLK = 1; //reset
		#100;
		CLK = 0;
		Reset = 0;
		#100;
		
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //CROp
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Write2CR
		#100;
		CLK = 0; //set instruction for next cycle
		Instruction = 16'b0000000000000010; //mov 2
		MemDataOut = 16'b0000000000000010;
		#100;
		
		//START MOV 2	
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Mov
		#100;
		CLK = 0;
		Instruction = 16'b0000100000000111; //set $t1
		MemDataOut = 16'b0000100000000111;
		#100;
		
		//START SET $T1
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Set
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //WritetoCR
		#100;
		CLK = 0;
		Instruction = 16'b0101000000000111; //add $t1
		MemDataOut = 16'b0101000000000111;
		#100;
		
		//START ADD $T1
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //CROp
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //WritetoCR
		#100;
		CLK = 0;
		Instruction = 16'b0100100000000111; //sub $t1
		MemDataOut = 16'b0100100000000111;
		#100;
		
		//START SUB $T1
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //CROp
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //WritetoCR
		#100;
		CLK = 0;
		Instruction = 16'b0111100000000010; //sll 2
		MemDataOut = 16'b0111100000000010;
		#100;
		
		//START SLL 2
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //CROp
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //WritetoCR
		#100;
		CLK = 0;
		Instruction = 16'b0010100000000010; //SetPC 2
		MemDataOut = 16'b0010100000000010;
		#100;
		
		//START SetPC 2
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //SetPC
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //WritetoCR
		#100;
		CLK = 0;
		Instruction = 16'b1000000000100000; //Jump 32
		MemDataOut = 16'b1000000000100000;
		#100;
		
		//START Jump 32
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Jump
		#100;
		CLK = 0;
		Instruction = 16'b1100000001000000; //Beq 64
		MemDataOut = 16'b1100000001000000;
		#100;
		
		//START BEQ W/ !0
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Branch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Beq
		#100;
		CLK = 0;
		Instruction = 16'b1110000010000000; //bne 128
		Instruction = 16'b1110000010000000;
		#100;
		
		//START BNE W/ !0
		CLK = 1; //fetch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //decode
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Branch
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Bne
		#100;
		CLK = 0;
		#100;
		
		CLK = 1; //Branch taken
		#100;
		CLK = 0;
		Instruction = 16'b0000100000000000; //set $0
		Instruction = 16'b0000100000000000;
		#100;
		

	end
		
endmodule
