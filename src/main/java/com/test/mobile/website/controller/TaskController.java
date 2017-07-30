package com.test.mobile.website.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.GenericTableMetaDataProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.mobile.website.bean.Task;
import com.test.mobile.website.service.TaskService;

@Controller
public class TaskController {

	@Autowired
	TaskService taskService;
	
	@RequestMapping("addPage")
	public String addPage(){
		
		return "addTask";
	}
	
	@RequestMapping("addTask")
	public String addTask(Task task){
		System.out.println(task.getTaskName());
		task.setStatus("1");
		taskService.addTask(task);
		
		return "redirect:/listall";
	}
	
	@RequestMapping("listme")
	public String listMeTask(Integer userId){
		taskService.getTaskByUserId(userId);
		return "listme";
	}
	
	@RequestMapping("listall")
	public String listTask(Map<String,Object> map){
		List<Task> task = taskService.getAllTask();
		map.put("tasks", task);
		return "listall";
	}
	
}
