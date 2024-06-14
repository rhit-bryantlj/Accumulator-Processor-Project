import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Stack;

public class AssemblerInJava {
	static HashMap<String, String> opMap;
	static HashMap<String, String> typeMap;
	static HashMap<String, String> labelMap;
	static String outputFilePath = "machineCode.txt";

	public static void main(String[] args) throws IOException {
		String path = "assemblecode.txt";
		File file = new File(path);
		File outputFile = new File(outputFilePath);
		Scanner scan = null;
		FileWriter writer = null;
		int current_addr = -2;
		// create scanner for loops
		try {
			scan = new Scanner(file);
		} catch (FileNotFoundException e) {
			System.out.println("File failed to construct");
			e.printStackTrace();
		}

		// create output file
		try {
			outputFile.createNewFile();
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		// create file writer
		try {
			writer = new FileWriter(outputFilePath);
		} catch (IOException e) {
			e.printStackTrace();
		}

		makeRefrences();
		
		while (scan.hasNextLine()) {
			String s = scan.nextLine();
			if (s.isEmpty()) {
				continue;
			}
			current_addr += 2;
			s = s.toLowerCase();
			String[] tokens = s.split("\\s+");
			for(String currentToken : tokens) {
				if(currentToken.contains(":")) {
					currentToken = currentToken.substring(0, currentToken.length() - 1);
					labelMap.put(currentToken, Integer.toString(current_addr / 2));
				}
			}
			
		}
		
		System.out.println(labelMap.keySet());
		System.out.println(labelMap.values());
		
		scan.close();
		// create scanner for everything else
		try {
			scan = new Scanner(file);
		} catch (FileNotFoundException e) {
			System.out.println("File failed to construct");
			e.printStackTrace();
		}
		
		current_addr = -2;
		while (scan.hasNextLine()) {
			String s = scan.nextLine();
			if (s.isEmpty()) {
				continue;
			}
			current_addr += 2;
			s = s.toLowerCase();
			String[] tokens = s.split("\\s+");
			String binary = "";
			String type = "";
			for (String currentToken : tokens) {
				if (opMap.containsKey(currentToken)) { //if an op code
					binary += opMap.get(currentToken); //add opcode to binary string
					type = typeMap.get(currentToken); //determine instruction type
				} else if (currentToken.contains(":")) { //if a new label
					continue;
				} else if (labelMap.containsKey(currentToken)) { //if label
					binary += convertDecToBinary(labelMap.get(currentToken), type);
					
				} else if ((currentToken.length() > 1) && (currentToken.substring(0, 2).compareTo("0x") == 0)) { //if hex
					// convert hex currentToken to binary
					currentToken = currentToken.substring(2, currentToken.length());
					binary += convertHexToBinary(currentToken, type);
				} else { //if dec
					// convert dec currentToken to binary
					binary += convertDecToBinary(currentToken, type);
				}
			}
			//System.out.println(binary);
			int decBin = Integer.parseInt(binary, 2);
			String toWrite = Integer.toString(decBin,16);
			while(toWrite.length() < 4) {
				toWrite = "0" + toWrite;
			}
			System.out.println("instruction:" + tokens[0] + " line: " + current_addr + "binary: " + binary);
			//System.out.println(toWrite);
			writer.write(binary + "\n0000000000000000\n");
		}
		scan.close();
		writer.close();

	}

	private static String convertDecToBinary(String currentToken, String type) {
		int decVal = Integer.parseInt(currentToken);
		if(type == "I") {
			return signExtend(decVal, type);
		} else {
			return zeroExtend(Integer.toString(decVal, 2), type);
		}
	}

	private static String convertHexToBinary(String currentToken, String type) {
		int decVal = Integer.parseInt(currentToken, 16);
		if(type == "I") {
			return signExtend(decVal, type);
		} else {
			return zeroExtend(Integer.toString(decVal, 2), type);
		}
	}

	private static String zeroExtend(String currentToken, String type) {
		String toReturn = currentToken;
		int numSize = 0;
		if (type == "R") {
			numSize = 11;
		}
		if (type == "J") {
			numSize = 13;
		}

		while (toReturn.length() < numSize) {
			toReturn = "0" + toReturn;
		}
		return toReturn;
	}
	
	private static String signExtend(int currentToken, String type) {
		String toReturn = Integer.toBinaryString(currentToken);
		int numSize = 11;
		
		//handles negative
		if(currentToken < 0) {
			int start = 32 - numSize;
			toReturn = toReturn.substring(start);
			return toReturn;
		}
		
		//handle positive
		char toAdd = '0';
		while (toReturn.length() < numSize) {
			toReturn = toAdd + toReturn;
		}
		
		return toReturn;
	}

	public static void makeRefrences() {
		opMap = new HashMap<String, String>();

		// load instruction op codes
		opMap.put("mov", "00000");
		opMap.put("set", "00001");
		opMap.put("setc", "00010");
		opMap.put("sw", "00011");
		opMap.put("lw", "00100");
		opMap.put("setpc", "00101");
		opMap.put("getin", "0011000000000000");
		opMap.put("j", "100");
		opMap.put("beq", "110");
		opMap.put("bne", "111");
		opMap.put("sub", "01001");
		opMap.put("add", "01010");
		opMap.put("addi", "01011");
		opMap.put("sll", "01111");
		opMap.put("slt", "01110");
		
		// load register numbers
		opMap.put("$0", "00000000000");
		opMap.put("$pc", "00000000001");
		opMap.put("$sp", "00000000010");
		opMap.put("$ra", "00000000011");
		opMap.put("$cr1", "00000000000");
		opMap.put("$cr2", "00000000001");
		opMap.put("$cr3", "00000000010");
		opMap.put("$t1", "00000000100");
		opMap.put("$t2", "00000000101");
		opMap.put("$a1", "00000000110");
		opMap.put("$a2", "00000000111");
		opMap.put("$v1", "00000001000");
		opMap.put("$v2", "00000001001");
		
		//load instruction types
		typeMap = new HashMap<String, String>();
		typeMap.put("mov", "R");
		typeMap.put("set", "R");
		typeMap.put("setc", "R");
		typeMap.put("sw", "R");
		typeMap.put("lw", "R");
		typeMap.put("setpc", "I");
		typeMap.put("getin", "R");
		typeMap.put("j", "J");
		typeMap.put("beq", "J");
		typeMap.put("bne", "J");
		typeMap.put("sub", "R");
		typeMap.put("add", "R");
		typeMap.put("addi", "I");
		typeMap.put("sll", "R");
		typeMap.put("slt", "R");
		
		//set up label map
		labelMap = new HashMap<String, String>();

	}

}
