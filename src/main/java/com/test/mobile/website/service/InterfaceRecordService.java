package com.test.mobile.website.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.test.mobile.website.bean.InterfaceRecord;
import com.test.mobile.website.dao.InterfaceRecordMapper;

@Service
public class InterfaceRecordService {

	@Autowired
	InterfaceRecordMapper interfaceRecordMapper;
	
	public List<InterfaceRecord> getRecord(Integer page) {
		
		if(page != null){
			PageHelper.startPage(page, 10);
		}else{
			PageHelper.startPage(1, 10);
		}
		
		List<InterfaceRecord> records = interfaceRecordMapper.getRecord();
		
		return records;
		
	}

	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		interfaceRecordMapper.deleteById(id);
	}

}
