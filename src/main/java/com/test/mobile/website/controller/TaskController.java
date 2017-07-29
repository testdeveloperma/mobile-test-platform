package com.test.mobile.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.mobile.website.bean.Task;
import com.test.mobile.website.service.TaskService;

@Controller
public class TaskController {

	@Autowired
	TaskService taskService;
	
	
	@RequestMapping("addTask")
	public void addTask(Task task){
		taskService.addTask(task);
	}
}
