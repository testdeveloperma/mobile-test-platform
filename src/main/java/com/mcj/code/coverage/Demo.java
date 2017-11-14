package com.mcj.code.coverage;

import java.io.File;
import java.io.IOException;

import org.jacoco.core.tools.ExecDumpClient;
import org.jacoco.core.tools.ExecFileLoader;

public class Demo {

	public static void main(String[] args) {
		ExecDumpClient client = new ExecDumpClient();
		client.setDump(true);
		ExecFileLoader file;
		try {
			
			file = client.dump("127.0.0.1", 6666);
			file.save(new File("jacoco-client.exec"), true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
