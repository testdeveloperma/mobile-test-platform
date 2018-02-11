package com.test.mobile.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Properties;


public class mAndroidUtil {

	
	
	/**
	 * 安卓截屏方法，图片保存到项目的根目录下
	 * 
	 * @param picturename
	 *            保存的图片名称
	 */
	public static void screencap(String picturename) {
		URL classUrl = Thread.currentThread().getContextClassLoader().getResource("");
		String agentPath = classUrl.getPath();
	//	agentPath.replaceAll("", replacement)
/*		String cmd = "sh " + agentPath + "screencap.sh " + picturename; // shell
*/		//WEB-INF/classes/
		agentPath = agentPath.replaceAll("^/", "");
		String replaceAll = agentPath.replaceAll("WEB-INF/classes/", "img");
		String cmd ="cmd /c " + agentPath + "screencap.bat " + picturename + " " + replaceAll ; // 批处理
		try {
			
			/*BufferedReader adbShellResult = getAdbShellResult("dir");
			String line = null;
			while ((line = adbShellResult.readLine()) != null) {
				System.out.println("line:" + line.toString());
				
			}
			adbShellResult.close();*/
			
			System.out.println(cmd);
			/*cmd ="cmd /c dir";*/
			BufferedReader adbShellResult = getAdbShellResult(cmd);
			String line = null;
			while ((line = adbShellResult.readLine()) != null) {
				System.out.println("line:" + line.toString());
				
			}
			adbShellResult.close();
			/*Process p = Runtime.getRuntime().exec(cmd);
			int exitcode = p.waitFor();
			System.out.println("exitcode:" + exitcode);*/
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public static void main(String[] args) {
		URL classUrl = Thread.currentThread().getContextClassLoader().getResource("");
		String agentPath = classUrl.getPath();
		System.out.println(agentPath);
		agentPath = agentPath.replaceAll("^/", "");
		System.out.println(agentPath);
		//WEB-INF/classes/
		String replaceAll = agentPath.replaceAll("target/classes", "img");
		System.out.println("replaceAll:" + replaceAll);
		BufferedReader adbShellResult = getAdbShellResult("cmd /c dir");
		String line = null;
		try {
			while ((line = adbShellResult.readLine()) != null) {
				System.out.println("line:" + line.toString());
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
		
	public static void closeApp() {
		executeAdbShell("adb shell am force-stop com.dp.android.elong");
		String cmd = "adb shell ps |grep \"com.dp.android.elong\"";
		for (int i = 0; i < 7; i++) {
			BufferedReader adbShellResult = mAndroidUtil.getAdbShellResult(cmd);
			try {
				String line = null;
				if ((line = adbShellResult.readLine()) != null) {
					mAndroidUtil.executeAdbShell("adb shell am force-stop com.dp.android.elong");
					System.out.println("关闭APP " + i);
					try {
						Thread.sleep(1000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else {
					break;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	/**
	 * 执行adb 命令
	 * 
	 * @param cmd
	 */
	public static void executeAdbShell(String cmd) {
		Properties properties = System.getProperties();
		String os = properties.getProperty("os.name");
		if (os.contains("Mac")) {
			cmd = "/Users/user/android-sdk-macosx/platform-tools/" + cmd;
		}
		System.out.println(cmd);
		Process p;
		try {
			p = Runtime.getRuntime().exec(cmd);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static BufferedReader getAdbShellResult(String cmd) {
		Properties properties = System.getProperties();
		String os = properties.getProperty("os.name");
		if (os.contains("Mac")) {
			cmd = "/Users/user/android-sdk-macosx/platform-tools/" + cmd;
		}
//		else if (os.contains("Windows")) {
//			if(cmd.contains("grep")) {
//				 cmd = cmd.replaceAll("grep", "findstr");
//			}
//		}
		System.out.println(cmd);
		BufferedReader br = null;
		try {
			Process process = Runtime.getRuntime().exec(cmd);
			process.waitFor();
			br = new BufferedReader(new InputStreamReader(process.getInputStream()));			
			process.waitFor();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return br;
	}
}
