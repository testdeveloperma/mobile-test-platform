package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.StateEnum;
import com.test.mobile.website.bean.TestTask;
import com.test.mobile.website.bean.TestTaskDetail;

public interface TestTaskMapper {

	public List<TestTaskDetail>  getAll();
	
	public Integer add(TestTask task);

	public TestTaskDetail getTestTaskById(Integer id);
	
	public List<TestTaskDetail> getTestTaskByState(StateEnum state);
	
	public Integer updateState(TestTask task);
	
}
