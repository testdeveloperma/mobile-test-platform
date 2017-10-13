package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.InterfaceRecord;

public interface InterfaceRecordMapper {

	public List<InterfaceRecord>  getRecord();

	public void deleteById(Integer id);

	public void updateInterfaceRecord(InterfaceRecord interfaceRecord);

	public InterfaceRecord getInterfaceRecordById(Integer id);
	
}
