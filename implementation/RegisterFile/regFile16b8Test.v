// Verilog test fixture created from schematic C:\Users\hunte\Desktop\CSSE232\rhit-csse232-2021c-projects-2021c_violet\implementation\RegisterFile\regFile16b8.sch - Fri May 07 03:55:26 2021

`timescale 1ns / 1ps

module regFile16b8_regFile16b8_sch_tb();

// Inputs
   reg CLK;
   reg [15:0] DataIn;
   reg Write;
   reg [3:0] WriteAddr;
   reg [3:0] ReadAddrB;
   reg [3:0] ReadAddrA;

// Output
   wire [15:0] ReadDataA;
   wire [15:0] ReadDataB;

// Bidirs

// Instantiate the UUT
   regFile16b8 UUT (
		.CLK(CLK), 
		.DataIn(DataIn), 
		.Write(Write), 
		.WriteAddr(WriteAddr), 
		.ReadDataA(ReadDataA), 
		.ReadAddrB(ReadAddrB), 
		.ReadDataB(ReadDataB), 
		.ReadAddrA(ReadAddrA)
   );
// Initialize Inputs
	
		initial begin
		// Initialize Inputs
		CLK = 0;
		DataIn = 1;
		Write = 1;
		WriteAddr = 0;
		ReadAddrA = 0;
		ReadAddrB = 1;

		// Wait 100 ns for global reset to finish
		#100;
	
		$display("Testing Writing on");
		repeat (9) begin
			CLK = 1;
			#100; //wait for clock to tick up
			
			if(ReadAddrA != DataIn || ReadAddrB != DataIn + 1) begin
				$display("FAIL ReadAddrA: %d, ReadAddrB: %d, WriteAddr: %d, Write: %d, DataIn: %d", ReadAddrA, ReadAddrB, WriteAddr, Write, DataIn);
			end
			
			if(ReadAddrA == DataIn && ReadAddrB == DataIn + 1) begin
				$display("PASS ReadAddrA: %d, ReadAddrB: %d, WriteAddr: %d, Write: %d, DataIn: %d", ReadAddrA, ReadAddrB, WriteAddr, Write, DataIn);
			end
			
			CLK = 0;
			#100; //wait for clock to tick down
			WriteAddr = WriteAddr + 1;
			DataIn = DataIn + 1;
			ReadAddrA = ReadAddrA + 1;
			ReadAddrB = ReadAddrB + 1;
			#100;
		end
		
		end
endmodule
