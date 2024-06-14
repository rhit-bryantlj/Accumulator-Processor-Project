// Verilog test fixture created from schematic C:\Users\hunte\Desktop\CSSE232\rhit-csse232-2021c-projects-2021c_violet\implementation\Subsystem2\FullSubsystem.sch - Mon May 17 22:01:26 2021

`timescale 1ns / 1ps

module FullSubsystem_FullSubsystem_sch_tb();

// Inputs
   reg [12:0] IR;
   reg [1:0] PCSource;
   reg [15:0] ALUbranchOutput;
   reg CLK;
   reg PCwrite;
   reg Reset;

// Output
   wire [15:0] NewPC;

// Bidirs

// Instantiate the UUT
   FullSubsystem UUT (
		.IR(IR), 
		.PCSource(PCSource), 
		.ALUbranchOutput(ALUbranchOutput), 
		.CLK(CLK), 
		.PCwrite(PCwrite), 
		.Reset(Reset), 
		.NewPC(NewPC)
   );

      initial begin
		// Initialize Inputs
		IR = 13'b0001111100000; //branch location from instruction
		PCSource = 0; //multiplexer 0 is ALU 1 is IR 2 is PC+2
		ALUbranchOutput = 16'b0111000000000000; //new pc from branch
		CLK = 0;
		PCwrite = 0;
		Reset = 1;
		#100;
		
		CLK = 1;
		#100;
		CLK = 0;
		#100;
		
		
		$display("Testing PC from ALU w/ write off");
		Reset = 0;
		CLK = 1;
		#100; //wait for clock to tick up
		
		if(NewPC == 0) begin
			$display("Pass NewPC: %d", NewPC);
		end
		else begin
			$display("Fail NewPC: %d", NewPC);
		end
		
		CLK = 0;
		#100; //wait for clock to tick down
		PCSource = PCSource + 1; 
		#100;	//change vars
				
				
				
		$display("Testing PC from IR w/ write off");
		CLK = 1;
		#100; //wait for clock to tick up
		
		if(NewPC == 0) begin
			$display("Pass NewPC: %d", NewPC);
		end
		else begin
			$display("Fail NewPC: %d", NewPC);
		end
		
		CLK = 0;
		#100; //wait for clock to tick down
		PCSource = PCSource + 1; 
		#100;	//change vars
			


			
		$display("Testing PC from PC+2 w/ write off");
		CLK = 1;
		#100; //wait for clock to tick up
		
		if(NewPC == 0) begin
			$display("Pass NewPC: %d", NewPC);
		end
		else begin
			$display("Fail NewPC: %d", NewPC);
		end
		
		CLK = 0;
		#100; //wait for clock to tick down
		PCSource = 0;
		PCwrite = 1;
		#100;	//change vars
		
		
		
		
		$display("Testing PC from ALU w/ write on");
		CLK = 1;
		#100; //wait for clock to tick up
		
		if(NewPC == 16'b0111000000000000) begin
			$display("Pass NewPC: %d", NewPC);
		end
		else begin
			$display("Fail NewPC: %d", NewPC);
		end
		
		CLK = 0;
		#100; //wait for clock to tick down
		PCSource = PCSource + 1; 
		#100;	//change vars
				
				
				
		$display("Testing PC from IR w/ write on");
		CLK = 1;
		#100; //wait for clock to tick up
		
		//IR =        13'b0001111100000
		if(NewPC == 16'b0100011111000000) begin
			$display("Pass NewPC: %d", NewPC);
		end
		else begin
			$display("Fail NewPC: %d, PCSource: %d", NewPC, PCSource);
		end
		
		CLK = 0;
		#100; //wait for clock to tick down
		PCSource = PCSource + 1; 
		#100;	//change vars
			


			
		$display("Testing PC from PC+2 w/ write on");
		CLK = 1;
		#100; //wait for clock to tick up
		
		if(NewPC == 16'b0100011111000010) begin
			$display("Pass NewPC: %d", NewPC);
		end
		else begin
			$display("Fail NewPC: %d", NewPC);
		end
		
		CLK = 0;
		#100; //wait for clock to tick down
		PCSource = 0;
		PCwrite = 1;
		#100;	//change vars
			
	end
endmodule
