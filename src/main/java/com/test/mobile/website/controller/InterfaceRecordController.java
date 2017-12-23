package com.test.mobile.website.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.test.mobile.website.bean.InterfaceRecord;
import com.test.mobile.website.bean.Msg;
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
		
		map.put("records", records);
		map.put("page", p);
		System.out.println(map);
		return "listrecord1";
	}
	
	@RequestMapping("getInterfaceRecords")
	public String getInterfaceRecords(Map<String,Object> map,@RequestParam(defaultValue="1",required=false,name="page") Integer page){
		System.out.println("收到请求");
		List<InterfaceRecord> records = interfaceRecordService.getRecord(page);
		PageInfo<InterfaceRecord> p = new PageInfo<InterfaceRecord>(records);
		
		map.put("records", records);
		map.put("page", p);
		System.out.println(map);
		return "listrecord2";
	}
	@RequestMapping("interfaceRecords")
	@ResponseBody
	public Msg getInterfaceRecord(@RequestParam(defaultValue="1",required=false,name="page") Integer page){
		System.out.println("收到请求");
		List<InterfaceRecord> records = interfaceRecordService.getRecord(page);
		PageInfo<InterfaceRecord> p = new PageInfo<InterfaceRecord>(records);
		
		return Msg.success().add("pageInfo", p);
	}
	/**
	 * 根据id 查询 mock 数据
	 * @return
	 */
	@RequestMapping(value="interfaceRecord/{id}",method=RequestMethod.GET)
	public String getInterfaceRecordById(Map<String,Object> map,@PathVariable("id") Integer id){
		
		InterfaceRecord record = interfaceRecordService.getInterfaceRecordById(id);
		map.put("record",record);
		return "editrecord";
	}
	
	@RequestMapping(value="interfaceRecord/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteById(@PathVariable("id") Integer id){
		interfaceRecordService.deleteById(id);
		return Msg.success();
	}
	
	
	/**
	 * 
	 * @param interfaceRecord
	 */
	
	@RequestMapping(value="interfaceRecord/{id}",method=RequestMethod.PUT)
	public void updateInterfaces(InterfaceRecord interfaceRecord){
		interfaceRecordService.updateInterfaces(interfaceRecord);
	}
}
