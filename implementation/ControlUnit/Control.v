`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:49 05/11/2021 
// Design Name: 
// Module Name:    Control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Control(
    input [4:0] OPcode,
	 input CLK,
	 input Reset,
	 input z,
    output reg[1:0] PCSource,
    output reg IorD,
    output reg IRenable,
    output reg SetID,
    output reg CRWrite,
    output reg RegWrite,
    output reg [1:0] ALUOp,
    output reg [1:0] Asel,
    output reg [1:0] Bsel,
    output reg MemWrite,
	 output reg MemRead,
	 output reg PCwrite,
	 output reg DatSel
    );

//state flipflops
reg [4:0] currentState;
reg [4:0] nextState;

//state definitions
parameter Fetch = 0;
parameter Decode = 1;
parameter Mov = 2;
parameter CRop = 3;
parameter Set = 4;
parameter SetC = 5;
parameter WriteCr = 6;
parameter WriteRegFile = 7;
parameter Mem = 8;
parameter Lw = 9;
parameter Sw = 10;
parameter LwWriteBack = 11;
parameter Branch = 12;
parameter Jump = 13;
parameter BEQ = 14;
parameter BNE = 15;
parameter BranchTaken = 16;
parameter SetPC = 17;
parameter ResetState = 18;
	
	always @(posedge CLK)
	begin
		if(Reset == 1) begin
			currentState = ResetState;
		end
		else begin
		currentState = nextState;
		end
	end
	
	// Determines what signals to send depending on current state
	always @(currentState)
	begin
		// set default signals that cant be dont cares
		CRWrite = 0;
		MemWrite = 0;
		MemRead = 0;
		RegWrite = 0;
		IRenable = 0;
		SetID = 0;
		PCwrite = 0;
		
		case(currentState)
		Fetch:
			begin
				IorD = 0;
				IRenable = 1;
				MemRead = 1;
			end
		Decode:
			begin
				Asel = 0;
				Bsel = 2;
				ALUOp = 0;
			end
		Mov:
			begin
				SetID=1;
				PCSource = 2;
				PCwrite = 1;
			end
		CRop:
			begin
				Asel = 2; // always select CR for CoolReg/accumulator ops
				case(OPcode) // determines what op happens to Cr
				5'b01001: // Sub
					begin
					Bsel = 0;
					ALUOp = 1;
					end
				5'b01010: // Add
					begin
						Bsel = 0;
						ALUOp = 0;
					end
				5'b01011: // Add immediate
					begin
						Bsel = 2;
						ALUOp = 0;
					end
				5'b01111: // shift left
					begin
						Bsel = 2;
						ALUOp = 2;
					end
				endcase
			end
		Set:
			begin
				Asel = 3;
				Bsel = 0;
				ALUOp = 0;
			end
		SetC:
			begin
				Asel = 3;
				Bsel = 1;
				ALUOp = 0;
			end
		WriteCr:
			begin
				DatSel = 1;
				CRWrite = 1;
				PCSource = 2;
				PCwrite = 1;
			end
		WriteRegFile:
			begin
				DatSel = 1;
				RegWrite = 1;
				PCSource = 2;
				PCwrite = 1;
			end
		Mem:
			begin
				Asel = 3;
				Bsel = 0;
				ALUOp = 0;
			end
		Lw:
			begin
				MemRead = 1;
				IorD = 1;
			end
		Sw:
			begin
				IorD = 1;
				MemWrite = 1;
				PCSource = 2;
				PCwrite = 1;
			end
		LwWriteBack:
			begin
				CRWrite = 1;
				DatSel = 0;
				PCSource = 2;
				PCwrite = 1;
			end
		Branch:
			begin
				Asel = 3;
				Bsel = 1;
				ALUOp = 0;
			end
		Jump:
			begin
				PCSource = 1;
				PCwrite = 1;
			end
		BNE:
			begin
				if(z != 1) begin
					Asel = 0;
					Bsel = 2;
					ALUOp = 0;
				end
				else begin
					PCSource = 2;
					PCwrite = 1;
				end
			end
		BEQ:
			begin
				if(z == 1) begin
					Asel = 0;
					Bsel = 2;
					ALUOp = 0;
				end
				else begin
					PCSource = 2;
					PCwrite = 1;
				end
			end
		BranchTaken:
			begin
				PCSource = 0;
				PCwrite = 1;
			end
		SetPC:
			begin
				Asel = 0;
				Bsel = 3;
				ALUOp = 0;
			end
		endcase
	end
	
	//Next state calculations
	always @(currentState)
	begin
		case(currentState)
		Fetch:
			begin
			nextState = Decode;
			end
		Decode:
			begin
				if(OPcode[4:2] == 3'b100)
				begin
					nextState = Jump;
				end
				else if(OPcode[4:2] == 3'b101)
				begin
					// jump and link
				end
				else if (OPcode[4:2] == 3'b110)
				begin
					nextState = Branch;
				end
				else if(OPcode[4:2] == 3'b111)
				begin
					nextState = Branch;
				end
				else
				begin
					case(OPcode)
					5'b00000:
						begin
							nextState = Mov;
						end
					5'b00001:
						begin
							nextState = Set;
						end
					5'b00010:
						begin
							nextState = SetC;
						end
					5'b00011:
						begin
							nextState = Mem;
						end
					5'b00100:
						begin
							nextState = Mem;
						end
					5'b00101:
						begin
							nextState = SetPC;
						end
					5'b01001:
						begin
							nextState = CRop; // sub
						end
					5'b01010:
						begin
							nextState = CRop; // add
						end
					5'b01011:
						begin
							nextState = CRop; // addi
						end
					5'b01111:
						begin
							nextState = CRop;
						end
					endcase
				end
			end
		Mov:
			begin
			nextState = Fetch;
			end
		CRop:
			begin
				nextState = WriteCr;
			end
		Set:
			begin
				nextState = WriteCr;
			end
		SetC:
			begin
				nextState = WriteRegFile;
			end
		WriteCr:
			begin
				nextState = Fetch;
			end
		WriteRegFile:
			begin
				nextState = Fetch;
			end
		Mem:
			begin
				if(OPcode == 5'b00011)
				begin
					nextState = Sw;
				end
				else begin
					nextState = Lw;
				end
			end
		Lw:
			begin
				nextState = LwWriteBack;
			end
		Sw:
			begin
				nextState = Fetch;
			end
		LwWriteBack:
			begin
				nextState = Fetch;
			end
		Branch:
			begin
				if(OPcode[4:2] == 3'b110)
				begin
					nextState = BEQ;
				end
				else begin
					nextState = BNE;
				end
			end
		Jump:
			begin
				nextState = Fetch;
			end
		SetPC:
			begin
				nextState = WriteCr;
			end
		BEQ:		
			begin
				if(z==1) begin
					nextState = BranchTaken;
				end
				else begin
					nextState = Fetch;
				end
			end
		BNE:
			begin
				if(z!=1) begin
					nextState = BranchTaken;
				end
				else begin
					nextState = Fetch;
				end
			end
		BranchTaken:
			begin
				nextState = Fetch;
			end
		ResetState:
			begin
				nextState = Fetch;
			end
		default: // to help the program not get lost
			begin
				nextState = Fetch;
			end
		endcase
	end

endmodule
