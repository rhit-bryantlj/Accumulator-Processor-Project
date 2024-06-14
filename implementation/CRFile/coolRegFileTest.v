// Verilog test fixture created from schematic C:\Users\hunte\Desktop\CSSE232\rhit-csse232-2021c-projects-2021c_violet\implementation\CRFile\coolRegFile.sch - Sun May 02 04:15:29 2021

`timescale 1ns / 1ps

module coolRegFile_coolRegFile_sch_tb();

// Inputs
   reg CLK;
   reg [15:0] DataIn;
   reg CRW;
   reg [1:0] CrAddr;
   reg SetID;

// Output
   wire [15:0] CoolData;

// Bidirs

// Instantiate the UUT, like a Java constructor
   coolRegFile UUT (
		.CLK(CLK), 
		.DataIn(DataIn), 
		.CRW(CRW), 
		.CoolData(CoolData), 
		.CrAddr(CrAddr), 
		.SetID(SetID)
   );
	
	initial begin //starts block when project starts up
		//initialize variables that are inputs
		CLK = 0; //clock
		DataIn = 1; //data being stored in reg
		CRW = 0; //signals writing to reg
		CrAddr = 0; //the register being changed to
		SetID = 1; //signals changing regs
	
		#100; //wait for datapath to run. only use a line like this in tests
		
		//testing everything with no writing
		$display("Testing without writing");
			repeat (4) begin //testing each accumulator
				repeat (5) begin //tesitng 5 values for data
				CLK = 1;
				#100; //wait for clock to tick up
				
				if(CoolData != 0) begin
					$display("FAIL CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				if(CoolData == 0) begin
					$display("PASS CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				CLK = 0;
				#100; //wait for clock to tick down
				DataIn = DataIn + 1;
				#100;
			end
			CrAddr = CrAddr + 1;
			#100;
		end
		
		DataIn = 1;
		CrAddr = 0;
		CRW = 1;
		#100;
		//testing everything with writing
		$display("Testing with writing");
			repeat (4) begin //testing each accumulator
				repeat (5) begin //testing 5 values for data
				CLK = 1;
				#100; //wait for clock to tick up
				
				if(CoolData == DataIn) begin
					$display("PASS CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				if(CoolData != DataIn) begin
					$display("FAIL CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				CLK = 0;
				#100; //wait for clock to tick down
				DataIn = DataIn + 1;
				#100;
			end
			CrAddr = CrAddr + 1;
			#100;
		end
		
		//testing that it is changing accumulators
		$display("Testing that accumulators are changing");
		DataIn = 6;
		repeat(4) begin
				CLK = 1;
				#100; //wait for clock to tick up
				
				if(CoolData == DataIn) begin
					$display("PASS CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				if(CoolData != DataIn) begin
					$display("FAIL CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				CLK = 0;
				#100; //wait for clock to tick down
				DataIn = DataIn + 5;
				CrAddr = CrAddr + 1;
				#100;
	end
	
		//testing that it is not changing accumulators
		$display("Testing that accumulators are not changing");
		DataIn = 6;
		SetID = 0;
		CrAddr = 0;
		#100;
		repeat(4) begin
				CLK = 1;
				#100; //wait for clock to tick up
				
				if(CoolData == DataIn) begin
					$display("PASS CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				if(CoolData != DataIn) begin
					$display("FAIL CoolData: %d, CLK = %d, DataIn = %d, CRW = %d, CrAddr = %d, SetID = %d", CoolData, CLK, DataIn, CRW, CrAddr, SetID);
				end
				
				CLK = 0;
				#100; //wait for clock to tick down
				CrAddr = CrAddr + 1;
				#100;
	end

	//make sure simulation runs for enough time to finish all tests
	//if you fail to simulate because you left the window open. right click sim behavior model and rerun all
	end
endmodule
