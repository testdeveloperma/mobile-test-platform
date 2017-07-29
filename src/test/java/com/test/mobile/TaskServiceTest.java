package com.test.mobile;

import static org.junit.Assert.*;

import org.junit.Test;

import com.test.mobile.website.bean.Task;
import com.test.mobile.website.service.TaskService;

public class TaskServiceTest {

	@Test
	public void test() {
		TaskService taskService = new TaskService();
		Task task = new Task(null, "mobiletest", "192.168.1.1", "m.elong.com", "/flight", "flight@elong.com", "1", 1001);
	
		taskService.addTask(task);
	}

}
