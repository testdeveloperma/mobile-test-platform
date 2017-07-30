package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.Task;

public interface TaskMapper {

	
	
	public int add(Task task);
	
	public List<Task> getTaskByUserId(Integer userId);
	
	public List<Task> getAll();
}
