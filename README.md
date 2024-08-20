# Verilog-19-Bit-CPU

In the designed CPU, User Registers C,D,E and F are designed to be user accessible with the help of Insructions given by user that are stored in the memory locations.
Timelapse for the coding and design process - https://youtu.be/x6ywrpuxJe8

The attached files with their respecive description - 
CPU-Architecture.jpg - Shows all the major components of the system along with the control and data lines between them.
ISA_1.jpg and ISA_2.jpg - Shows a comprehensive list of all micro-operations performed by each of the provided instruction. On the ISA_2.jpg file, there is also a table given which show how all the Assembly Level instrucitons provided by the user are to be translated into machine level binary.
InstructionGenerator.xlsx - Used to generate machine level code for the desired Instruction.
Modules.png - Screenshot showing insances of all the modules created in the main CPU Module

OutputWaveForm.png - Screenshot of the output waveform.
To generate a simulation wave form with all major signals visible, a new text fixture was created labelled as CPU_TEST.v
Inside this test fixture all the components and connections of the CPU have been initialized and the following program has been stored in the memory.

Location	Instruction 	Binary
00			LD C, 004		0110000000000000100
01			LD D, 005		0110100000000000101
02			ADD F,C,D		1110000000001110001
03			JMP 000			0010000000000000000
04							    0000000000000000010  (Decimal 2)
05							    0000000000000000110  (Decimal 6)

The Output waveform shows how the values get loaded into the UserRegC and UserRegD and are then added and stored into UserRegF. (Signal 1 , Signal 3 and Signal 7)
