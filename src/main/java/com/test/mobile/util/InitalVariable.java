package com.test.mobile.util;

import java.net.URL;

public class InitalVariable{
	public InitalVariable(){
		mAndroidUtil.agentPath =  getAgentPath();
		mAndroidUtil.imgPath = getImgPath();
		mAndroidUtil.crashPath = getCrashPath();
	}
	
	public String getAgentPath(){
		URL classUrl = Thread.currentThread().getContextClassLoader().getResource("");

	    String agentPath = classUrl.getPath();

		agentPath = agentPath.replaceAll("^/", "");
		return agentPath;
	}
	
	public String getImgPath(){
		
		String imgPath = getAgentPath().replaceAll("WEB-INF/classes/", "img");
		return imgPath;
	}
	
	public String getCrashPath(){
		
		String imgPath = getAgentPath().replaceAll("WEB-INF/classes", "crashlog");
		return imgPath;
	}
}
