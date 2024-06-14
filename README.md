#16-Bit Multi-Accumulator Processor - 

Verilog implemented 16-bit CPU Accumulator Architecture designed with a team of 4. The project consisted of developing our own ISA, Datapath design, Control Flow, State Diagram, and Verilog simulation tests.

## Design Choices

Our Team decided to use an accumulator processor because that allowed for an easier to use instruction set that only requires an opcode and an address or value. 

##ISA

We developed an ISA using a 5 bit opcode and 13 machine instructions. Only 4 bits are necessary for 13 machine instructions (2^4 = 16), however we implemented our instruction set
to immediately know on instruction decoding whether the instruction was a jump or an operation. If the first bit is a 1, the instruction is a jump and the opcode length is determined
as 3 bits. If it is a 0, then the first 5 bits will be interpreted as the opcode for the Control Unit. This change allows us to extend our jump and branch instruction's distance in memory from
the current address. 

## Multi-Accumulator Register File

Our main feature of our processor was our Multi-Accumulator style architecture. Instead of a single register that all processes flow through, we had 3 Accumulator Registers located in the
Cool Register File. These processors would be implicitly accessed by the programmer for all operation commands. We implemented our special instruction 'Mov' that allows the programmer to
switch between the accumulator registers and begin processing instructions through that register. 

We saw our inspiration in this for context switching. When using an accumulator, every cycle that is computed, the value int the accumulator changes. If you want to save a value to jump to another
function, to save this value you would need to save it to memory. Since memory storage and loading is one of the slowest components in a processor, we decided to avoid this by switching between accumulators.
When switching accumulators, this makes the value that was previously calculated preserved across a call.
