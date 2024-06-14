// Verilog test fixture created from schematic C:\Users\hunte\Desktop\CSSE232\rhit-csse232-2021c-projects-2021c_violet\implementation\RegisterFileV2\RegisterFileV2.sch - Sun May 09 15:42:35 2021

`timescale 1ns / 1ps

module RegisterFileV2_RegisterFileV2_sch_tb();

// Inputs
   reg Write;
   reg [3:0] WriteAddr;
   reg CLK;
   reg [15:0] DataIn;
   reg [3:0] ReadAddrA;
   reg [3:0] ReadAddrB;

// Output
   wire [15:0] ReadDataB;
   wire [15:0] ReadDataA;

// Bidirs

// Instantiate the UUT
   RegisterFileV2 UUT (
		.Write(Write), 
		.WriteAddr(WriteAddr), 
		.CLK(CLK), 
		.DataIn(DataIn), 
		.ReadAddrA(ReadAddrA), 
		.ReadDataB(ReadDataB), 
		.ReadAddrB(ReadAddrB), 
		.ReadDataA(ReadDataA)
   );

initial begin
		// Initialize Inputs
		CLK = 0;
		DataIn = 1;
		Write = 1;
		WriteAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
	
		$display("Testing Writing on");
		//fill regs
		repeat (10) begin
			CLK = 1;
			#100; //wait for clock to tick up
			
			CLK = 0;
			#100; //wait for clock to tick down
			WriteAddr = WriteAddr + 1;
			DataIn = DataIn + 1;
			#100;
		end
		
		ReadAddrA = 0;
		ReadAddrB = 1;
		DataIn = 1;
		#100;
		//read regs
		repeat(9) begin
			CLK = 1;
			#100;
			
			if(ReadDataA != DataIn || ReadDataB != DataIn + 1) begin
				$display("FAIL ReadDataA: %d, ReadDataB: %d, ReadAddrA: %d, ReadAddrB: %d, WriteAddr: %d, Write: %d, DataIn: %d", ReadDataA, ReadDataB, ReadAddrA, ReadAddrB, 					WriteAddr, Write, DataIn);
			end
			
			if(ReadDataA == DataIn && ReadDataB == DataIn + 1) begin
				$display("PASS ReadDataA: %d, ReadDataB: %d, ReadAddrA: %d, ReadAddrB: %d, WriteAddr: %d, Write: %d, DataIn: %d", ReadDataA, ReadDataB, ReadAddrA, ReadAddrB, 					WriteAddr, Write, DataIn);
			end
			
			CLK = 0;
			#100;
			ReadAddrA = ReadAddrA + 1;
			ReadAddrB = ReadAddrB + 1;
			DataIn = DataIn + 1;
			#100;
		end
		
		$display("Testing Writing off");
		//attempt to empty regs
		Write = 0;
		WriteAddr = 0;
		DataIn = 0;
		#100;
		repeat (10) begin
			CLK = 1;
			#100; //wait for clock to tick up
			
			CLK = 0;
			#100; //wait for clock to tick down
			WriteAddr = WriteAddr + 1;
			#100;
		end
		
		ReadAddrA = 0;
		ReadAddrB = 1;
		DataIn = 1;
		#100;
		//read regs
		repeat(9) begin
			CLK = 1;
			#100;
			
			if(ReadDataA != DataIn || ReadDataB != DataIn + 1) begin
				$display("FAIL ReadDataA: %d, ReadDataB: %d, ReadAddrA: %d, ReadAddrB: %d, WriteAddr: %d, Write: %d, DataIn: %d", ReadDataA, ReadDataB, ReadAddrA, ReadAddrB, 					WriteAddr, Write, DataIn);
			end
			
			if(ReadDataA == DataIn && ReadDataB == DataIn + 1) begin
				$display("PASS ReadDataA: %d, ReadDataB: %d, ReadAddrA: %d, ReadAddrB: %d, WriteAddr: %d, Write: %d, DataIn: %d", ReadDataA, ReadDataB, ReadAddrA, ReadAddrB, 					WriteAddr, Write, DataIn);
			end
			
			CLK = 0;
			#100;
			ReadAddrA = ReadAddrA + 1;
			ReadAddrB = ReadAddrB + 1;
			DataIn = DataIn + 1;
			#100;
		end
	end
endmodule
