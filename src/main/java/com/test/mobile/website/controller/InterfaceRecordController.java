package com.test.mobile.website.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.test.mobile.website.bean.InterfaceRecord;
import com.test.mobile.website.service.InterfaceRecordService;

@Controller
public class InterfaceRecordController {

	@Autowired
	InterfaceRecordService interfaceRecordService;
	
	@RequestMapping("getInterfaceRecord")
	public String getInterfaceRecord(Map<String,Object> map,@RequestParam(defaultValue="1",required=false,name="page") Integer page){
		System.out.println("收到请求");
		List<InterfaceRecord> records = interfaceRecordService.getRecord(page);
		PageInfo<InterfaceRecord> p = new PageInfo<InterfaceRecord>(records);
		System.out.println(p);
		map.put("records", records);
		map.put("page", p);
		
		return "listrecord1";
	}
}
