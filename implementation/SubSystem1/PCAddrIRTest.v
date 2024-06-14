// Verilog test fixture created from schematic C:\Users\masurhj\Desktop\csse232\rhit-csse232-2021c-projects-2021c_violet\implementation\SubSystem1\PCAddrIRSchm.sch - Wed May 12 10:17:59 2021

`timescale 1ns / 1ps

module PCAddrIRSchm_PCAddrIRSchm_sch_tb();

// Inputs
   reg CLK;
   reg enable;
   reg [15:0] Instruction;
   reg [15:0] CRDataIn;
   reg SetID;
   reg Write;
   reg CRWrite;
   reg [15:0] DataIn;

// Output
   wire [15:0] CoolData;
   wire [15:0] ReadDataA;
   wire [15:0] SEOUT;

// Bidirs

// Instantiate the UUT
   PCAddrIRSchm UUT (
		.CLK(CLK), 
		.enable(enable), 
		.Instruction(Instruction), 
		.CRDataIn(CRDataIn), 
		.SetID(SetID), 
		.Write(Write), //reg
		.CRWrite(CRWrite), 
		.CoolData(CoolData), 
		.ReadDataA(ReadDataA), 
		.DataIn(DataIn), 
		.SEOUT(SEOUT)
   );

	initial begin
	//initialize inputs
	CLK = 0;
	enable = 0;
	Instruction = 0;
	CRDataIn = 0;
	SetID = 0;
	Write = 0;
	CRWrite = 0;
	DataIn = 0;
	//seout, readata, cooldataa
	
	
	#100;
	end
endmodule
