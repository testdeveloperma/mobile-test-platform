package com.test.mobile.website.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.swing.plaf.metal.OceanTheme;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.test.mobile.redis.SingleValueRedis;
import com.test.mobile.util.DateFormatUtil;
import com.test.mobile.util.mAndroidUtil;
import com.test.mobile.website.bean.StateEnum;
import com.test.mobile.website.bean.StrongResult;
import com.test.mobile.website.bean.TestTask;
import com.test.mobile.website.bean.TestTaskDetail;
import com.test.mobile.website.dao.TestTaskMapper;

@Service
public class TestTaskService {

	
	SingleValueRedis singleValueRedis = SingleValueRedis.getInstance();
	
	@Autowired
	TestTaskMapper testTaskMapper;
	
	@Autowired
	StrongTestResultService strongTestResultService;
	
	
	
	public void openAppByScheme(TestTaskDetail taskDetail){
		String adbCmd = "adb shell am start -a android.intent.action.VIEW -d " + taskDetail.getScheme().getSchemeUrl();
		String logcatclear = "adb logcat -c";
		for(int i=0;i < taskDetail.getTimes();i++){
			Integer resultId = strongTestResultService.getMaxId();
			if(resultId == null)
				resultId = 1;
			else
				resultId = resultId + 1;
			
			singleValueRedis.addResultId(resultId);			
/*			SingleValueRedis.getInstance().deleteCrashInfo();
*/			
			mAndroidUtil.executeAdbShell(logcatclear);
			mAndroidUtil.executeAdbShell(adbCmd);
			try {
				Thread.sleep(8000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			Date date = new Date();
			
			String pictureName = DateFormatUtil.formatToSeconds(date);
			mAndroidUtil.screencap(pictureName);	
			mAndroidUtil.closeApp();
			StrongResult sr = new StrongResult();
			sr.setTaskId(taskDetail.getId());
			sr.setPicturePath("/img/" + pictureName + ".png");
			String filename = mAndroidUtil.crashPath + resultId + ".log";
			String logcatCmd = "cmd /c adb logcat -d -v raw AndroidRuntime:E *:S >> " + filename;
			mAndroidUtil.executeAdbShell(logcatCmd);
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			String crashlog = readToString(filename);
			
			if(!crashlog.equals("")  &&crashlog != null){
				sr.setCrashDetail(crashlog);
				sr.setCrashPath("/crashlog/" + resultId + ".log");
			}
			/*String crashInfo = singleValueRedis.getCrashInfo();
			if(crashInfo != null)
				sr.setCrashDetail(crashInfo);*/
			strongTestResultService.addResult(sr);
		}
		
	
	}
	
	
	
	public String playbackCrash(String schemeUrl,Integer presultId){
		String adbCmd = "adb shell am start -a android.intent.action.VIEW -d " + schemeUrl;
		String logcatclear = "adb logcat -c";
		String deviceName = mAndroidUtil.autoGetDeviceName();
		if(deviceName == null)
			return "fail";
		
		mAndroidUtil.closeApp();
		
		singleValueRedis.addPlaybackSwitch(true);
		singleValueRedis.addResultIdToPlayback(presultId);
		
		mAndroidUtil.executeAdbShell(logcatclear);
		
		mAndroidUtil.executeAdbShell(adbCmd);
		
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		singleValueRedis.addPlaybackSwitch(false);	
		return "success";
	}
	
	
	public void playbackCrash(Integer presultId){
				
		singleValueRedis.addPlaybackSwitch(true);
		singleValueRedis.addResultIdToPlayback(presultId);		
	}
	
	public void stopPlayback() {
		// TODO Auto-generated method stub
		singleValueRedis.addPlaybackSwitch(false);

	}
	

	
	public String readToString(String fileName) {  
        String encoding = "UTF-8";  
        File file = new File(fileName);  
        Long filelength = file.length();  
        byte[] filecontent = new byte[filelength.intValue()];  
        try {  
            FileInputStream in = new FileInputStream(file);  
            in.read(filecontent);  
            in.close();  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        try {  
            return new String(filecontent, encoding);  
        } catch (UnsupportedEncodingException e) {  
            System.err.println("The OS does not support " + encoding);  
            e.printStackTrace();  
            return null;  
        }  
    }  
	
	
	public List<TestTaskDetail> getAll(Integer page) {
		
		if(page > 0)
			PageHelper.startPage(page, 10);
			
		
		return testTaskMapper.getAll();		
		
	}
	
	
	public TestTaskDetail getTestTaskById(Integer id){
		
		return testTaskMapper.getTestTaskById(id);
	}
	
	public Integer add(TestTask task){
		
		
		
		return testTaskMapper.add(task);
	}
	
	/**
	 * 根据任务状态获取 任务列表
	 * @param state
	 * @return
	 */
	public List<TestTaskDetail> getTestTaskByState(StateEnum state){
		
		return testTaskMapper.getTestTaskByState(state);
	} 
	
	/**
	 * 更改任务状态
	 * @param task
	 * @return
	 */
	public Integer updateState(TestTask task){
		
		return testTaskMapper.updateState(task);
	}



	
}
