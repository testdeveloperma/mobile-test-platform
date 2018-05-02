package com.test.mobile.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.mobile.redis.WeightConfigRedis;
import com.test.mobile.website.bean.LockMark;
import com.test.mobile.website.bean.Msg;
import com.test.mobile.website.bean.StateEnum;
import com.test.mobile.website.bean.TestTask;
import com.test.mobile.website.bean.TestTaskDetail;
import com.test.mobile.website.bean.WorkerName;
import com.test.mobile.website.service.LockMarkService;
import com.test.mobile.website.service.StrongTestResultService;
import com.test.mobile.website.service.TestTaskService;

@Component
public class Worker {

	
	@Autowired
	TestTaskService testTaskService;
	
	@Autowired
	LockMarkService lockMarkService;
	
	@Autowired
	StrongTestResultService strongTestResultService;
	
	/*@ResponseBody
	@RequestMapping("/strongtest")*/
	@Scheduled(cron="0/60 * * * * *")
	public void executeStrongTest(){
	
		LockMark strongLockMark = lockMarkService.getLockMarkByName(WorkerName.strongtest);
		
		if(strongLockMark.getExecuteState() == 1)
			return;
		strongLockMark.setExecuteState(1);
		
		lockMarkService.updateState(strongLockMark);
		try {
			List<TestTaskDetail> waitingTasks = testTaskService.getTestTaskByState(StateEnum.waiting);
			for (TestTaskDetail testTaskDetail : waitingTasks) {
				TestTask testTask = new TestTask();
				testTask.setId(testTaskDetail.getId());
				testTask.setState(StateEnum.running);

				testTaskService.updateState(testTask);
				try {
					String weightconfig = testTaskDetail.getWeightConfig().getJsonStr();
					WeightConfigRedis.getInstance().addWeightConfig(weightconfig);
					testTaskService.openAppByScheme(testTaskDetail);
					testTask.setState(StateEnum.end);
					testTaskService.updateState(testTask);
					
					
				} catch (Exception e) {
					// TODO: handle exception
					testTask.setState(StateEnum.end);
					testTaskService.updateState(testTask);
					e.printStackTrace();
				}
			} 
		} finally {
			strongLockMark.setExecuteState(0);
			lockMarkService.updateState(strongLockMark);
		}		
	}
	
	
}
