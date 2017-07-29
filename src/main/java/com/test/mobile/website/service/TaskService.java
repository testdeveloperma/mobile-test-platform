package com.test.mobile.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.mobile.website.bean.Task;
import com.test.mobile.website.dao.TaskMapper;

@Service
public class TaskService {
	
	@Autowired
	TaskMapper taskMapper;
	
	public void addTask(Task task){
		taskMapper.add(task);
	}
}
