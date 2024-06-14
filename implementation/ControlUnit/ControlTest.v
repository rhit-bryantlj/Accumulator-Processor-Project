`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:51 05/13/2021
// Design Name:   Control
// Module Name:   C:/Users/hunte/Desktop/CSSE232/rhit-csse232-2021c-projects-2021c_violet/implementation/ControlUnit/ControlTest.v
// Project Name:  ControlUnit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ControlTest;

	// Inputs
	reg [4:0] OPcode;
	reg CLK;
	reg Reset;
	reg z;

	// Outputs
	wire [1:0] PCSource;
	wire IorD;
	wire IRenable;
	wire SetID;
	wire CRWrite;
	wire RegWrite;
	wire [1:0] ALUOp;
	wire [1:0] Asel;
	wire [1:0] Bsel;
	wire MemWrite;
	wire MemRead;
	wire PCwrite;
	wire DatSel;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.OPcode(OPcode), 
		.CLK(CLK), 
		.Reset(Reset), 
		.z(z), 
		.PCSource(PCSource), 
		.IorD(IorD), 
		.IRenable(IRenable), 
		.SetID(SetID), 
		.CRWrite(CRWrite), 
		.RegWrite(RegWrite), 
		.ALUOp(ALUOp), 
		.Asel(Asel), 
		.Bsel(Bsel), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.PCwrite(PCwrite), 
		.DatSel(DatSel)
	);

	initial begin
		// Initialize Inputs
		OPcode = 5'b00000;
		CLK = 0;
		Reset = 1; //resets back to fetch
		z = 0; //determines the singl for a branch
		
		CLK = 1; //doing In
		#100;
		CLK = 0;
		#100;
		
		Reset = 0; //reset will do fetch, turn off reset in between fetch and decode
		
		CLK = 1; //doing first reset fetch
		#100;
		CLK = 0;
		#100;
		
		$display("Fetching Stage: testing mov");
		if(IorD == 0 && IRenable == 1 && MemRead == 1) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 1; //decode
		#100;
		
		$display("Decode Stage: testing mov");
		if(Asel == 0 && Bsel == 2 && ALUOp == 0) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1;
		#100;

		$display("Mov Stage: testing mov");
		if(SetID == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end

		CLK = 0;
		#100;
		OPcode = 5'b00001; // Set
		CLK = 1; // Fetch Stage
		#100;	
		CLK = 0;
		#100;
		CLK = 1; // Decode Stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // Set Stage
		#100;
		
		$display("Set Stage: testing Set");
		if(Asel == 3 && Bsel == 0 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Write to CR Stage
		#100;
		
		$display("Write to CR Stage: testing Set");
		if(DatSel == 1 && CRWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b00010;
		CLK = 1; // Fetch
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // Decode
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // SetC stage
		#100;
		
		$display("SetC stage: testing Setc");
		if(Asel == 3 && Bsel == 1 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Write to RegFile stage
		#100;
		
		$display("Write to RegFile stage: testing Setc");
		if(RegWrite == 1 && DatSel == 1 && PCSource == 2 && PCwrite ==1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b00011; // Sw
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // Decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // Mem stage
		#100;
		
		$display("Mem Stage: testing Sw");
		if(Asel == 3 && Bsel == 0 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Sw stage
		#100;
		
		$display("Sw Stage: testing Sw");
		if(IorD == 1 && MemWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b00100; // Lw
		CLK = 1; // fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // Mem stage
		#100;
		
		$display("Mem Stage: testing Lw");
		if(Asel == 3 && Bsel == 0 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Sw stage
		#100;
		
		$display("Lw Stage: testing Lw");
		if(IorD == 1 && MemRead == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Lw stage
		#100;
		
		$display("LW store Stage: testing Lw");
		if(CRWrite == 1 && DatSel == 0 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b00101; // SetPC
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // SetPC stage
		#100;
		
		$display("SetPCStage: testing SetPC");
		if(Asel == 0 && Bsel == 3 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // WriteToCR stage
		#100;
		
		$display("Write to CR: testing SetPC");
		if(DatSel == 1 && CRWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b10000; // Jump
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // Jump stage
		#100;
		
		$display("Jump: testing Jump");
		if(PCSource == 1 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b11000; // Beq with z = 0
		z = 0;
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // branch stage
		#100;
		
		$display("Branch: testing Beq with z = 0");
		if(Asel == 3 && Bsel == 1 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Beq stage
		#100;
		
		$display("Beq: testing Beq with z = 0");
		if(PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b11000; // Beq with z = 1
		z = 1;
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // branch stage
		#100;
		
		$display("Branch: testing Beq with z = 1");
		if(Asel == 3 && Bsel == 1 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Beq stage
		#100;
		
		$display("Beq: testing Beq with z = 1");
		if(Asel == 0 && Bsel == 2 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Branch taken stage
		#100;
		
		$display("Branch Taken: testing Beq with z = 1");
		if(PCSource == 0 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b11100; // Bne with z = 0
		z = 0;
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // branch stage
		#100;
		
		$display("Branch: testing Bne with z = 0");
		if(Asel == 3 && Bsel == 1 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Beq stage
		#100;
		
		$display("Bne: testing Bne with z = 0");
		if(Asel == 0 && Bsel == 2 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Branch taken stage
		#100;
		
		$display("Branch Taken: testing Beq with z = 1");
		if(PCSource == 0 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b11100; // Bne with z = 1
		z = 1;
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // branch stage
		#100;
		
		$display("Branch: testing Bne with z = 1");
		if(Asel == 3 && Bsel == 1 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // Beq stage
		#100;
		
		$display("Beq: testing Beq with z = 1");
		if(PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b01001; // Sub
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // CROp stage
		#100;
		
		$display("CROp: testing Sub");
		if(Asel == 2 && Bsel == 0 && ALUOp == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // WritetoCR stage
		#100;
		
		$display("WritetoCR: testing Sub");
		if(DatSel == 1 && CRWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b01010; // Add
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // CROp stage
		#100;
		
		$display("CROp: testing Add");
		if(Asel == 2 && Bsel == 0 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL Asel: %d, Bsel: %d, ALUOp: %d", Asel, Bsel, ALUOp);
		end
		
		CLK = 0;
		#100;
		CLK = 1; // WritetoCR stage
		#100;
		
		$display("WritetoCR: testing Add");
		if(DatSel == 1 && CRWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b01011; // Addi
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // CROp stage
		#100;
		
		$display("CROp: testing Addi");
		if(Asel == 2 && Bsel == 2 && ALUOp == 0) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // WritetoCR stage
		#100;
		
		$display("WritetoCR: testing Addi");
		if(DatSel == 1 && CRWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		OPcode = 5'b01111; // Sll
		CLK = 1; // Fetch stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // decode stage
		#100;
		
		CLK = 0;
		#100;
		CLK = 1; // CROp stage
		#100;
		
		$display("CROp: testing Sll");
		if(Asel == 2 && Bsel == 2 && ALUOp == 2) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		CLK = 0;
		#100;
		CLK = 1; // WritetoCR stage
		#100;
		
		$display("WritetoCR: testing Sll");
		if(DatSel == 1 && CRWrite == 1 && PCSource == 2 && PCwrite == 1) begin
			$display("Pass");
		end
		else begin
			$display("FAIL");
		end
		
		
		
		
		
		
	end
      
endmodule

