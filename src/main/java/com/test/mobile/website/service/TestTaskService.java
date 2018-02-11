package com.test.mobile.website.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.test.mobile.util.DateFormatUtil;
import com.test.mobile.util.mAndroidUtil;
import com.test.mobile.website.bean.StateEnum;
import com.test.mobile.website.bean.StrongResult;
import com.test.mobile.website.bean.TestTask;
import com.test.mobile.website.bean.TestTaskDetail;
import com.test.mobile.website.dao.TestTaskMapper;

@Service
public class TestTaskService {

	
	@Autowired
	TestTaskMapper testTaskMapper;
	
	@Autowired
	StrongTestResultService strongTestResultService;
	
	public void openAppByScheme(TestTaskDetail taskDetail){
		String adbCmd = "adb shell am start -a android.intent.action.VIEW -d " + taskDetail.getScheme().getSchemeUrl();

		for(int i=0;i < taskDetail.getTimes();i++){
			mAndroidUtil.executeAdbShell(adbCmd);
			try {
				Thread.sleep(10000);
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
			strongTestResultService.addResult(sr);
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
