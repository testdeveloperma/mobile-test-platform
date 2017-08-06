package com.test.mobile.website.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.GenericTableMetaDataProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
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
	
	@RequestMapping(value="listall")
	public String listTask(Map<String,Object> map,@RequestParam(defaultValue="1",required=false,name="page") Integer page){
		List<Task> task = taskService.getAllTask(page);
		PageInfo<Task> p = new PageInfo<Task>(task);
		System.out.println(p);
		map.put("tasks", task);
		map.put("page", p);
		return "listall";
	}
	
}
