package com.test.mobile.website.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.test.mobile.website.bean.Task;
import com.test.mobile.website.dao.TaskMapper;

@Service
public class TaskService {
	
	@Autowired
	TaskMapper taskMapper;
	
	public void addTask(Task task){
		taskMapper.add(task);
	}

	public List<Task> getTaskByUserId(Integer userId) {
		
		return taskMapper.getTaskByUserId(userId);
		
	}
	
	public List<Task> getAllTask(Integer page){
		if(page != null){
			PageHelper.startPage(page, 1);
		}else{
			PageHelper.startPage(1, 1);
		}
		
		return taskMapper.getAll();
	}
}
